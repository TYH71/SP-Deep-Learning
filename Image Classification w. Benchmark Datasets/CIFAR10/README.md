# CIFAR-10 Model Log

- Author: Tan Yu Hoe / P2026309 / DAAA2B04
- November 2021

> This purposed to be a log of the training process of the CIFAR-10 model.

## Model Evaluation Results

| Architecture | Training Accuracy (%) [1] | Validation Accuracy (%) | Train Accuracy (%) [2] | Test Accuracy (%) |
| --- | --- | --- | --- | --- |
| Baseline Convolutional Neural Network | 95.86 | 66.22 | 96.59 | 65.62 |
| Baseline CNN with Image Augmentation | 61.34 | 64.44 | 69.71 | 67.61 |
| Modified VGG16 | 97.94 | 89.32 | 99.02 | 90.80 |
| ResNet | 98.39 | 89.84 | 97.34 | 89.00 |
| Modified VGG16 w/ Full Train Data | 96.44 | 89.86 | 99.35 | 89.86 |
| ResNet w/ Full Train Data | 99.40 | 90.48 | 99.13 | 90.48 |

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
  - Pixels are devided by 127.5, then subtract 1, range between [-1, 1]

$$X' = -1 + \frac{X}{127.5}$$

## Notebooks

1. [Baseline CNN](./CIFAR-10%20HTML/1.%20Baseline%20Implementation.html)
2. [Baseline CNN w/ Augmentation](./CIFAR-10%20HTML/2.%20Baseline_ConvNet_w_Augmentation.html)
3. [Modified VGG16](./CIFAR-10%20HTML/3.%20Modified_VGG16.html)
4. [ResNet](./CIFAR-10%20HTML/4.%20ResNet.html)
5. [Modified VGG16 w/ Full Train Data](./CIFAR-10%20HTML/5.%20Modified_VGG16_w_Full_Train_Data.html)
6. [ResNet with Full Train Data](./CIFAR-10%20HTML/6.%20ResNet_w_Full_Train_Data.html)
