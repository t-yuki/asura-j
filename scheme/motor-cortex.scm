(define RAW 1)
(define LINER 2)
(define COMPATIBLE 3)
(define TIMED 4)
(define TIMED_DEG 5)

(if (.isDefined js "naoji")
  (begin
    ; 80~89
    (load "motion-naoji.scm")

    ; 90~94
    (load "motion-choregraphe.scm")
  )
  (begin
    ; 10~29
    (load "motion-turn.scm")

    ; 30~39
    (load "motion-walk.scm")

    ; 40~59
    (load "motion-shot.scm")

    ; 60~69
    (load "motion-getup.scm")

    ; 70~79
    (load "motion-pose.scm")

    ; 100~199
    (load "motion-webots.scm")

    ; 90~94
    ; Webotsではうまく起き上がれない
    ;(load "motion-choregraphe.scm")

    ; 起き上がりを有効に
    (set! ss-getup-standup #t)
  )
)

(mc-registmotion 3 "kagami1" LINER #(
#(
    #(0 0 110 20 -80 -90 0 0 -25 40 -20 0 0 0 -25 40 -20 0 110 -20 80 90)
    #(0 0 120 20 -80 -90 0 0 -30 35 -20 0 0 0 -30 35 -20 0 120 -20 80 90)
    #(0 0 110 20 -80 -90 0 0 -25 40 -20 0 0 0 -25 40 -20 0 110 -20 80 90)
) #( 20 30 20)
)
)

(mc-registmotion 1 "stop2" LINER #(
#(
    #(0 0 90 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 90 0 0 0)
) #(40)
)
)

(mc-registmotion 0 "stop" LINER #(
#(
  #(0 0 110 20 -80 -90 0 0 -25 40 -20 0 0 0 -25 40 -20 0 110 -20 80 90)
) #(50)
)
)

(mc-registmotion 50 "shot_left" TIMED_DEG #(
#(
  #(100 20 -80 -30  0  0 -25 65 -35   0   0  0 -25 65 -33   0 100 -20 80 30 )
  #(100 20 -80 -30  0 25 -25 80 -40 -20   0 25 -25 65 -33 -25 100 -20 80 30 )
  #(100 20 -80 -30  0 25 -25 80 -40 -25   0 25 -25 65 -33 -23 100 -20 80 30 )
  #(100 20 -80 -30  0 25 -30 40 -15 -25   0 10 -30 65 -33 -23 100 -20 80 30 )
  #(100 20 -80 -30  0 10 -50 90 -40 -15   0 10 -35 65 -28 -20 100 -20 80 30 )

  #(100 20 -80 -30  0 10 -80 20  60 -15   0 15 -35 65 -28 -20 100 -20 80 30 )
 
  #(100 20 -80 -30  0 10 -50 90 -40 -25   0 10 -35 65 -28 -20 100 -20 80 30 )
  #(100 20 -80 -30  0 25 -30 35 -10 -25   0 10 -35 65 -28 -20 100 -20 80 30 )
  #(100 20 -80 -30  0 25 -35 70 -25 -25   0 25 -35 65 -28 -20 100 -20 80 30 )
  #(100 20 -80 -30  0 25 -35 70 -25 -30   0 25 -35 65 -28 -20 100 -20 80 30 )
  #(100 20 -80 -30  0  0 -35 65 -33   0   0  0 -35 65 -33   0 100 -20 80 30 )
) #( 1300 1200 1200 1200 1500 80  1000 800 400 400 800)
)
)

