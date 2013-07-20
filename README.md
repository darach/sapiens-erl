sapiens-erl -- Erlang Robosapiens Interface on Raspberry Pi
=====

Erlang/Sapiens is a straightforward high level abstraction of the Robosapiens family
of robotic toys leveraging wiringPi and the well known IR PCB hack to send faked IR
commands to the toy.

Currently only the Robosapiens V1 IR command codes are supported. The robosapiens:tell/1
native function requires the IR-OUT line on the head controller to be cut with the head
end wired to GPIO 0 (PIn #17) and printed circuit board end to GPIO 1 (Pin #18). A ground
connection will also need to be provided. The function essentially modulates an 8 bit signal
directly into the Robosapiens circuitry mimicking a button push on the Remote Control unit.

As the signal is normally high the signal is set high during loading of the NIF module.
When a command is issues through calling one of the built in sapiens:<command>/0 functions.

For example, calling sapiens:karate_chop/0 will result in a signal preamble and 8 data bits
to be sent to the robosapiens. The preamble is an 8 period delay. The data bits are 4 or 1
periods in length depending on whether a 1 bit or 0 bit is being encoded followed by a low
signal for another period. When signalling is complete the signal line is returned to normally
high operation. The clock rate requires a 1/1200 clock or 833 microsecond periods.

====

There are 60 commands available via zero arity functions in the sapiens module:

1.   turn_right 
2.   right_arm_up
3.   right_arm_out
4.   tilt_right
5.   right_arm_down
6.   right_arm_in
7.   walk_forward
8.   walk_backward
9.   turn_left
10.  left_arm_up
11.  left_arm_out
12.  tilt_left
13.  left_arm_down
14.  left_arm_in
15.  stop
16.  turn_right_step
17.  right_hand_thump
18.  right_hand_throw
19.  sleep
20.  right_hand_pickup
21.  lean_backward
22.  step_forward
23.  step_backward
24.  turn_left_step
25.  left_hand_thump
26.  left_hand_throw
27.  listen
28.  left_hand_pickup
29.  lean_forward
30.  reset
31.  right_hand_strike3
32.  right_hand_sweep
33.  burp
34.  right_hand_strike2
35.  high5
36.  right_hand_strike1
37.  bulldozer
38.  oops
39.  left_hand_strike3
40.  left_hand_sweep
41.  whistle
42.  left_hand_strike2
43.  talkback
44.  left_hand_strike1
45.  roar
46.  shuffle
47.  raise_throw
48.  karate_chop
49.  noop
50.  program_master_command
51.  program_play
52.  program_right_sensor
53.  program_left_sensor
54.  program_sonic_sensor
55.  exec_master_command
56.  wakeup
57.  exec_right_sensor_program
58.  exec_left_sensor_program
59.  exec_sonic_sensor_program
60.  demo_all

====

Enjoy!
