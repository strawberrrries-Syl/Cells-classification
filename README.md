# Cells Classification

## Introduction:

>For machine learning, you can find great parameters for every network as long as having enough data and calculated power. However, people do not have such a huge useful dataset for many regions like medical domains. This makes the problem that how to use available information thoroughly an important question. 

>This project aims to find the influence of manipulating datasets for network performance. 
The manipulation could be data augmentation or pre-processing of images used before training. In paper [1], the method that normalizes images in color space to erase the objective difference caused by machines. Also, rotation and flipping are good ways to increase datasets using limited information. In article [2], though it’s for radiology, a method of windowing different organs arose. Images of this project are all cells not organs, however. I was thinking about whether extracting the nucleus feature of cells is feasible (pathologists may identify cell types by recognizing nucleus or finding mitosis). According to that, I split the nucleus and other tissues apart to black and white separately, which is like a kind of ultra-windowing (only keeping the nucleus part in black). In paper [3], translating pictures (shifting) and adding noise are inspired me. In this project, two kinds of methods for enhancing network performance using limited datasets are discussed -- data Augmentation and data preprocessing.

