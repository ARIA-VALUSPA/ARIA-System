-------------------------------------------------
Devon Fazekas, <fazekade@sheridancollege.ca>, 17.07.2018

-------------------------------------------------

# Directory contents

This directory contains a universal script called `launch-asr.sh` used to run the ASR server passing all the options to control the behavior of the execution, for example, select language, mode, end-point detection, etc. The script should be run as:

`./launch-asr.sh --lang [en|de|fr] --socket [ex: 8888] --epoint [true|false] --nbest [n >= 1] --mode [inc|utt] --beamv [ex: 10] --lbeamv [ex: 6] --maxactive [e.g. 2000]`

* `lang`:

    Set the desired language to English (en), German (de), or French (fr). Note, French is still not available.

* `socket`:

    Socket number where the audio will be received (4 digit number).

* `epoint`:

    Turn Kaldi's end-point detection ON (true) or OFF (false).

* `nbest`:

    Used to select the desired number of N-best list to output. The N-Best list contains N ranked hypotheses for the user’s speech, where the top entry is the engine’s best hypothesis. When the top entry is incorrect, the correct entry is often contained lower down in the N-Best list. Note that in case it is set to 1, a different, little more efficient, binary will be used.

* `mode`:

    Used to select the ASR decoding mode. With `inc` selected, the decoded output starts immediately following speech detection providing transcriptions as soon as a word is detected, and changes over time as more speech segments are received. When the utterance ends (i.e. end-point is detected), the decoded output is refined once more using the full utterance to the final decoded utterance, and outputs to a separate line. The server then awaits the next utterance.

    Initial tests show that performing the end-point detection as a part of this binary by using `--epoint true` is better in this case.

    With `utt` selected, N-best sentences are outputted only after finishing the full utterance (i.e. when end-point is detected).

* `beamv`:

    Used during graph search to prune ASR hypotheses at the state level. It determines the number of hypotheses tested in the forward pass of the decoding. Default value is 10 (optimized during development).

* `lbeamv`:

    Used when producing word level lattices after the decoding is finished. It is used to prune the lattice even further before it is saved/output. Some decoders refer to this as the backward pass beam. Lattice beam is typically smaller than the normal beam and its purpose is to limit the final size of the lattice (i.e., depth, or number of alternatives at each time step). Default value is 10 (optimized during development).

* `max-active`:

    The maximum number of states that can be active at one time in the decoder (defaults to 2000 - we recommend to keep this value).

**Note**: This directory also contains some outdated scripts to launch the ASR server in several separate modes. The scripts are currently not adjusted to run correctly.

**If it is necessary to automatically restart the ASR server (e.g., after a crash), then the `launch.sh` script should be used instead. In this case, the parameters described above should be set inside the file rather than passed inline (it is simpler to do it like this anyway). This script will start the ASR server by calling `launch-asr.sh` with the specified parameters, and periodically monitor the status of the process. If it crashed, then it will start it again.**

See WIKI pages for full details.

-------------------------------------------------
