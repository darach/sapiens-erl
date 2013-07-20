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
%% File: robosapiens.hrl. Erlang/Sapiens header file
%%
%% -------------------------------------------------------------------
%% @author Darach Ennis <darach@gmail.com>
%% @copyright (C) 2013, Darach Ennis
%% @doc RoboSapiens IR sensor hack. Control a Robosapiens via faking IR R/C signals
%% @end
%% -------------------------------------------------------------------

%% ===================================================================
%%  Basic commands
%% ===================================================================
-define( RS_TURN_RIGHT , 16#80 ).
-define( RS_ARMR_UP , 16#81 ).
-define( RS_ARMR_OUT , 16#82 ).
-define( RS_TILT_RIGHT , 16#83 ).
-define( RS_ARMR_DOWN , 16#84 ).
-define( RS_ARMR_IN , 16#85 ).
-define( RS_WALK_FWD , 16#86 ).
-define( RS_WALK_BCK , 16#87 ).
-define( RS_TURN_LEFT , 16#88 ).
-define( RS_ARML_UP , 16#89 ).
-define( RS_ARML_OUT , 16#8A ).
-define( RS_TILT_LEFT , 16#8B ).
-define( RS_ARML_DOWN , 16#8C ).
-define( RS_ARML_IN , 16#8D ).
-define( RS_STOP , 16#8E ).

%% ===================================================================
%%  Green commands
%% ===================================================================
-define( RS_TURN_RIGHT_STEP , 16#A0 ).
-define( RS_HAND_RIGHT_THUMP , 16#A1 ).
-define( RS_HAND_RIGHT_THROW , 16#A2 ).
-define( RS_SLEEP , 16#A3 ).
-define( RS_HAND_RIGHT_PICKUP , 16#A4 ).
-define( RS_LEAN_BCK , 16#A5 ).
-define( RS_STEP_FWD , 16#A6 ).
-define( RS_STEP_BCK , 16#A7 ).
-define( RS_TURN_LEFT_STEP , 16#A8 ).
-define( RS_HAND_LEFT_THUMP , 16#A9 ).
-define( RS_HAND_LEFT_THROW , 16#AA ).
-define( RS_LISTEN , 16#AB ).
-define( RS_HAND_LEFT_PICKUP , 16#AC ).
-define( RS_LEAN_FWD , 16#AD ).
-define( RS_RESET , 16#AE ).

%% ===================================================================
%%  Orange commands
%% ===================================================================
-define( RS_HAND_RIGHT_STRIKE3 , 16#C0 ).
-define( RS_HAND_RIGHT_SWEEP , 16#C1 ).
-define( RS_BURP , 16#C2 ).
-define( RS_HAND_RIGHT_STRIKE2 , 16#C3 ).
-define( RS_HIGH5 , 16#C4 ).
-define( RS_HAND_RIGHT_STRIKE1 , 16#C5 ).
-define( RS_BULLDOZER , 16#C6 ).
-define( RS_OOPS , 16#C7 ).
-define( RS_LEFT_HAND_STRIKE3 , 16#c8 ).
-define( RS_LEFT_HAND_SWEEP , 16#C9 ).
-define( RS_WHISTLE , 16#CA ).
-define( RS_LEFT_HAND_STRIKE2 , 16#CB ).
-define( RS_TALKBACK , 16#CC ).
-define( RS_LEFT_HAND_STRIKE1 , 16#CD ).
-define( RS_ROAR , 16#CE ).

%% ===================================================================
%%  Other commands
%% ===================================================================
-define( RS_SHUFFLE , 16#F6 ).
-define( RS_RAISE_THROW , 16#FC ).
-define( RS_KARATE_CHOP , 16#D6 ).
-define( RS_NOP , 16#EF ).

-define( RS_PROGRAM_MASTER_COMMAND , 16#90 ).
-define( RS_PROGRAM_PLAY , 16#91 ).
-define( RS_PROGRAM_RIGHT_SENSOR, 16#92 ).
-define( RS_PROGRAM_LEFT_SENSOR, 16#93 ).
-define( RS_PROGRAM_SONIC_SENSOR, 16#94 ).
-define( RS_EXEC_MASTER_COMMAND , 16#B0 ).
-define( RS_WAKEUP , 16#B1 ).
-define( RS_EXEC_RIGHT_SENSOR_PROGRAM , 16#B2 ).
-define( RS_EXEC_LEFT_SENSOR_PROGRAM , 16#B3 ).
-define( RS_EXEC_SONIC_SENSOR_PROGRAM , 16#B4 ).
-define( RS_DEMO_ALL , 16#D0 ).
-define( RS_POWER_OFF , 16#D1 ).
-define( RS_DEMO1 , 16#D2 ).
-define( RS_DEMO2 , 16#D3 ).
-define( RS_DANCE , 16#D4 ).

%%  EOF
