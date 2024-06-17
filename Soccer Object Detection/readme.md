# Soccer Object Detection using YOLOv10


YOLOv10 (You Only Look Once version 10) is an advanced real-time object detection system that builds on the principles established by its predecessors in the YOLO family. Known for its high speed and accuracy, YOLOv10 leverages deep learning techniques to detect and classify objects within images or video frames in a single pass through the network, making it extremely efficient for real-time applications.

Key features of YOLOv10 likely include:

- Improved Accuracy: Enhanced algorithms and more refined network architectures contribute to better precision in detecting objects.
- Speed Optimization: Maintains or improves the high processing speed characteristic of the YOLO series, making it suitable for applications requiring real-time performance.
- Advanced Architectures: Utilizes cutting-edge neural network architectures and training techniques to improve performance and reduce computational costs.
- Versatility: Capable of handling a wide range of object detection tasks in various environments and conditions.

YOLOv10 comes with a new family of real-time end-to-end detectors with different model scales, i.e. YOLOv10-N/S/M/B/L/X. YOLOv10 can significantly outperform previous state-of-the-art models in terms of computation-accuracy trade-offs across various model scales.

<p align = "center"><img src = "https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/196e87ac-a739-4897-b291-fcde1edb8ef8"></p>

In this project, we train the YOLOv10 model to detect players, referees, football and the goalkeeper on a soccer field.

## Installing Dependencies

Clone the official YOLOv10 repo
```python
!git clone https://github.com/THU-MIG/yolov10.git
%cd yolov10
!pip install .
```

Install Roboflow
```python
!pip install roboflow
```

Download YOLOv10 pre-trained weights
```python
# downloading pre-trained weights
import os
import urllib.request

# Create a directory for the weights in the current working directory
weights_dir = os.path.join(os.getcwd(), "weights")
os.makedirs(weights_dir, exist_ok=True)

# URLs of the weight files
urls = [
    "https://github.com/jameslahm/yolov10/releases/download/v1.0/yolov10n.pt",
    "https://github.com/jameslahm/yolov10/releases/download/v1.0/yolov10s.pt",
    "https://github.com/jameslahm/yolov10/releases/download/v1.0/yolov10m.pt",
    "https://github.com/jameslahm/yolov10/releases/download/v1.0/yolov10b.pt",
    "https://github.com/jameslahm/yolov10/releases/download/v1.0/yolov10x.pt",
    "https://github.com/jameslahm/yolov10/releases/download/v1.0/yolov10l.pt"
]

# Download each file
for url in urls:
    file_name = os.path.join(weights_dir, os.path.basename(url))
    urllib.request.urlretrieve(url, file_name)
    print(f"Downloaded {file_name}")
```

## Dataset Preparation

Download dataset from using Roboflow using RoboflowAPI
```python
from roboflow import Roboflow

rf = Roboflow(api_key="m2kze38zyJrtLM8KC3Sv")
project = rf.workspace("roboflow-jvuqo").project("football-players-detection-3zvbc")
version = project.version(9)
dataset = version.download("yolov9")
```

## Model Training
```python
try:
  %cd yolov10
except:
  pass

!yolo task=detect mode=train epochs=500 batch=16 plots=True model=weights/yolov10n.pt data=/content/yolov10/football-players-detection-9/data.yaml
```

## Model Inference
```python
!yolo task=detect mode=predict conf=0.25 save=True model=bestWeights.pt source=testVid.mp4
```

## Result
Download the testVidResult.avi file to view the results.
