; 192.168.1.51/61

; 歩く時の関節のStiffnessを設定
;2011大会
;(mc-jointpower "RHipPitch" 0.8f)
;(mc-jointpower "LHipPitch" 0.8f)
;(mc-jointpower "RHipYawPitch" 0.6f)
;(mc-jointpower "LHipYawPitch" 0.6f)
;(mc-jointpower "RHipRoll" 0.7f)
;(mc-jointpower "LHipRoll" 0.7f)
;(mc-jointpower "RAnkleRoll" 0.7f)
;(mc-jointpower "LAnkleRoll" 0.7f)
;(mc-jointpower "RKneePitch" 0.7f)
;(mc-jointpower "LKneePitch" 0.7f)
;(mc-jointpower "RAnklePitch" 0.5f)
;(mc-jointpower "LAnklePitch" 0.5f)

;修練道場

;(set-walk-jointpower "RHipPitch" 0.8f)
;(set-walk-jointpower "LHipPitch" 0.8f)
;(set-walk-jointpower "RHipYawPitch" 0.6f)
;(set-walk-jointpower "LHipYawPitch" 0.6f)
;(set-walk-jointpower "RHipRoll" 0.7f)
;(set-walk-jointpower "LHipRoll" 0.7f)
;(set-walk-jointpower "RAnkleRoll" 0.7f)
;(set-walk-jointpower "LAnkleRoll" 0.8f)
;(set-walk-jointpower "RKneePitch" 0.7f)
;(set-walk-jointpower "LKneePitch" 0.7f)
;(set-walk-jointpower "RAnklePitch" 0.5f)
;(set-walk-jointpower "LAnklePitch" 0.5f)

(set-walk-jointpower "RHipPitch" 0.6f)
(set-walk-jointpower "LHipPitch" 0.6f)
(set-walk-jointpower "RHipYawPitch" 0.6f)
(set-walk-jointpower "LHipYawPitch" 0.6f)
(set-walk-jointpower "RHipRoll" 0.7f)
(set-walk-jointpower "LHipRoll" 0.7f)
(set-walk-jointpower "RAnkleRoll" 0.7f)
(set-walk-jointpower "LAnkleRoll" 0.7f)
(set-walk-jointpower "RKneePitch" 0.7f)
(set-walk-jointpower "LKneePitch" 0.7f)
(set-walk-jointpower "RAnklePitch" 0.5f)
(set-walk-jointpower "LAnklePitch" 0.5f)


;修練道場51/61改
(.setWalkConfig jalmotion 0.02f 0.01f 0.025f 0.4f 0.14f 5.0f)
(.setWalkTrapezoidConfig jalmotion 5.0f -5.0f)


; Walkのパラメータ samplesの設定
(set-walk-samples 20)

; NaojiCircleTurnの設定
(set-circleturn-samples 30)
(set-circleturn-sidedist 0.047f)
(set-circleturn-angle 0.245f)


		;修練道場白い子
		;samples = 30;
		;angle = 0.245f;
		;sideDist = 0.047f;

