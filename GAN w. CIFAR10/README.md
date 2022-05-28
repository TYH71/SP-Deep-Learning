# Part A: CIFAR-10 Image Generation using GAN

- Author: Tan Yu Hoe / P2026409 / DAAA2B04
- Janurary 2022

## Evaluation Results

| Architecture | Epoch Checkpoint | FID | KL Divergence | ResNet34 Accuracy |
| --- | --- | --- | --- | --- |
| GAN | 40 | 138.33 +- 0.837 | 5.6873 | - |
| CGAN | 100 | 90.918 +- 0.325 | 4.6261 | 0.64 |
| ACGAN | 80 | 93.149 +- 0.737 | 4.4176 | 0.61 |

## Model Configuration

### Generative Adversarial Network

|![Generated Images from ACGAN](./images/GAN/GAN.gif)|
|:--:|
| 1000 small colour images created with CGAN |

### Conditional Generative Adversarial Network

|![CGAN_Disc](./images/misc/CGAN_Disc.png)|![CGAN_Gen](./images/misc/CGAN_Gen.png)|
|:--:|:--:|
|CGAN Discriminator Architecture|CGAN Generator Architecture|

|![Generated Images from ACGAN](./images/CGAN/CGAN.gif)|
|:--:|
| 1000 small colour images created with CGAN |

### Auxiliary Classifier Generative Adversarial Network

|![ACGAN_Disc](./images/misc/ACGAN_Disc.png)|![ACGAN_Gen](./images/misc/ACGAN_Gen.png)|
|:--:|:--:|
|ACGAN Discriminator Architecture|ACGAN Generator Architecture|

|![Generated Images from ACGAN](./images/ACGAN/ACGAN.gif)|
|:--:|
| 1000 small colour images created with ACGAN |
