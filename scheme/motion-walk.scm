
; forward by yy (based on webots walk)
(mc-registmotion 30 "forward1" COMPATIBLE #(
#(
;左足半歩前

#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 0 40 -20 -1 0 -25 0 40 -20 -1 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 1 40 -20 -1 0 -25 1 40 -20 -1 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 1 40 -20 -1 0 -25 1 40 -20 -1 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 1 40 -20 -2 0 -25 1 40 -20 -2 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 2 40 -20 -2 0 -25 2 40 -20 -2 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 2 40 -20 -3 0 -25 2 40 -20 -3 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 3 40 -20 -4 0 -25 3 40 -20 -4 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 4 40 -20 -5 0 -25 4 40 -20 -5 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 5 40 -20 -6 0 -25 5 40 -20 -6 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 6 40 -21 -7 0 -25 6 40 -21 -7 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 6 40 -21 -7 0 -25 7 40 -21 -9 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 6 40 -21 -8 0 -24 7 40 -21 -10 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 6 40 -21 -8 0 -24 8 40 -21 -10 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 7 41 -21 -8 0 -24 9 40 -21 -11 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -26 7 44 -23 -9 0 -23 9 40 -21 -11 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -29 7 50 -25 -8 0 -23 9 40 -21 -11 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -33 6 55 -27 -8 0 -23 9 40 -22 -11 80 -20 80 90)
#(0 0 81 20 -80 -90 0 -37 6 60 -28 -7 0 -23 9 40 -22 -11 79 -20 80 90)
#(0 0 82 20 -80 -90 0 -40 6 61 -26 -7 0 -22 8 40 -22 -10 78 -20 80 90)
#(0 0 83 20 -80 -90 0 -42 5 60 -23 -6 0 -22 7 40 -23 -9 77 -20 80 90)
#(0 0 85 20 -80 -90 0 -42 4 57 -20 -5 0 -21 7 39 -23 -9 75 -20 80 90)
#(0 0 86 20 -80 -90 0 -40 3 51 -16 -4 0 -20 6 39 -24 -7 74 -20 80 90)
#(0 0 88 20 -80 -90 0 -37 2 45 -13 -3 0 -19 5 38 -25 -6 72 -20 80 90)
#(0 0 89 20 -80 -90 0 -34 1 40 -11 -1 0 -17 3 38 -25 -4 70 -20 80 90)
;右足一歩前

#(0 0 91 20 -80 -90 0 -32 -1 38 -12 1 0 -15 1 37 -26 -2 69 -20 80 90)
#(0 0 91 20 -80 -90 0 -32 -2 38 -12 1 0 -15 1 37 -26 0 69 -20 80 90)
#(0 0 93 20 -80 -90 0 -30 -3 39 -14 3 0 -13 -1 36 -27 1 67 -20 80 90)
#(0 0 95 20 -80 -90 0 -29 -5 40 -15 5 0 -11 -2 34 -28 2 65 -20 80 90)
#(0 0 96 20 -80 -90 0 -28 -6 40 -16 7 0 -10 -3 33 -28 4 64 -20 80 90)
#(0 0 97 20 -80 -90 0 -28 -6 40 -17 8 0 -9 -4 32 -28 5 62 -20 80 90)
#(0 0 99 20 -80 -90 0 -27 -7 40 -18 9 0 -7 -5 30 -28 6 61 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -5 29 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -6 31 -30 7 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -25 -9 40 -20 10 0 -10 -6 37 -33 7 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -25 -9 40 -21 10 0 -15 -6 46 -36 7 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -24 -8 40 -21 10 0 -22 -6 54 -37 7 61 -20 80 90)
#(0 0 97 20 -80 -90 0 -23 -8 40 -21 10 0 -29 -6 60 -36 7 63 -20 80 90)
#(0 0 95 20 -80 -90 0 -23 -7 40 -22 9 0 -34 -5 62 -33 6 65 -20 80 90)
#(0 0 92 20 -80 -90 0 -22 -7 40 -22 9 0 -38 -5 60 -27 6 68 -20 80 90)
#(0 0 89 20 -80 -90 0 -21 -6 39 -23 7 0 -40 -3 56 -21 5 71 -20 80 90)
#(0 0 86 20 -80 -90 0 -20 -5 39 -24 6 0 -38 -3 49 -15 3 74 -20 80 90)
#(0 0 83 20 -80 -90 0 -18 -4 38 -25 5 0 -35 -1 42 -12 2 77 -20 80 90)
#(0 0 79 20 -80 -90 0 -17 -2 37 -26 3 0 -33 0 38 -11 0 81 -20 80 90)
#(0 0 76 20 -80 -90 0 -15 -1 36 -26 1 0 -31 2 38 -13 -2 84 -20 80 90)
;左足一歩前

#(0 0 72 20 -80 -90 0 -13 1 35 -28 -2 0 -30 3 39 -14 -5 88 -20 80 90)
#(0 0 69 20 -80 -90 0 -11 3 34 -28 -3 0 -29 5 40 -15 -6 91 -20 80 90)
#(0 0 66 20 -80 -90 0 -9 3 32 -28 -5 0 -28 6 40 -17 -7 93 -20 80 90)
#(0 0 64 20 -80 -90 0 -8 5 31 -28 -6 0 -27 7 40 -17 -9 96 -20 80 90)
#(0 0 62 20 -80 -90 0 -7 5 30 -28 -6 0 -26 7 40 -18 -10 98 -20 80 90)
#(0 0 61 20 -80 -90 0 -6 6 30 -29 -7 0 -26 8 40 -19 -10 99 -20 80 90)
#(0 0 61 20 -80 -90 0 -7 6 34 -31 -7 0 -25 9 40 -19 -10 100 -20 80 90)
#(0 0 62 20 -80 -90 0 -12 6 41 -34 -7 0 -25 9 40 -20 -10 100 -20 80 90)
#(0 0 61 20 -80 -90 0 -18 6 50 -37 -7 0 -24 9 40 -21 -10 99 -20 80 90)
#(0 0 62 20 -80 -90 0 -25 6 57 -37 -7 0 -23 8 40 -21 -10 98 -20 80 90)
#(0 0 64 20 -80 -90 0 -32 5 61 -35 -7 0 -23 8 40 -22 -10 96 -20 80 90)
#(0 0 66 20 -80 -90 0 -37 5 62 -30 -6 0 -22 7 40 -22 -9 93 -20 80 90)
#(0 0 69 20 -80 -90 0 -39 4 58 -24 -5 0 -21 6 40 -23 -8 91 -20 80 90)
#(0 0 72 20 -80 -90 0 -39 3 52 -18 -4 0 -21 6 39 -23 -7 88 -20 80 90)
#(0 0 76 20 -80 -90 0 -37 2 45 -14 -2 0 -19 5 38 -25 -6 84 -20 80 90)
#(0 0 79 20 -80 -90 0 -34 1 40 -11 -1 0 -18 3 38 -25 -4 81 -20 80 90)
;右足一歩前

#(0 0 83 20 -80 -90 0 -32 -1 38 -11 1 0 -16 1 37 -26 -2 77 -20 80 90)
#(0 0 86 20 -80 -90 0 -30 -3 39 -13 3 0 -14 -1 36 -27 1 74 -20 80 90)
#(0 0 89 20 -80 -90 0 -29 -5 40 -15 6 0 -11 -2 34 -28 2 71 -20 80 90)
#(0 0 92 20 -80 -90 0 -29 -6 40 -16 7 0 -10 -3 33 -28 4 68 -20 80 90)
#(0 0 95 20 -80 -90 0 -28 -6 40 -17 8 0 -9 -4 32 -28 5 65 -20 80 90)
#(0 0 97 20 -80 -90 0 -27 -7 40 -18 9 0 -7 -5 30 -28 6 63 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -8 40 -18 10 0 -6 -5 29 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -6 31 -30 7 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -25 -9 40 -20 10 0 -10 -6 37 -33 7 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -25 -9 40 -20 10 0 -15 -6 46 -36 7 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -24 -8 40 -21 10 0 -22 -6 54 -37 7 61 -20 80 90)
#(0 0 97 20 -80 -90 0 -23 -8 40 -21 10 0 -29 -6 60 -36 7 63 -20 80 90)
#(0 0 95 20 -80 -90 0 -23 -7 40 -22 9 0 -34 -5 62 -33 6 65 -20 80 90)
#(0 0 92 20 -80 -90 0 -22 -7 40 -22 9 0 -38 -5 60 -27 6 68 -20 80 90)
#(0 0 89 20 -80 -90 0 -21 -6 40 -23 7 0 -40 -3 56 -21 5 71 -20 80 90)
#(0 0 86 20 -80 -90 0 -20 -5 39 -24 6 0 -38 -3 49 -15 3 74 -20 80 90)
#(0 0 83 20 -80 -90 0 -18 -4 38 -25 5 0 -35 -1 42 -12 2 77 -20 80 90)
#(0 0 79 20 -80 -90 0 -17 -2 37 -26 3 0 -33 0 38 -11 0 81 -20 80 90)
#(0 0 76 20 -80 -90 0 -15 -1 36 -26 1 0 -31 2 38 -13 -2 84 -20 80 90)
;左足一歩前

#(0 0 72 20 -80 -90 0 -13 1 35 -28 -2 0 -30 3 39 -14 -5 88 -20 80 90)
#(0 0 69 20 -80 -90 0 -11 3 34 -28 -3 0 -29 5 40 -15 -6 91 -20 80 90)
#(0 0 66 20 -80 -90 0 -9 3 32 -28 -5 0 -28 6 40 -17 -7 93 -20 80 90)
#(0 0 64 20 -80 -90 0 -8 5 31 -28 -6 0 -27 7 40 -17 -9 96 -20 80 90)
#(0 0 62 20 -80 -90 0 -7 5 30 -28 -6 0 -26 7 40 -18 -10 98 -20 80 90)
#(0 0 61 20 -80 -90 0 -6 6 30 -29 -7 0 -26 8 40 -19 -10 99 -20 80 90)
#(0 0 61 20 -80 -90 0 -7 6 34 -31 -7 0 -25 9 40 -19 -10 100 -20 80 90)
#(0 0 62 20 -80 -90 0 -12 6 41 -34 -7 0 -25 9 40 -20 -10 100 -20 80 90)
#(0 0 61 20 -80 -90 0 -18 6 50 -37 -7 0 -24 9 40 -21 -10 99 -20 80 90)
#(0 0 62 20 -80 -90 0 -25 6 57 -37 -7 0 -23 8 40 -21 -10 98 -20 80 90)
#(0 0 64 20 -80 -90 0 -32 5 61 -35 -7 0 -23 8 40 -22 -10 96 -20 80 90)
#(0 0 66 20 -80 -90 0 -37 5 62 -30 -6 0 -22 7 40 -22 -9 93 -20 80 90)
#(0 0 69 20 -80 -90 0 -40 4 58 -24 -5 0 -22 6 40 -23 -8 91 -20 80 90)
#(0 0 72 20 -80 -90 0 -39 3 52 -18 -4 0 -21 6 39 -23 -7 88 -20 80 90)
#(0 0 76 20 -80 -90 0 -37 2 45 -13 -2 0 -19 4 39 -24 -5 84 -20 80 90)
#(0 0 79 20 -80 -90 0 -34 1 40 -11 -1 0 -18 3 38 -25 -3 81 -20 80 90)
;右足半歩前

#(0 0 83 20 -80 -90 0 -32 -1 38 -11 2 0 -16 1 37 -26 -2 77 -20 80 90)
#(0 0 86 20 -80 -90 0 -30 -3 38 -13 4 0 -14 -1 36 -27 1 74 -20 80 90)
#(0 0 89 20 -80 -90 0 -30 -5 39 -14 6 0 -13 -2 35 -28 3 71 -20 80 90)
#(0 0 92 20 -80 -90 0 -29 -6 40 -15 7 0 -11 -3 34 -28 5 68 -20 80 90)
#(0 0 95 20 -80 -90 0 -28 -7 40 -16 9 0 -10 -5 33 -28 6 65 -20 80 90)
#(0 0 97 20 -80 -90 0 -28 -7 40 -17 10 0 -9 -5 32 -28 7 63 -20 80 90)
#(0 0 99 20 -80 -90 0 -27 -9 40 -18 10 0 -7 -6 31 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -27 -9 40 -18 11 0 -8 -6 33 -30 8 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -9 40 -18 11 0 -11 -7 38 -33 9 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -9 40 -19 11 0 -15 -7 46 -36 9 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -9 40 -19 11 0 -20 -7 53 -38 9 61 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -9 40 -19 11 0 -25 -7 58 -39 9 61 -20 80 90)
#(0 0 97 20 -80 -90 0 -26 -9 40 -19 11 0 -28 -7 61 -37 9 62 -20 80 90)
#(0 0 96 20 -80 -90 0 -25 -9 40 -19 11 0 -30 -7 60 -34 8 64 -20 80 90)
#(0 0 95 20 -80 -90 0 -25 -9 40 -19 11 0 -31 -6 57 -31 8 65 -20 80 90)
#(0 0 93 20 -80 -90 0 -25 -8 40 -19 10 0 -30 -6 52 -27 7 67 -20 80 90)
#(0 0 91 20 -80 -90 0 -25 -7 40 -19 9 0 -28 -5 46 -23 7 69 -20 80 90)
#(0 0 89 20 -80 -90 0 -25 -6 40 -19 8 0 -26 -5 42 -21 6 70 -20 80 90)
#(0 0 88 20 -80 -90 0 -25 -6 40 -19 7 0 -26 -4 41 -21 5 72 -20 80 90)
#(0 0 87 20 -80 -90 0 -25 -5 40 -20 6 0 -26 -3 41 -21 5 73 -20 80 90)
#(0 0 85 20 -80 -90 0 -25 -5 40 -20 5 0 -26 -3 41 -21 3 74 -20 80 90)
#(0 0 84 20 -80 -90 0 -25 -3 40 -20 5 0 -26 -2 41 -21 3 76 -20 80 90)
#(0 0 83 20 -80 -90 0 -25 -3 40 -20 4 0 -26 -2 41 -21 2 77 -20 80 90)
#(0 0 81 20 -80 -90 0 -25 -3 40 -20 3 0 -26 -2 41 -21 2 78 -20 80 90)
#(0 0 81 20 -80 -90 0 -25 -2 40 -20 3 0 -25 -1 41 -21 2 79 -20 80 90)
#(0 0 69 20 -80 -90 0 -25 -2 40 -20 2 0 -25 -1 41 -20 1 80 -20 80 90)
#(0 0 70 20 -80 -90 0 -25 -2 40 -20 2 0 -25 -1 41 -20 1 80 -20 80 90)
#(0 0 72 20 -80 -90 0 -25 -1 40 -20 2 0 -25 -1 41 -20 1 80 -20 80 90)
#(0 0 72 20 -80 -90 0 -25 -1 40 -20 2 0 -25 -1 41 -20 1 80 -20 80 90)
#(0 0 73 20 -80 -90 0 -25 -1 40 -20 1 0 -25 -1 40 -20 1 80 -20 80 90)
#(0 0 77 20 -80 -90 0 -25 -1 40 -20 1 0 -25 0 40 -20 1 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
)

