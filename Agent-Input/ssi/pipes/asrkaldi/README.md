-------------------------------------------------------------
Johannes Wagner, <wagner@hcm-lab.de>, 08.01.2016

-------------------------------------------------------------

## About

This pipeline uses KALDI for speech recognition.

-------------------------------------------------

## Setup

* Set up ASR on a linux machine (contact **Amr** for how to do this <amr.eldesoky@gmail.com>)
* Open 'asrkaldi.pipeline-config' and set the IP and Port of your linux machine
* Launch `ASRKALDI.bat` to run from a microphone or `ASRKALDI_OFFLINE.bat` to run from a file.

Note that you need **Python 3.5.x** and install 'xmltodict' using pip.

-------------------------------------------------

## Notes

- You can set a different `.wav` file using the 'file' option (PCA with a sample rate of 16kHz)
- You can change the vad threshold using the **vad:threshold** option (or play around with the volume of your mic)
- You can change the amount of silence added to each segment using the **asr:silence** option (0 means no silence will be added)
- If `log:use = true` every time you run the pipeline a new wav file and a new annotation will be created in the `log` folder (make sure to properly stop the pipeline!)
- To display a logged session drag and drop the wav and annotation file to **NOVA**

-------------------------------------------------
