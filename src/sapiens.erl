%% -------------------------------------------------------------------
%% Copyright (c) 2013 Darach Ennis < darach at gmail dot com >
%%
%% Permission is hereby granted, free of charge, to any person obtaining a
%% copy of this software and associated documentation files (the
%% "Software"), to deal in the Software without restriction, including
%% without limitation the rights to use, copy, modify, merge, publish,
%% distribute, sublicense, and/or sell copies of the Software, and to permit
%% persons to whom the Software is furnished to do so, subject to the
%% following conditions:
%%
%% The above copyright notice and this permission notice shall be included
%% in all copies or substantial portions of the Software.
%%
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
%% OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
%% MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
%% NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
%% DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
%% OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
%% USE OR OTHER DEALINGS IN THE SOFTWARE.
%%
%% File: sapiens.erl. RoboSapiens v1 IR command codes
%%
%% --------------------------------------------------------------------

-module(sapiens).

-include_lib("robosapiens.hrl").

-export([turn_right/0]).
-export([right_arm_up/0]).
-export([right_arm_out/0]).
-export([tilt_right/0]).
-export([right_arm_down/0]).
-export([right_arm_in/0]).
-export([walk_forward/0]).
-export([walk_backward/0]).
-export([turn_left/0]).
-export([left_arm_up/0]).
-export([left_arm_out/0]).
-export([tilt_left/0]).
-export([left_arm_down/0]).
-export([left_arm_in/0]).
-export([stop/0]).

-export([turn_right_step/0]).
-export([right_hand_thump/0]).
-export([right_hand_throw/0]).
-export([sleep/0]).
-export([right_hand_pickup/0]).
-export([lean_backward/0]).
-export([step_forward/0]).
-export([step_backward/0]).
-export([turn_left_step/0]).
-export([left_hand_thump/0]).
-export([left_hand_throw/0]).
-export([listen/0]).
-export([left_hand_pickup/0]).
-export([lean_forward/0]).
-export([reset/0]).

-export([right_hand_strike3/0]).
-export([right_hand_sweep/0]).
-export([burp/0]).
-export([right_hand_strike2/0]).
-export([high5/0]).
-export([right_hand_strike1/0]).
-export([bulldozer/0]).
-export([oops/0]).
-export([left_hand_strike3/0]).
-export([left_hand_sweep/0]).
-export([whistle/0]).
-export([left_hand_strike2/0]).
-export([talkback/0]).
-export([left_hand_strike1/0]).
-export([roar/0]).

-export([shuffle/0]).
-export([raise_throw/0]).
-export([karate_chop/0]).
-export([noop/0]).

-export([program_master_command/0]).
-export([program_play/0]).
-export([program_right_sensor/0]).
-export([program_left_sensor/0]).
-export([program_sonic_sensor/0]).
-export([exec_master_command/0]).
-export([wakeup/0]).
-export([exec_right_sensor_program/0]).
-export([exec_left_sensor_program/0]).
-export([exec_sonic_sensor_program/0]).
-export([demo_all/0]).
-export([power_off/0]).
-export([demo1/0]).
-export([demo2/0]).
-export([dance/0]).

-spec turn_right() -> ok | error.
turn_right() -> robosapiens:tell(?RS_TURN_RIGHT).

-spec right_arm_up() -> ok | error.
right_arm_up() -> robosapiens:tell(?RS_ARMR_UP).

-spec right_arm_out() -> ok | error.
right_arm_out() -> robosapiens:tell(?RS_ARMR_OUT).

-spec tilt_right() -> ok | error.
tilt_right() -> robosapiens:tell(?RS_TILT_RIGHT).

-spec right_arm_down() -> ok | error.
right_arm_down()  -> robosapiens:tell(?RS_ARMR_DOWN).

-spec right_arm_in() -> ok | error.
right_arm_in() -> robosapiens:tell(?RS_ARMR_IN).

-spec walk_forward() -> ok | error.
walk_forward() -> robosapiens:tell(?RS_WALK_FWD).

-spec walk_backward() -> ok | error.
walk_backward() -> robosapiens:tell(?RS_WALK_BCK).

-spec turn_left() -> ok | error.
turn_left() -> robosapiens:tell(?RS_TURN_LEFT).

-spec left_arm_up() -> ok | error.
left_arm_up() -> robosapiens:tell(?RS_ARML_UP).

-spec left_arm_out() -> ok | error.
left_arm_out() -> robosapiens:tell(?RS_ARML_OUT).

-spec tilt_left() -> ok | error.
tilt_left() -> robosapiens:tell(?RS_TILT_LEFT).

-spec left_arm_down() -> ok | error.
left_arm_down() -> robosapiens:tell(?RS_ARML_DOWN).

-spec left_arm_in() -> ok | error.
left_arm_in() -> robosapiens:tell(?RS_ARML_IN).

-spec stop() -> ok | error.
stop() -> robosapiens:tell(?RS_STOP).

-spec turn_right_step() -> ok | error.
turn_right_step() -> robosapiens:tell(?RS_TURN_RIGHT_STEP).

-spec right_hand_thump() -> ok | error.
right_hand_thump() -> robosapiens:tell(?RS_HAND_RIGHT_THUMP).

-spec right_hand_throw() -> ok | error.
right_hand_throw() -> robosapiens:tell(?RS_HAND_RIGHT_THROW).

-spec sleep() -> ok | error.
sleep() -> robosapiens:tell(?RS_SLEEP).

-spec right_hand_pickup() -> ok | error.
right_hand_pickup() -> robosapiens:tell(?RS_HAND_RIGHT_PICKUP).

