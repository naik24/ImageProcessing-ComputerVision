# Brain Tumor Detection

A brain tumor, known as an intracranial tumor, is an abnormal mass of tissue in which cells grow and multiply uncontrollably, seemingly unchecked by the mechanisms that control normal cells. More than 150 different brain tumors have been documented, but the two main groups of brain tumors are termed primary and metastatic.

In this project, we aim to classify a MRI scan into one of four categories - glioma tumor, meningioma tumor, pituitary tumor, no tumor. Gliomas are the most prevalent type of adult brain tumor, accounting for 78 percent of malignant brain tumors. They arise from the supporting cells of the brain, called the glia. Meningiomas are the most common benign intracranial tumors, comprising 10 to 15 percent of all brain neoplasms, although a very small percentage are malignant. These tumors originate from the meninges, the membrane-like structures that surround the brain and spinal cord.Pituitary adenomas are the most common intracranial tumors after gliomas, meningiomas and schwannomas. The large majority of pituitary adenomas are benign and fairly slow-growing. Even malignant pituitary tumors rarely spread to other parts of the body. Adenomas are by far the most common disease affecting the pituitary. They commonly affect people in their 30s or 40s, although they are diagnosed in children, as well. Most of these tumors can be treated successfully.

## Dataset

The dataset contains images of each type of tumor in the training as well as the test set. All the images are combined together and shuffled while training our model.

```

Training
|-- glioma_tumor
|-- meningioma_tumor
|-- no_tumor
|-- pituitary_tumor

Testing
|-- glioma_tumor
|-- meningioma_tumor
|-- no_tumor
|-- pituitary_tumor

```

## Xception Network

<p align = "center"><img width="1137" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/21ae44ea-27c2-450a-a157-fdb0c3b70441"></p>

## Metrics
<p align = "center"><img width="326" alt="image" src="https://github.com/naik24/ImageProcessing-ComputerVision/assets/69704762/a1377c30-a257-49a4-a97f-817e45121bb8"></p>


## References

[1] American Association of Neurological Surgeons, https://www.aans.org/en/Patients/Neurosurgical-Conditions-and-Treatments/Brain-Tumors#:~:text=A%20brain%20tumor%2C%20known%20as,mechanisms%20that%20control%20normal%20cells.
