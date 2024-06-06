# EuroSAT Landcover Classification using CLIP

CLIP (Contrastive Language–Image Pretraining) is a neural network model developed by OpenAI that can understand and generate text from images and vice versa. It stands for "Contrastive Language-Image Pretraining."

According to the <a href = "https://arxiv.org/abs/2103.00020">paper</a>, *CLIP builds on a large body of work on zero-shot transfer, natural language supervision, and multimodal learning*

CLIP uses an abundantly available source of supervision: the text paired with images found across the internet. Given an image, the task of CLIP is to predict which out of a set of 32,768 randomly sampled text snippets, was actually paired with it in the dataset.

## ViT-B/32
In this project, we fine-tune the CLIP with a ViT-B/32 transformer. ViT-B/32 is a specific variant of the Vision Transformer model, which is an architecture for computer vision tasks that leverages the transformer model, originally designed for natural language processing. Here are some details about ViT-B/32:

1. Architecture:
    - Transformer Backbone: ViT uses a transformer architecture, which relies on self-attention mechanisms to process input data.
    - Patch Embeddings: The input is divided into fixed-size patches, which are then linearly embedded into a sequence of vectors.
    - Position Embdeddings: Since the transformer model does not inherently understand the order of the patches, position embeddings are added to the patch embdeddings to retain spatial information.
2. Model Information:
    - B: The "B" in ViT-B/32 stands for "Base" size, which indicates the model's scale. ViT models come in various sizes, with Base being a moderate size compared to larger variants (like large or huge).
    - 32: This number denotes the size of the patches into which the input image is divided. For ViT-B/32, the image is split into 32x32 pixel patches.

## <a href = "https://github.com/MuhammedM294/EuroSat/tree/main/dataset_rgb">Dataset</a>

The training dataset contains 22,011 images divided into 10 categories. These categories are:
- annual crop land
- brushland or shrubland
- forest
- highway or road
- industrial buildings or commercial buildings
- lake or sea
- pasture land
- permanent crop land
- residential buildings or homes or apartments
- river

The test dataset consists of 5000 images divided into the same 10 categories.

## Data Preparation (as suggested by OpenAI)

As mentioned in the paper, when the name of a class is the only information provided to CLIP's text encoder, it is unable to differentiate due to lack of context. Hence, a good default template would be "a satellite photo of a {label}".

After changing our ground truth text descriptions according to this template (which is provided by OpenAI for different datasets <a href="https://github.com/openai/CLIP/blob/main/data/prompts.md">here</a>), our outputs should look like this:
```python
classes = [
    'a centered satellite photo of forest',
    'a centered satellite photo of permanent crop land',
    'a centered satellite photo of residential buildings or homes or apartments',
    'a centered satellite photo of river',
    'a centered satellite photo of pasture land',
    'a centered satellite photo of lake or sea',
    'a centered satellite photo of brushland or shrubland',
    'a centered satellite photo of annual crop land',
    'a centered satellite photo of industrial buildings or commercial buildings',
    'a centered satellite photo of highway or road',
]
```
Note that 'a centered satellite photo of {label}' is one of many template prompts provided by OpenAI.


## Installing Dependencies
```python
!pip install transformers
!pip install pytorch==1.7.1 torchvision
!pip install ftfy regex tqdm
!pip install git+https://github.com/openai/CLIP.git
```

## Pre-Trained Model

To run inference on the pre-trained model, run the following script
```python
import torch
import clip
from PIL import Image

device = "cuda" if torch.cuda.is_available() else "cpu"
model, preprocess = clip.load("ViT-B/32", device=device)

image = preprocess(Image.open("CLIP.png")).unsqueeze(0).to(device)
text = clip.tokenize(["a diagram", "a dog", "a cat"]).to(device)

with torch.no_grad():
    image_features = model.encode_image(image)
    text_features = model.encode_text(text)
    
    logits_per_image, logits_per_text = model(image, text)
    probs = logits_per_image.softmax(dim=-1).cpu().numpy()

print("Label probs:", probs)  # prints: [[0.9927937  0.00421068 0.00299572]]

#source: https://github.com/openai/CLIP
```

Running this script on the EuroSAT dataset gave an accuracy of ```42.18%```

## Fine Tuning

Further, I decided to fine-tune the model on this dataset. The code for the same can be found in the jupyter notebook.

On fine-tuning, the accuracy of the model came out to be ```73.76%```

The model was trained for 16 epochs (half of that mentioned in the paper) on L4 GPU. 

The model is saved and can be used to run inferences.

To run inference using the fine-tuned model, use the following script:
```python
import requests
import clip
from PIL import Image
from io import BytesIO

device = "cuda" if torch.cuda.is_available() else "cpu"
model, preprocess = clip.load("ViT-B/32", device=device)
model.load_state_dict(torch.load("euroSATclip.pt"))

classes = ["a centered satellite photo of annual crop land",
          "a centered satellite photo of forest",
          "a centered satellite photo of lake or sea",
          "a centered satellite photo of pasture land",
          "a centered satellite photo of permanent crop land",
          "a centered satellite photo of river",
          "a centered satellite photo of residential buildings or homes or apartments",
          "a centered satellite photo of industrial buildings or commercial buildings",
          "a centered satellite photo of highway or road",
          "a centered satellite photo of brushland or shrubland"]

# fetch image
image = Image.open('<image-path>')

image_encoded = preprocess(Image.open(image)).unsqueeze(0).to(device)
text_encoded = clip.tokenize(classes).to(device)

with torch.no_grad():
    image_features = model.encode_image(image_encoded)
    text_features = model.encode_text(text_encoded)
    image_features /= image_features.norm(dim=-1, keepdim=True)
    text_features /= text_features.norm(dim=-1, keepdim=True)
    
    similarity = (image_features @ text_features.T).squeeze()
    best_match_idx = similarity.argmax().item()
    best_description = classes[best_match_idx]
    print(best_description)
```


