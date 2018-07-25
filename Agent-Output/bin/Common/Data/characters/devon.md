# 1. Lip data for the Lip-Model:
## "UL" = upper-lip; "LL" = lower-lip; "inf" = inferior; "sup" = superior.
LIP_DATA        = ./BehaviorRealizer/LipModel/LipData.xml
WEIGHT_ULP      = 30
WEIGHT_LLP      = 30
WEIGHT_JAW      = 7
WEIGHT_LLO      = 70
WEIGHT_ULO      = 15
WEIGHT_LW       = 40
WEIGHT_CR       = 1
BASETENSIONSUP  = 0
BASETENSIONINF  = 0

# 2. Lexicon (vocabulary):
LEXICON = ./BehaviorPlanner/IntentionLexicon/lexicon_Alice.xml

# 3. Baseline:
BASELINE = ./BehaviorPlanner/Baseline/baseline

# 4. Behavior qualifiers:
QUALIFIERS = ./BehaviorPlanner/Qualifier/behaviorqualifiers_gvlex.xml

# 5. Agent-state:
AGENTSTATE = ./ListenerIntentPlanner/AgentState/Poppy.xml

# 6. Back-channel trigger rules:
BACKCHANNELTRIGGERRULES = ./ListenerIntentPlanner/TriggerRules/rulesfile.xml

# 7. Touch-position & Inverse kinematic:
TOUCHPOINT  = ./BehaviorRealizer/Skeleton/poppy_touchpoint.xml
IK_SKELETON = ./BehaviorRealizer/Skeleton/camille_skeleton.xml

# 8. Constraint for movements:
GESTURESPACE    = ./BehaviorRealizer/Constraint/GestureSpace.xml
DURATIONS       = ./BehaviorRealizer/Constraint/durations.xml

# 9. Repository of gestures (body & facial):
AULIBRARY       = ./BehaviorRealizer/BehaviorLexicon/aulibrary_autodesk.xml
FACELIBRARY     = ./BehaviorRealizer/BehaviorLexicon/facelibrary_alice.xml
GESTUARY        = ./BehaviorRealizer/BehaviorLexicon/gestuary_alice.xml
HEADGESTURES    = ./BehaviorRealizer/BehaviorLexicon/HeadGestures_Alice.xml
TORSOGESTURES   = ./BehaviorRealizer/BehaviorLexicon/TorsoGestures.xml

# 10. Aspect (avatar) & gender:
ASPECT = alice
GENDER = female

# 11. Cereproc parameters (voice for TTS):
CEREPROC_LANG   = en-US
CEREPROC_VOICE  = arctic

# 12. Languages:
MARY_3_EN_VOICE = slt-arctic
MARY_3_EN_LANG  = en
MARY_4_EN_VOICE = dfki-obadiah
MARY_4_EN_LANG  = en-GB
MARY_4_FR_VOICE = pierre-voice-hsmm
MARY_4_FR_LANG  = fr

# 13. Acapela - voice as a service for TTS use (22k = sample rate of the audio):
ACAPELA         = Alice22k_HQ
ACAPELA_VAAS    = alice22k

# 14. Animation lexicons:
RESTPOSE_REPOSITORY     = ./BehaviorRealizer/AnimationLexicon/RestPosePoppy.xml
HANDSHAPE_REPOSITORY    = ./BehaviorRealizer/AnimationLexicon/HandShape_obadiah.xml
SYMBOLIC_CONVERSION     = ./BehaviorRealizer/AnimationLexicon/SymbolicConversion.xml
HEAD_INTERVALS          = ./BehaviorRealizer/AnimationLexicon/HeadIntervals.xml
TORSO_INTERVALS         = ./BehaviorRealizer/AnimationLexicon/TorsoIntervals.xml

# 15. Interruptions:
INTERRUPTION_GESTURE_HOLD_DUR       = 0
INTERRUPTION_GESTURE_RETRACT_DUR    = 0
