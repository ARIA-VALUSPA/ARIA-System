-------------------------------------------------
Devon Fazekas, <fazekade@sheridancollege.ca>, 05.07.2018
-------------------------------------------------

## Config File Breakdowns

The following analysis of the below Config Files is simply my interpretation based on source code observations.



### [gone] config-all-no-asr.xml

##### Includes:
- aGender (Age, Gender, Audio)
	- debug
	- ssi.log
	- agender
- eMax (eMax, Emotions, Video)
	- debug
	- ssi.log
	- emax
- Agent Core
	- all
- ActiveMQ
	- start
##### Description:
Starts all components except ASR (Automated Speech Recognition).


### [stayed] config-all.xml

##### Includes:
- aGender (Age, Gender, Audio)
	- debug
	- ssi.log
	- agender
- ASR Kaldi (ASR)
	- debug
	- ssi.log
	- asrkaldi
- eMax (eMax, Emotions, Video)
	- debug
	- ssi.log
	- emax
- Agent Core (Agent Core)
	- all
- ~~ActiveMQ~~
	- ~~start~~

##### Description:
Starts all components.


### [gone] config-core.xml

##### Includes:
- Agent Core (Agent Core)
	- all

##### Description:
...


### [gone] config-dialogue-manager.xml

##### Includes:
- Agent Core (Dialogue Manager)
	- dmonly

##### Description:
Starts only the Dialogue Manager using the Agent-Core.


### [gone] config-emax-mimic.xml

##### Includes:
- eMax (eMax, Emotions, Video)
	- debug
	- ssi.log
	- emax
- Agent Core (Agent Core)
	- emaxmimic
- ~~ActiveMQ~~
	- ~~start~~

##### Description:
...


### [gone] config-input-agender.xml

##### Includes:
- aGender (Age, Gender, Audio)
	- debug
	- ssi.log
	- agender

##### Description:
...

### [gone] config-input-all.xml

##### Includes:
- aGender (Age, Gender, Audio)
	- debug
	- ssi.log
	- agender
- ASR Kaldi (ASR)
	- debug
	- ssi.log
	- asrkaldi
- eMax (eMax, Emotions, Video)
	- debug
	- ssi.log
	- emax
- emospeech (Emotions, Audio)
	- debug
	- ssi.log
	- emospeech

##### Description:
...


### [gone] config-input-asr.xml

##### Includes:
- aGender (Age, Gender, Audio)
	- debug
	- ssi.log
	- agender
- ASR Kaldi (ASR)
	- debug
	- ssi.log
	- asrkaldi
- eMax (eMax, Emotions, Video)
	- debug
	- ssi.log
	- emax
- emospeech (Emotions, Audio)
	- debug
	- ssi.log
	- emospeech

##### Description:
...


### [gone] config-input-emax.xml

##### Includes:
...

##### Description:
...


### [gone] config-input-emospeech.xml

##### Includes:
...

##### Description:
...

-------------------------------------------------