#(3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 4 3)
)
)

; forward2 by yy (based on webots walk)
(mc-registmotion 31 "yyforward2" COMPATIBLE #(
#(
; #左足半歩前.1 14 2 1 4 1 4 
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 6 40 -21 -8 0 -24 7 40 -21 -10 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 7 41 -21 -8 0 -24 9 40 -21 -11 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -26 7 44 -23 -9 0 -23 9 40 -21 -11 80 -20 80 90)
#(0 0 82 20 -80 -90 0 -40 6 61 -26 -7 0 -22 8 40 -22 -10 78 -20 80 90)
#(0 0 83 20 -80 -90 0 -42 5 60 -23 -6 0 -22 7 40 -23 -9 77 -20 80 90)
#(0 0 89 20 -80 -90 0 -34 1 40 -11 -1 0 -17 3 38 -25 -4 70 -20 80 90)
; #右足一歩前.  8 1 3 2 2 3 1
#(0 0 99 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -5 29 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -6 31 -30 7 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -24 -8 40 -21 10 0 -22 -6 54 -37 7 61 -20 80 90)
#(0 0 95 20 -80 -90 0 -23 -7 40 -22 9 0 -34 -5 62 -33 6 65 -20 80 90)
#(0 0 89 20 -80 -90 0 -21 -6 39 -23 7 0 -40 -3 56 -21 5 71 -20 80 90)
#(0 0 79 20 -80 -90 0 -17 -2 37 -26 3 0 -33 0 38 -11 0 81 -20 80 90)
#(0 0 76 20 -80 -90 0 -15 -1 36 -26 1 0 -31 2 38 -13 -2 84 -20 80 90)
; #左足一歩前. 2 3 1 1 1 1 3 1 3
#(0 0 69 20 -80 -90 0 -11 3 34 -28 -3 0 -29 5 40 -15 -6 91 -20 80 90)
#(0 0 62 20 -80 -90 0 -7 5 30 -28 -6 0 -26 7 40 -18 -10 98 -20 80 90)
#(0 0 61 20 -80 -90 0 -6 6 30 -29 -7 0 -26 8 40 -19 -10 99 -20 80 90)
#(0 0 61 20 -80 -90 0 -7 6 34 -31 -7 0 -25 9 40 -19 -10 100 -20 80 90)
#(0 0 62 20 -80 -90 0 -12 6 41 -34 -7 0 -25 9 40 -20 -10 100 -20 80 90)
#(0 0 61 20 -80 -90 0 -18 6 50 -37 -7 0 -24 9 40 -21 -10 99 -20 80 90)
#(0 0 66 20 -80 -90 0 -37 5 62 -30 -6 0 -22 7 40 -22 -9 93 -20 80 90)
#(0 0 69 20 -80 -90 0 -39 4 58 -24 -5 0 -21 6 40 -23 -8 91 -20 80 90)
#(0 0 79 20 -80 -90 0 -34 1 40 -11 -1 0 -18 3 38 -25 -4 81 -20 80 90)
; #右足一歩前. 1 6 1 1 2 2 2 3 
#(0 0 83 20 -80 -90 0 -32 -1 38 -11 1 0 -16 1 37 -26 -2 77 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -8 40 -18 10 0 -6 -5 29 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -6 31 -30 7 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -25 -9 40 -20 10 0 -10 -6 37 -33 7 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -24 -8 40 -21 10 0 -22 -6 54 -37 7 61 -20 80 90)
#(0 0 95 20 -80 -90 0 -23 -7 40 -22 9 0 -34 -5 62 -33 6 65 -20 80 90)
#(0 0 89 20 -80 -90 0 -21 -6 40 -23 7 0 -40 -3 56 -21 5 71 -20 80 90)
#(0 0 79 20 -80 -90 0 -17 -2 37 -26 3 0 -33 0 38 -11 0 81 -20 80 90)
; #左足一歩前. 3 3 1 1 1 1 3 1 3 
#(0 0 69 20 -80 -90 0 -11 3 34 -28 -3 0 -29 5 40 -15 -6 91 -20 80 90)
#(0 0 62 20 -80 -90 0 -7 5 30 -28 -6 0 -26 7 40 -18 -10 98 -20 80 90)
#(0 0 61 20 -80 -90 0 -6 6 30 -29 -7 0 -26 8 40 -19 -10 99 -20 80 90)
#(0 0 61 20 -80 -90 0 -7 6 34 -31 -7 0 -25 9 40 -19 -10 100 -20 80 90)
#(0 0 62 20 -80 -90 0 -12 6 41 -34 -7 0 -25 9 40 -20 -10 100 -20 80 90)
#(0 0 61 20 -80 -90 0 -18 6 50 -37 -7 0 -24 9 40 -21 -10 99 -20 80 90)
#(0 0 66 20 -80 -90 0 -37 5 62 -30 -6 0 -22 7 40 -22 -9 93 -20 80 90)
#(0 0 69 20 -80 -90 0 -40 4 58 -24 -5 0 -22 6 40 -23 -8 91 -20 80 90)
#(0 0 79 20 -80 -90 0 -34 1 40 -11 -1 0 -18 3 38 -25 -3 81 -20 80 90)
; #右足半歩前.  7 1 1 3 1 2 22
#(0 0 99 20 -80 -90 0 -27 -9 40 -18 10 0 -7 -6 31 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -27 -9 40 -18 11 0 -8 -6 33 -30 8 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -9 40 -18 11 0 -11 -7 38 -33 9 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -9 40 -19 11 0 -25 -7 58 -39 9 61 -20 80 90)
#(0 0 97 20 -80 -90 0 -26 -9 40 -19 11 0 -28 -7 61 -37 9 62 -20 80 90)
#(0 0 95 20 -80 -90 0 -25 -9 40 -19 11 0 -31 -6 57 -31 8 65 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
) #(1 14 2 1 4 1 4 8 1 3 2 2 3 1 2 3 1 1 1 1 3 1 3 1 6 1 1 2 2 2 3 3 3 1 1 1 1 3 1 3 7 1 1 3 1 2 22)
)
)

