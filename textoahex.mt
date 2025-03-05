name: Texto a Hexadecimal
init: q0
accept: q6


// a --> 61
q0, a
q18, a, >

q18, #
q18, #, >

q18, _
q20, 6, <

q20, #
q20, #, <

q20, a
q20, a, <

q20, _
q2, _, >

q2, a
q10, $, >

q10, a
q10, a, >

q10, #
q12, #, >

q12, 6
q8, 6, >

q8, a 
q8, a, >

q8, _
q5, 1, >

q5, _
q5, _, <

q5, a
q5, a, <

q5, 6
q5, 6, <

q5, 1
q5, 1, <

q5, #
q5, #, <

q5, $
q0, _, >

q0, #
q6, _, -