-spec lean_backward() -> ok | error.
lean_backward() -> robosapiens:tell(?RS_LEAN_BCK).

-spec step_forward() -> ok | error.
step_forward() -> robosapiens:tell(?RS_STEP_FWD).

-spec step_backward() -> ok | error.
step_backward() -> robosapiens:tell(?RS_STEP_BCK).

-spec turn_left_step() -> ok | error.
turn_left_step() -> robosapiens:tell(?RS_TURN_LEFT_STEP).

-spec left_hand_thump() -> ok | error.
left_hand_thump() -> robosapiens:tell(?RS_HAND_LEFT_THUMP).

-spec left_hand_throw() -> ok | error.
left_hand_throw() -> robosapiens:tell(?RS_HAND_LEFT_THROW).

-spec listen() -> ok | error.
listen() -> robosapiens:tell(?RS_LISTEN).

-spec left_hand_pickup() -> ok | error.
left_hand_pickup() -> robosapiens:tell(?RS_HAND_LEFT_PICKUP).

-spec lean_forward() -> ok | error.
lean_forward() -> robosapiens:tell(?RS_LEAN_FWD).

-spec reset() -> ok | error.
reset() -> robosapiens:tell(?RS_RESET).

-spec right_hand_strike3() -> ok | error.
right_hand_strike3() -> robosapiens:tell(?RS_HAND_RIGHT_STRIKE3).

-spec right_hand_sweep() -> ok | error.
right_hand_sweep() -> robosapiens:tell(?RS_HAND_RIGHT_SWEEP).

-spec burp() -> ok | error.
burp() -> robosapiens:tell(?RS_BURP).

-spec right_hand_strike2() -> ok | error.
right_hand_strike2() -> robosapiens:tell(?RS_HAND_RIGHT_STRIKE2).

-spec high5() -> ok | error.
high5() -> robosapiens:tell(?RS_HIGH5).

-spec right_hand_strike1() -> ok | error.
right_hand_strike1() -> robosapiens:tell(?RS_HAND_RIGHT_STRIKE1).

-spec bulldozer() -> ok | error.
bulldozer() -> robosapiens:tell(?RS_BULLDOZER).

-spec oops() -> ok | error.
oops() -> robosapiens:tell(?RS_OOPS).

-spec left_hand_strike3() -> ok | error.
left_hand_strike3() -> robosapiens:tell(?RS_LEFT_HAND_STRIKE3).

-spec left_hand_sweep() -> ok | error.
left_hand_sweep() -> robosapiens:tell(?RS_LEFT_HAND_SWEEP).

-spec whistle() -> ok | error.
whistle() -> robosapiens:tell(?RS_WHISTLE).

-spec left_hand_strike2() -> ok | error.
left_hand_strike2() -> robosapiens:tell(?RS_LEFT_HAND_STRIKE2).

-spec talkback() -> ok | error.
talkback() -> robosapiens:tell(?RS_TALKBACK).

-spec left_hand_strike1() -> ok | error.
left_hand_strike1() -> robosapiens:tell(?RS_LEFT_HAND_STRIKE1).

-spec roar() -> ok | error.
roar() -> robosapiens:tell(?RS_ROAR).

-spec shuffle() -> ok | error.
shuffle() -> robosapiens:tell(?RS_SHUFFLE).

-spec raise_throw() -> ok | error.
raise_throw() -> robosapiens:tell(?RS_RAISE_THROW).

-spec karate_chop() -> ok | error.
karate_chop() -> robosapiens:tell(?RS_KARATE_CHOP).

-spec noop() -> ok | error.
noop() -> robosapiens:tell(?RS_NOP).

-spec program_master_command() -> ok | error.
program_master_command() -> robosapiens:tell(?RS_PROGRAM_MASTER_COMMAND).

-spec program_play() -> ok | error.
program_play() -> robosapiens:tell(?RS_PROGRAM_PLAY).

-spec program_right_sensor() -> ok | error.
program_right_sensor() -> robospiens:tell(?RS_PROGRAM_RIGHT_SENSOR).

-spec program_left_sensor() -> ok | error.
program_left_sensor() -> robosapiens:tell(?RS_PROGRAM_LEFT_SENSOR).

-spec program_sonic_sensor() -> ok | error.
program_sonic_sensor() -> robosapiens:tell(?RS_PROGRAM_SONIC_SENSOR).

-spec exec_master_command() -> ok | error.
exec_master_command() -> robosapiens:tell(?RS_EXEC_MASTER_COMMAND).

-spec wakeup() -> ok | error.
wakeup() -> robosapiens:tell(?RS_WAKEUP).

-spec exec_right_sensor_program() -> ok | error.
exec_right_sensor_program() -> robospiens:tell(?RS_EXEC_RIGHT_SENSOR_PROGRAM).

-spec exec_left_sensor_program() -> ok | error.
exec_left_sensor_program() -> robosapiens:tell(?RS_EXEC_LEFT_SENSOR_PROGRAM).

-spec exec_sonic_sensor_program() -> ok | error.
exec_sonic_sensor_program() -> robosapiens:tell(?RS_EXEC_SONIC_SENSOR_PROGRAM).

-spec demo_all() -> ok | error.
demo_all() -> robosapiens:tell(?RS_DEMO_ALL).

-spec power_off() -> ok | error.
power_off() -> robosapiens:tell(?RS_POWER_OFF).

-spec demo1() -> ok | error.
demo1() -> robosapiens:tell(?RS_DEMO1).

-spec demo2() -> ok | error.
demo2() -> robosapiens:tell(?RS_DEMO2).

-spec dance() -> ok | error.
dance() -> robosapiens:tell(?RS_DANCE).