; forward3 by yy (based on webots walk)
(mc-registmotion 32 "yyforward3" COMPATIBLE #(
#(
; #左足半歩前.1 14 2 1 4 1 4. 
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 6 40 -21 -8 0 -24 7 40 -21 -10 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 7 41 -21 -8 0 -24 9 40 -21 -11 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -26 7 44 -23 -9 0 -23 9 40 -21 -11 80 -20 80 90)
#(0 0 82 20 -80 -90 0 -40 6 61 -26 -7 0 -22 8 40 -22 -10 78 -20 80 90)
#(0 0 83 20 -80 -90 0 -42 5 60 -23 -6 0 -22 7 40 -23 -9 77 -20 80 90)
#(0 0 83 20 -80 -90 0 -32 -1 38 -11 1 0 -16 1 37 -26 -2 77 -20 80 90)
; #右足一歩前.  9 1 3 2 2 3 1
#(0 0 99 20 -80 -90 0 -26 -9 40 -18 10 0 -7 -6 31 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -8 40 -19 10 0 -6 -6 31 -30 7 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -24 -8 40 -21 10 0 -22 -6 54 -37 7 61 -20 80 90)
#(0 0 95 20 -80 -90 0 -23 -7 40 -22 9 0 -34 -5 62 -33 6 65 -20 80 90)
#(0 0 89 20 -80 -90 0 -21 -6 39 -23 7 0 -40 -3 56 -21 5 71 -20 80 90)
#(0 0 79 20 -80 -90 0 -17 -2 37 -26 3 0 -33 0 38 -11 0 81 -20 80 90)
#(0 0 76 20 -80 -90 0 -15 -1 36 -26 1 0 -31 2 38 -13 -2 84 -20 80 90)
; #左足一歩前. 3 3 1 1 1 1 3 2 3 1.
#(0 0 69 20 -80 -90 0 -11 3 34 -28 -3 0 -29 5 40 -15 -6 91 -20 80 90)
#(0 0 62 20 -80 -90 0 -7 5 30 -28 -6 0 -26 7 40 -18 -10 98 -20 80 90)
#(0 0 61 20 -80 -90 0 -6 6 30 -29 -7 0 -26 8 40 -19 -10 99 -20 80 90)
#(0 0 61 20 -80 -90 0 -7 6 34 -31 -7 0 -25 9 40 -19 -10 100 -20 80 90)
#(0 0 62 20 -80 -90 0 -12 6 41 -34 -7 0 -25 9 40 -20 -10 100 -20 80 90)
#(0 0 61 20 -80 -90 0 -18 6 50 -37 -7 0 -24 9 40 -21 -10 99 -20 80 90)
#(0 0 66 20 -80 -90 0 -37 5 62 -30 -6 0 -22 7 40 -22 -9 93 -20 80 90)
#(0 0 69 20 -80 -90 0 -39 4 58 -24 -5 0 -21 6 40 -23 -8 91 -20 80 90)
#(0 0 79 20 -80 -90 0 -34 1 40 -11 -1 0 -18 3 38 -25 -4 81 -20 80 90)
#(0 0 83 20 -80 -90 0 -32 -1 38 -11 1 0 -16 1 37 -26 -2 77 -20 80 90)
; #右足半歩前.  9 1 1 3 1 2 22.
#(0 0 99 20 -80 -90 0 -27 -9 40 -18 10 0 -7 -6 31 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -27 -9 40 -18 11 0 -8 -6 33 -30 8 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -9 40 -18 11 0 -11 -7 38 -33 9 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -9 40 -19 11 0 -25 -7 58 -39 9 61 -20 80 90)
#(0 0 97 20 -80 -90 0 -26 -9 40 -19 11 0 -28 -7 61 -37 9 62 -20 80 90)
#(0 0 95 20 -80 -90 0 -25 -9 40 -19 11 0 -31 -6 57 -31 8 65 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
) #(1  14 2 1 4 1 4      9 1 3 2    2   3  1     3   3   1   1  1   1   3  1   3 1     9   1  1   3   1   2 22)
;     0  1   2 3 4 5 6  |  7 8 9 10 11 12 13 | 14 15 16 17 18 19 20 21 22 23 | 24 25 26 27 28 29 30
)
)

