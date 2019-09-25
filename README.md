# Multistage Temporal Convolutional Net with Bilinear Residual Module


## Acknowledgement
Our code is developped based on the following work, the github repo of which is [here](https://github.com/yabufarha/ms-tcn).

    @inproceedings{farha2019ms,
      title={Ms-tcn: Multi-stage temporal convolutional network for action segmentation},
      author={Farha, Yazan Abu and Gall, Jurgen},
      booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
      pages={3575--3584},
      year={2019}
    }


## Implementation
Our implementation is based on Python 3 and PyTorch 1.1. One neets to notice the model path in the main.py file. To train from scratch, one can run

    sh script_run_trainval.sh $dataset $pooling $dropout $epoch
    
For example, to train on the _50Salads_ dataset with _RPGaussian_ method and 0.7 dropout ratio for 70 epochs. One should run in the terminal

    sh script_run_trainval.sh 50salads RPGaussian 0.7 70
    
To reproduce Tab.2 in our manuscript without checkpoints, one needs to download our checkpoints, and save them into the ''model'' folder. Then, one can run the following to perform inference.

    sh script_run_val.sh 50salads RPGaussian 0.7 70
    


## Data
[download](https://drive.google.com/drive/folders/16U-rtxgSe6udBNiJPVQppjiRgjezDu9O?usp=sharing)



## checkpoints
[download](https://drive.google.com/drive/folders/1vCu3Srj90KefPDVkY3v29pX8T9FGq26l?usp=sharing)
