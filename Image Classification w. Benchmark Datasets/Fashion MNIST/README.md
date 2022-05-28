# Fashion MNIST Model Log

- Author: Tan Yu Hoe / P2026309 / DAAA2B04
- November 2021

> This purposed to be a log of the training process of the Fashion MNIST model.

## Model Evaluation Results

| Architecture | Training Accuracy (%) [1] | Validation Accuracy (%) | Train Accuracy (%) [2] | Test Accuracy (%) |
| --- | --- | --- | --- | --- |
| Baseline Convolutional Neural Network | 97.66 | 92.02 | 98.66 | 91.38 |
| Baseline CNN with Image Augmentation | 84.78 | 86.87 | 89.50 | 88.09 |
| Modified VGG16 | 97.06 | 94.07 | 98.02 | 94.71 |
| ResNet | 98.90 | 94.78 | 98.19 | 93.92 |
| Modified VGG16 w/ Full Train Data | 96.59 | 94.69 | 98.00 | 94.69 |
| ResNet w/ Full Train Data | 98.63 | 94.31 | 98.37 | 94.31 |

- [1]: Training Accuracy from Training Iterations (Epochs)
- [2]: Full training set being pass through evaluation
- Training Accuracy and Validation Accuracy are fitted with Augmentation when Augmentation is applied

---

## Model Configurations

| Architecture | Add'l Description | Optimizer | Epochs | Vadliation Split | Batch Size |
| --- | --- | --- | --- | --- | --- |
| Baseline Convolutional Neural Network | 1 Conv Block; 1 FC Block | Adam(learning_rate=0.001) | 50 | 0.1 | 512 |
| Baseline CNN with Image Augmentation | Minor Augmentation with Cutout; 1 Conv Block; 1 FC Block; | Adam(learning_rate=0.001) | 50 | 0.1 | 512 |
| Modified VGG16 | Minor Augmentation with Cutout; Batch Norm within Conv Block; Replace FC Blocks with GAP; Reduce Learning Rate on Plateau | Adam(learning_rate=0.001) | 100 | 0.1 | 512 |
| ResNet | Minor Augmentation; Reduce Learning Rate on Plateau; Depth: 32 | Adam(learning_rate=0.001) | 100 | 0.1 | 256 |
| Modified VGG16 with Full Train Data | Minor Augmentation with Cutout; Batch Norm within Conv Block; Replace FC Blocks with GAP; Reduce Learning Rate on Plateau | Adam(learning_rate=0.001) | 100 | 0.00 | 512 |
| ResNet with Full Train Data | Minor Augmentation; Reduce Learning Rate on Plateau; Depth: 32 | Adam(learning_rate=0.001) | 100 | 0.00 | 256 |

- All model are trained on Tesla P100 GPU via Google Colaboratory
- All Training and Testing data undergoes Image Preprocessing - Normalization
  - Pixels are divided by 127.5, then subtract 1, range between [-1, 1]

$$X' = -1 + \frac{X}{127.5}$$
