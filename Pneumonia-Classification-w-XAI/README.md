# Explainable AI for Pneumonia Classification

![assets/IPSP CA2 Final Slides_Page_08.jpg](./assets/IPSP%20CA2%20Final%20Slides_Page_08.jpg)

Neural networks are generally non-intuitive and difficult to understand, even difficult for AI Engineers to understand the inner workings of the model; this is referred as the "black-box" problem. In recent years, we have seen the rise of AI use-cases in the medical sector, such example would be using AI to detect cancerous cells in medical images. However, the black-box problem is a major concern in the medical sector, as the AI models are used to make life and death decisions.

Explainable AI (XAI) is a field of research that aims to make AI models more interpretable. In this project, we will be using LIME (Local Interpretable Model-Agnostic Explanations) to explain the predictions of a pneumonia image classifier.

## Pneumonia Image Classification

![image dataset](./assets/IPSP%20CA2%20Final%20Slides_Page_46.jpg)

We did a two-class image classification - `0: NORMAL`, `1: PNEUMONIA` - are on the Pneumonia image dataset sourced from Kaggle. [1] The procedure went by training an image classifier on 5215 training images comprising of 1341 normal and 3875 pneumonia x-ray MRI images.

![image classifier](./assets/IPSP%20CA2%20Final%20Slides_Page_47.jpg)

## Model Agnostic with LIME

![LIME](./assets/IPSP%20CA2%20Final%20Slides_Page_49.jpg)

In simple intuition, model agnostic is defined to be any evaluation/explainable/interpretable method that can be applied to any ML/DL model. LIME (Local Interpretable Model-Agnostic Explanations) is a perturbation based algorithm which trains an interpretable LIME surrogate model by sampling data points in the neighborhood of a given input instance (perturbation).

![LIME Interpret](./assets/IPSP%20CA2%20Final%20Slides_Page_50.jpg)

## Gradient Based Attribution Methods via Captum

![captum](./assets/IPSP%20CA2%20Final%20Slides_Page_52.jpg)

![integrated gradients](./assets/IPSP%20CA2%20Final%20Slides_Page_53.jpg)

## Streamlit Web Application

![demo](./assets/IPSP%20CA2%20Final%20Slides_Page_50.jpg)

URL: https://tyh71-pneumonia-classification-w-xai-main-silwlx.streamlitapp.com/
