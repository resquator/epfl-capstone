Capstone project - Daryl FELIX - EPFL Extension school

Instructions
The project has been devlopped and ran on the dedicated exts-ml python environement.

I worked with some added librairies
- sweetviz (https://pypi.org/project/sweetviz/) to make an EDA
- yellowbrick (https://www.scikit-yb.org/en/latest/) to plot the ROC Curve
- tqdm for the progress bar

I created a personal librairie with my transformers
- mytransformer.py contains 2 classes

Folders
- all notebooks are in the submiited folder
- the folder contains the transformer configuration files

Sub-Folders
- _anonymized contains the data sources
- documentation contains documents - there is a document PDF ... READ First which describe the whole project
- logs
- res contains .res files which are stored during the modeling exploration process (notebook-07)
- models contains saved models ( examples ) - the notebook-10 works with a saved model
- sweetviz -during the whole project a time to time create sewwtviz report and store them in this folder

All notebooks can be run individually [except notebook 01 & 02 which deal with internal data] but MUST respect the sequence.

The 1st 2 notebooks collected data and apply anonymization with mock data.

The 00-runall.ipynb notebook runs all sequence of notebooks. Last run was for 25 minutes on my computer (basic configuration).

The last notebook (10-load-models) is not in the sequence (00-runall). It can be run to load a saved model and fit it.

Thank you for your support
Daryl