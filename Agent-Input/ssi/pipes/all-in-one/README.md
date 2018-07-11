<<<<<<< HEAD
-------------------------------------------------
Johannes Wagner, <wagner@hcm-lab.de>, 11.01.2016
Devon Fazekas, <fazekade@sheridancollege.ca>, 09.07.2018
-------------------------------------------------

This pipelines features:

* Emotional speech recognition (emospeech.pipeline)
    https://hcm-lab.de/cloud/index.php/s/I5Kbp1XCylYFAlk

and unzip to:

./models/speech/

Password: Wonderland2016

-------------------------------------------------

    user states			average
    ------------------------------------
    age 				until reset
    gender 				until reset
    arousal 			2 seconds
    valence 			2 seconds
    interest 			2 seconds

    Use RESET button to reset age/gender prediction (e.g. when a new user enters)

* Emotional face recognition (emax.pipeline)

* Automatic speech recognition (kaldi.pipeline)

    1. Run ARIA's virtual machine (see ARIA\System\Agent-Input\kaldi\README)
    2. Open 'asrkaldi.pipeline-config' and set the ip of the virtual machine

To run one of the following configurations:

    - ALL-IN-ONE.bat (requires ActivMQ server)
    - ALL-IN-ONE_NOAMQ.bat (ActivMQ not used)
    - ALL-IN-ONE_SILENT.bat (no visualization)

You can change ActivMQ parameters in 'all-in-one.pipeline-config' (by default id/topic are 'SSI')

To change the output format of the pipeline edit 'all-in-one.xml'
=======
-------------------------------------------------
Johannes Wagner, <wagner@hcm-lab.de>, 11.01.2016

Devon Fazekas, <fazekade@sheridancollege.ca>, 09.07.2018

-------------------------------------------------

This pipelines features:

* **Emotional speech recognition** (emospeech.pipeline)
	
	[Speech Models](https://hcm-lab.de/cloud/index.php/s/I5Kbp1XCylYFAlk)
	
	Password: *Wonderland2016*

	and unzip to: [`/models/speech/`](../../models/speech/)

	
	| user states   | average       |
	| ------------- |:-------------:|
	| age           | until reset   |
	| gender        | until reset   |
	| arousal       | 2 seconds     |
	| valence       | 2 seconds     |
	| interest      | 2 seconds     |

	Use RESET-button to reset age & gender prediction (*e.g. when a new user enters*)


* **Emotional face recognition** (emax.pipeline)

* **Automatic speech recognition** (kaldi.pipeline)

	1. Run ARIA's virtual machine (see [`/Agent-Input/kaldi/README.md`](../../../kaldi/README.md))
	2. Open [`asrkaldi.pipeline-config`](../asrkaldi/asrkaldi.pipeline-config) and set the ip of the virtual machine
	
	To run one of the following configurations:

	- [`ALL-IN-ONE.bat`](ALL-IN-ONE.bat) (**requires ActivMQ server**) 
	- [`ALL-IN-ONE_NOAMQ.bat`](ALL-IN-ONE_NOAMQ.bat) (**ActivMQ not used**)
	- [`ALL-IN-ONE_SILENT.bat`](ALL-IN-ONE_SILENT.bat) (**no visualization**)
	
	You can change ActiveMQ parameters in [`all-in-one.pipeline-config`](../all-in-one/all-in-one.pipeline-config) (**by default id/topic are 'SSI'**)
	
	To change the output format of the pipeline edit [`all-in-one.xml`](all-in-one.xml)

-------------------------------------------------
>>>>>>> de305b7baaefceac2e93f2eb27c6703445d50a49
