-------------------------------------------------------------
Johannes Wagner, <wagner@hcm-lab.de>, 12.11.2015

-------------------------------------------------------------

## About

This pipeline fakes speech recognition.

Sentences are line-by-line read from a text file and send after a voice activity event is detected.

-------------------------------------------------------------

## Setup

The file with the sentences is currently found in [`questions/question`](./questions/question.txt).

When running the pipeline make sure to:

1. Use a headphone
2. Set headphone speakers as default audio playback device
3. Read out loud red sentences (a microphone will be displayed)
4. Listen while Alice is talking (if activity is detected in between this will mess up the recording)

-------------------------------------------------------------

## Configuration

- To **change the dialogue**, use the scripts [`mk_questions.pl`](./questions/mk_questions.pl) & [`mk_answers.pl`](./answers/answer.txt), and replace the wav files in [`answers/`](./answers/) accordingly
- To **record videos** of screen/user execute [`ASRFAKE_RECORD.bat`](./ASRFAKE.bat)
- Recorded files will be stored in [`capture/`](./capture/)

-------------------------------------------------------------
