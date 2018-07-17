-------------------------------------------------
Devon Fazekas, <fazekade@sheridancollege.ca>, 05.07.2018
-------------------------------------------------

# Prerequisites

To download **Visual Studio** run [`vc_redist.x64.exe`](vc_redist.x64.exe).

-------------------------------------------------

# Setup

Run [`get_models.bat`](get_models.bat) to acquire all necessary models

        age,
        agreeableness,
        conscientiousness,
        interest,
        language,
        valence,
        average motion.

The script goes through the [`model_all.lst`](model_all.lst) file to get list of models, then checks if model exists in [`../Agent-Input/`](../Agent-Input/) and downloads any missing models by running `curl.exe -L -o ../Agent-Input/i j` where `i` is the model name and `j` its URL.

-------------------------------------------------