(mc-registmotion 33 "onestep" COMPATIBLE #(
#(
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 6 40 -21 -8 0 -24 7 40 -21 -10 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -24 7 41 -21 -8 0 -24 9 40 -21 -11 80 -20 80 90)
#(0 0 80 20 -80 -90 0 -26 7 44 -23 -9 0 -23 9 40 -21 -11 80 -20 80 90)
#(0 0 82 20 -80 -90 0 -40 6 61 -26 -7 0 -22 8 40 -22 -10 78 -20 80 90)
#(0 0 83 20 -80 -90 0 -42 5 60 -23 -6 0 -22 7 40 -23 -9 77 -20 80 90)
#(0 0 83 20 -80 -90 0 -32 -1 38 -11 1 0 -16 1 37 -26 -2 77 -20 80 90)
#(0 0 99 20 -80 -90 0 -27 -9 40 -18 10 0 -7 -6 31 -28 7 61 -20 80 90)
#(0 0 100 20 -80 -90 0 -27 -9 40 -18 11 0 -8 -6 33 -30 8 60 -20 80 90)
#(0 0 100 20 -80 -90 0 -26 -9 40 -18 11 0 -11 -7 38 -33 9 60 -20 80 90)
#(0 0 99 20 -80 -90 0 -26 -9 40 -19 11 0 -25 -7 58 -39 9 61 -20 80 90)
#(0 0 97 20 -80 -90 0 -26 -9 40 -19 11 0 -28 -7 61 -37 9 62 -20 80 90)
#(0 0 95 20 -80 -90 0 -25 -9 40 -19 11 0 -31 -6 57 -31 8 65 -20 80 90)
#(0 0 80 20 -80 -90 0 -25 0 40 -20 0 0 -25 0 40 -20 0 80 -20 80 90)
) #(1  14 2 1 4 1 4  9   1  1   3   1   2 22)
)
)