(mc-registmotion 51 "shot_right" TIMED_DEG #(
#(
  #(100 20 -80 -30  0   0 -25 65 -33  0  0   0 -25 65 -35  0  100 -20 80 30 )
  #(100 20 -80 -30  0 -25 -25 65 -33 25  0 -25 -25 80 -40 20  100 -20 80 30 )
  #(100 20 -80 -30  0 -25 -25 65 -33 23  0 -25 -25 80 -40 25  100 -20 80 30 )
  #(100 20 -80 -30  0 -10 -30 65 -33 23  0 -25 -30 40 -15 25  100 -20 80 30 )
  #(100 20 -80 -30  0 -10 -35 65 -28 20  0 -10 -50 90 -40 15  100 -20 80 30 )

  #(100 20 -80 -30  0 -15 -35 65 -28 20  0 -10 -80 20  60 15  100 -20 80 30 )

  #(100 20 -80 -30  0 -10 -35 65 -28 20  0 -10 -50 90 -40 25  100 -20 80 30 )
  #(100 20 -80 -30  0 -10 -35 65 -28 20  0 -25 -30 35 -10 25  100 -20 80 30 )
  #(100 20 -80 -30  0 -25 -35 65 -28 20  0 -25 -35 70 -25 25  100 -20 80 30 )
  #(100 20 -80 -30  0 -25 -35 65 -28 20  0 -25 -35 70 -25 30  100 -20 80 30 )
  #(100 20 -80 -30  0   0 -35 65 -33  0  0   0 -35 65 -33  0  100 -20 80 30 )
) #( 1300 1200 1200 1200 1500 80  1000 800 400 400 800)
)
)

(mc-registmotion 52 "inside_left" TIMED_DEG #(
#(
  #(100 20 -80 -30     0 0 -35 65 -33 0      0 0 -35 65 -33 0               100 -20 80 30 )
  #(100 20 -80 -30     0 25 -35 65 -33 -25   0 25 -35 65 -33 -25     100 -20 80 30 )
  #(100 20 -80 -30     0 25 -30 45 -10 -25     0 5 -35 65 -33 -25     100 -20 80 30 )
  #(100 20 -80 -30     0 10 -50 90 -40 -25     0 5 -35 65 -33 -25    100 -20 80 30 )
  #(100 20 -80 -30     0 50 -60 30 20 -25     0 5 -35 65 -33 -25     100 -20 80 30 )

  #(100 20 -80 -30     0 -10 -60 30 20 -25       0 5 -35 65 -33 -25   100 -20 80 30 )

  #(100 20 -80 -30    0 50 -60 30 20 -25      0 5 -35 65 -33 -25    100 -20 80 30 )
  #(100 20 -80 -30   0 10 -50 90 -40 -25     0 5 -35 65 -33 -25     100 -20 80 30 )
  #(100 20 -80 -30   0 25 -30 45 -10 -25      0 5 -35 65 -33 -25    100 -20 80 30 )
  #(100 20 -80 -30    0 25 -35 65 -33 -25     0 25 -35 65 -33 -25  100 -20 80 30 )
  #(100 20 -80 -30     0 0 -35 65 -33 0    0 0 -35 65 -33 0              100 -20 80 30 )

) #(1300 800 800 800 800 160 800 800 800 800 800)
)
)

(mc-registmotion 53 "inside_right" TIMED_DEG #(
#(
  #(100 20 -80 -30    0 0 -35 65 -33 0          0 0 -35 65 -33 0         100 -20 80 30 )
  #(100 20 -80 -30    0 -25 -35 65 -33 25    0 -25 -35 65 -33 25   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 -25 -30 45 -10 25   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 -10 -50 90 -40 25   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 -50 -60 30 20 25    100 -20 80 30 )

  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 10 -60 30 20 25     100 -20 80 30 )

  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 -50 -60 30 20 25    100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 -10 -50 90 -40 25   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 25      0 -25 -30 45 -10 25   100 -20 80 30 )
  #(100 20 -80 -30    0 -25 -35 65 -33 25    0 -25 -35 65 -33 25   100 -20 80 30 )
  #(100 20 -80 -30    0 0 -35 65 -33 0          0 0 -35 65 -33 0         100 -20 80 30 )

) #(1300 800 800 800 800 160 800 800 800 800 800)
)
)

