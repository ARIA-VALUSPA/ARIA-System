-------------------------------------------------
Devon Fazekas, <fazekade@sheridancollege.ca>, 05.07.2018

-------------------------------------------------

## Configuration File Breakdowns

The following analysis of the below configuration files are simply my interpretation based on source code observations.

1. `config-all-final-kinect.xml`
		Contains all processes, SSI pipeline, Agent-core, and Agent-output.

		**SSI pipeline:**
		- Uses `all-in-one-final-kinect` parameter instead of `all-in-one`.
		- Toggle recording
		- Sender template
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Number of n-best list
		- ASR: Mode
		- ASR: Threshold for voice activity detection
		- Smoothing: Short-term window (in seconds)
		- Smoothing: Long-term window (in seconds)
		- Emax: CPU/GPU classification

		**Agent-core:**
		- Uses `javacp` language rather than `java`.
		- Uses no class.
		- References the `Agent-Core-New` directory.
		- Uses `lib/`, `modules/*`, `modules/lib/*`, and `hmi.winger.Main` parameters.

		**Agent-output:**
		- Greta: Environment
		- Greta: ActiveMQ window visibility
		- Animation engine

2. `config-all-final.xml`
		- Contains SSI pipeline, ASR container, ActiveMQ, and Agent-output processes.

		**ASR Container:**
		- Launches the ASR server (from Docker).

		**ActiveMQ:**
		- Launches ActiveMQ.
		- Uses `External\apache-activemq-5.12.1\activemq-all-5.12.1.jar` class, and references `External\apache-activemq-5.12.1` directory.

		**Agent-output (Greta):**
		- Uses `Agent-Ouput\bin\Agent-Output.jar` class, and references `Agent-Ouput\bin` directory.
		- Sets Greta: Environment automatically.
		- Sets Greta: ActiveMQ window visibility automatically.
		- Sets Animation engine automatically.

		**SSI pipeline & Agent-input:**
		- Audio recording (true/false)
		- Video recording (true/false)
		- Video recording region (top, left, width, height)
		- Sender template
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Number of n-best list
		- ASR: Mode (inc/utt)
		- ASR: Threshold for voice activity detection
		- Emax: CPU / GPU classification

3. `config-all-new.xml`
		- Contains all processes, SSI pipeline, Agent-core, and Agent-output.

		**SSI pipeline:**
		- References the `all-in-one` directory.
		- Toggle recording
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Number of n-best list
		- ASR: Mode
		- ASR: Threshold for voice activity detection
		- Emax: Camera frame rate
		- Emax: CPU/GPU classification
		- Emax: Greedy processing

		**Agent-core:**
		- Uses `javacp` language rather than `java`, has no class, and references the `Agent-Core-New` directory.
		- Uses `lib/`, `modules/*`, `modules/lib/*`, and `hmi.winger.Main` parameters.

		**Agent-output:**
		- Greta: Environment
		- Greta: ActiveMQ window visibility
		- Animation engine

4. `config-all.xml`
		- Contains all processes, SSI pipeline, Agent-core, and Agent-output.
		- SSI pipeline references the `all-in-one` directory.

		**SSI pipeline:**
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Language model
		- ASR: Threshold for voice activity detection
		- Emax: CPU/GPU classification

		**Agent-core:**
		- Uses `java` language,, has `Agent-Core.jar` class, and references `Agent-Core\bin` directory.
		- Uses `ssiWindows` and `agentWindows` parameters.

		**Agent-output:**
		- Greta: Environment
		- Greta: ActiveMQ window visibility
		- Animation engine

5. `config-asr.xml`
		Contains only the SSI pipeline process.

		**SSI pipeline:**
		- References `asrkaldi` directory.
		- Audio recording (true/false)
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Language model
		- ASR: Number of n-best list
		- ASR: Mode (inc/utt)
		- ASR: Threshold for voice activity detection

6. `config-dm.xml`
		Contains only the Agent-core process.

		**Agent-core:**
		- Uses `javacp` language.
		- Uses no class.
		- References the `Agent-Core-New` directory.
		- Uses `lib/`, `modules/*`, `modules/lib/*`, and `hmi.winger.Main` parameters.

7. `config-everything.xml`
		(In progress) An amalgamation of all other configuration files such that it contains all settings.

8. `config-Greta.xml`
		Contains only the Agent-output process.

		**Agent-output:**
		- Greta: Environment
		- Greta: ActiveMQ window visibility (true/false)
		- Animation engine (GRETA/LIVING-ACTOR)

9. `config-SSI-Greta.xml`
		Contains both the SSI pipeline and Agent-output processes.

		**SSI pipeline:**
		- References `all-in-one` directory instead of `all-in-one-final`.
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Threshold for voice activity detection
		- Emax: CPU/GPU classification

		**Agent-output:**
		- Uses `Agent-Output.jar` class.
		- References `Agent-Output\bin` directory.
		- Greta: Environment
		- Greta: ActiveMQ window visibility (true/false)
		- Animation engine (GRETA/LIVING-ACTOR)

10. `config-SSI.xml`
		Contains only the SSI pipeline process.

		**SSI pipeline:**
		- References the `all-in-one` directory.
		- Audio recording (true/false)
		- ASR: Number of n-best list
		- ASR: Mode (inc/utt)
		- ASR: Language model (en/de/fr)
		- ASR: IP of the machine
		- ASR: Connection port
		- ASR: Threshold for voice activity detection
		- Emax: CPU/GPU classification

-------------------------------------------------
