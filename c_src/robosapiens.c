/**
 * Copyright (c) 2013. Darach Ennis < darach at gmail dot com >.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to permit
 * persons to whom the Software is furnished to do so, subject to the
 * following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
 * NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
 * USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

#ifndef __ROBOSAPIENS__
#define __ROBOSAPIENS__

#include <unistd.h>
#include <wiringPi.h>
#include "erl_nif.h"

#define PERIODICITY 833

// @TODO Set GPIO pins programatically
#define PIN_READ 0
#define PIN_WRITE 1

static ERL_NIF_TERM ATOM_OK;
static ERL_NIF_TERM ATOM_ERROR;


void delay(unsigned int units) {
  usleep(PERIODICITY * units);
}

static ERL_NIF_TERM
microsleep(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
  unsigned int count;

  if(!enif_get_uint(env, argv[0], &count))
      return ATOM_ERROR;

  usleep(count);
  return ATOM_OK;
}

static ERL_NIF_TERM
tell(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    // Expect 1 arg - byte for command to signal to Robosapiens
    unsigned int command;
    if (!enif_get_uint(env, argv[0], &command))
    {
        return ATOM_ERROR;
    }

    // Preamble. Set IR signal line LOW
    digitalWrite(PIN_WRITE,LOW);
    delay(8);

    // Pulse the 8 bit command. Delay 4 slices for 1-bit and 1 slice for a 0-bit.
    int b;
    for(b = 0; b < 8; b++)
    {
        digitalWrite(PIN_WRITE,HIGH);
        delay( ( (command & 128) != 0) ? 4 : 1);
        digitalWrite(PIN_WRITE,LOW);
        delay(1);
        command <<= 1;
    }

    // Finally, reset IR signal line HIGH
    digitalWrite(PIN_WRITE,HIGH);

    // Done. All good.
    return ATOM_OK;
}

static int on_load(ErlNifEnv* env, void** priv_data, ERL_NIF_TERM load_info)
{
  // Create commonly used atoms
  ATOM_OK = enif_make_atom(env, "ok");
  ATOM_ERROR = enif_make_atom(env, "error");

  // Initialize wiring Pi
  wiringPiSetup();

  // Set high priority
  piHiPri(99);

  // Set GPIO 1 to output
  pinMode(PIN_WRITE, OUTPUT);

  // Set GPIO 1 high
  digitalWrite(PIN_WRITE, HIGH);

  return 0;
}

static int on_reload(ErlNifEnv* env, void** priv_data, ERL_NIF_TERM load_info)
{
    return 0;
}

static int on_upgrade(ErlNifEnv* env, void** priv, void** old_priv, ERL_NIF_TERM load_info)
{
    return 0;
}

static void on_unload(ErlNifEnv* env, void* priv_data)
{
    return;
}

// Exports
static ErlNifFunc nif_funcs[] = {
    {"tell", 1, tell},
    {"microsleep", 1, microsleep}
};

// Register NIF with erlang
ERL_NIF_INIT(robosapiens, nif_funcs, &on_load, &on_reload, &on_upgrade, &on_unload);

#endif // __ROBOSAPIENS__