(mc-registmotion 54 "w_shot_left" TIMED_DEG #(
#(

  #(110 20 -80 -90 	0 0 -25 40 -20 0 	0 0 -25 40 -20 0 	110 -20 80 90 )

  #(110 20 -80 -90 	0 15 -25 40 -20 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 15 -40 75 -35 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 15 -40 75 -35 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )

  #(110 20 -80 -90 	0 15 -60 20 30 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )

  #(110 20 -80 -90 	0 15 -40 75 -35 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 15 -40 75 -35 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 15 -25 40 -20 -20 	0 15 -25 40 -20 -20 	110 -20 80 90 )

  #(110 20 -80 -90 	0 0 -25 40 -20 0	 	0 0 -25 40 -20 0 	110 -20 80 90 )

) #( 0 800 800 800 200 800 800 800 500 )
)
)

(mc-registmotion 55 "w_shot_right" TIMED_DEG #(
#(

  #(110 20 -80 -90 	0 0 -25 40 -20 0 	0 0 -25 40 -20 0 	110 -20 80 90 )

  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -25 40 -20 20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -40 75 -35 20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -40 75 -35 20 	110 -20 80 90 )

  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -60 20 30 20 	110 -20 80 90 )

  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -40 75 -35 20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -40 75 -35 20 	110 -20 80 90 )
  #(110 20 -80 -90 	0 -15 -25 40 -20 20 	0 -15 -25 40 -20 20 	110 -20 80 90 )

  #(110 20 -80 -90 	0 0 -25 40 -20 0 	0 0 -25 40 -20 0 	110 -20 80 90 )

) #( 0 800 800 800 200 800 800 800 500 )
)
)

(mc-registmotion 56 "w_inside_left" TIMED_DEG #(
#(
  #(100 20 -80 -30     0 0 -35 65 -33 0      0 0 -35 65 -33 0               100 -20 80 30 )
  #(100 20 -80 -30     0 25 -35 65 -33 -20   0 25 -35 65 -33 -20     100 -20 80 30 )
  #(100 20 -80 -30     0 25 -30 45 -10 -20     0 5 -35 65 -33 -20     100 -20 80 30 )
  #(100 20 -80 -30     0 10 -50 90 -40 -20     0 5 -35 65 -33 -20    100 -20 80 30 )
  #(100 20 -80 -30     0 50 -60 30 20 -20     0 5 -35 65 -33 -20     100 -20 80 30 )

  #(100 20 -80 -30     0 -10 -60 30 20 -20       0 5 -35 65 -33 -20   100 -20 80 30 )

  #(100 20 -80 -30    0 50 -60 30 20 -20      0 5 -35 65 -33 -20    100 -20 80 30 )
  #(100 20 -80 -30   0 10 -50 90 -40 -20     0 5 -35 65 -33 -20     100 -20 80 30 )
  #(100 20 -80 -30   0 25 -30 45 -10 -20      0 5 -35 65 -33 -20    100 -20 80 30 )
  #(100 20 -80 -30    0 25 -35 65 -33 -20     0 25 -35 65 -33 -20  100 -20 80 30 )
  #(100 20 -80 -30     0 0 -35 65 -33 0    0 0 -35 65 -33 0              100 -20 80 30 )

) #(0 800 800 800 800 160 800 800 800 800 800)
)
)

(mc-registmotion 57 "w_inside_right" TIMED_DEG #(
#(
  #(100 20 -80 -30    0 0 -35 65 -33 0          0 0 -35 65 -33 0         100 -20 80 30 )
  #(100 20 -80 -30    0 -25 -35 65 -33 20    0 -25 -35 65 -33 20   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 -25 -30 45 -10 20   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 -10 -50 90 -40 20   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 -50 -60 30 20 20    100 -20 80 30 )

  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 10 -60 30 20 20     100 -20 80 30 )

  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 -50 -60 30 20 20    100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 -10 -50 90 -40 20   100 -20 80 30 )
  #(100 20 -80 -30    0 -5 -35 65 -33 20      0 -25 -30 45 -10 20   100 -20 80 30 )
  #(100 20 -80 -30    0 -25 -35 65 -33 20    0 -25 -35 65 -33 20   100 -20 80 30 )
  #(100 20 -80 -30    0 0 -35 65 -33 0          0 0 -35 65 -33 0         100 -20 80 30 )

) #(0 800 800 800 800 160 800 800 800 800 800)
)
)

