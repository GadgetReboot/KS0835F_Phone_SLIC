// KS0835F phone line interface SLIC and MT8870 DTMF Decoder Demo
// Target Hardware:  Uno, SLIC breakout board, DTMF Decoder board
// https://github.com/GadgetReboot/DTMF_Decoder
// https://github.com/GadgetReboot/KS0835F_Phone_SLIC
//
// MT8870 Pin         Uno Pin
//   Q1                  2
//   Q2                  3
//   Q3                  4
//   Q4                  5
//   StD                 6
//
// KS0835F pin        Uno Pin
//   F_R                 7
//   RM                  8
//   SHK                 9
//
//  Ring push button     10
//
// When the ring button is pressed, if the phone is on-hook (required for ringing a phone),
// a 20 Hz ring signal is generated.
//
// When the phone is taken off-hook, any DTMF signals are decoded and printed on the serial monitor.
//
// Tested with Arduino IDE 1.8.13
// Gadget Reboot
// https://www.youtube.com/gadgetreboot

// input pins from MT8870
const byte Q1 = 2;    // dtmf data bits to decode
const byte Q2 = 3;
const byte Q3 = 4;
const byte Q4 = 5;
const byte StD = 6;   // delayed steering = high when valid Q1..Q4 data present

// pins for KS0835F module interface
const byte F_R = 7;   // forward/reverse is toggled to produce ringing output, set low for other modes
const byte  RM = 8;   // set high while generating a ring output, low for other modes
const byte SHK = 9;   // switch hook input is high to indicate an off-hook condition, low for on-hook

const byte ringButton = 10;  // button to generate a ring signal on the phone line

byte hookStatus = 1;  // track whether phone is on or off hook (0=off-hook 1=on-hook)

void setup() {
  Serial.begin(9600);

  // configure MT8870 pins
  pinMode(Q1, INPUT);
  pinMode(Q2, INPUT);
  pinMode(Q3, INPUT);
  pinMode(Q4, INPUT);
  pinMode(StD, INPUT);

  // configure KS0835F pins
  pinMode(F_R, OUTPUT);
  pinMode(RM, OUTPUT);
  pinMode(SHK, INPUT);

  pinMode(ringButton, INPUT_PULLUP);  // button to ring the phone

  Serial.println();
  Serial.println("KS0835F SLIC and MT8870 DTMF Decoder Demo");
  Serial.println();

}

void loop() {

  // ensure module is configured so KS0835F control pins
  // are set for non ringing standby mode at the start of each loop
  digitalWrite(F_R, LOW);  // set forward/reverse pin low for all modes except ringing
  digitalWrite(RM, LOW);   // set ring mode pin low for all modes except ringing

  // check if phone hook status has changed (just picked up or placed back on-hook)
  byte reading = digitalRead(SHK);
  if (reading != hookStatus) {
    if (hookStatus == 0)
      Serial.println("Phone is OFF hook...");
    else
      Serial.println("Phone is ON hook...");
    hookStatus = reading;
    delay(20);  // crude and vile "debounce" delay because KS0835F hook signal needs debouncing
  }

  // generate a short ring signal if button is pressed
  if (!digitalRead(ringButton)) {
    generateRingSignal();
  }

  // if phone is off hook, listen for DTMF tones
  if (digitalRead(SHK)) {
    checkDTMF();  // see if there has been a DTMF keypress and print on serial monitor if so
  }

}

// generate a test ring signal
void generateRingSignal() {
  // check if phone is on-hook before ringing, then generate a short ring at 20 Hz
  // this should be implemented better, maybe with interrupts so that as soon as the
  // phone is picked up, ring generation stops but this is ok for testing
  if (!digitalRead(SHK)) {
    Serial.println("Ringing phone...");
    digitalWrite(RM, HIGH);         // enable ring mode
    for (int i = 0; i < 40; i++) {
      digitalWrite(F_R, HIGH);      // toggle fwd/rev pin to generate ring
      delay(25);  // 25 mS = half of 20 Hz period
      digitalWrite(F_R, LOW);
      delay(25);  // 25 mS = half of 20 Hz period
    }
    digitalWrite(RM, LOW);          // disable ring mode
  }
}

// check if there is a valid DTMF signal to decode
void checkDTMF() {
  // StD (delayed steering) output from MT8870 is high while a DTMF signal is present, low when not
  // when a DTMF tone pair is present, decode the key pressed (0-9, *, #)  A, B, C, D  are not decoded
  if (digitalRead(StD)) {
    uint8_t dtmf = ( 0x00 | (digitalRead(Q1) << 0) | (digitalRead(Q2) << 1) | (digitalRead(Q3) << 2) | (digitalRead(Q4) << 3) );
    switch (dtmf)
    {
      case 0x01:
        Serial.println("DTMF: 1");
        break;
      case 0x02:
        Serial.println("DTMF: 2");
        break;
      case 0x03:
        Serial.println("DTMF: 3");
        break;
      case 0x04:
        Serial.println("DTMF: 4");
        break;
      case 0x05:
        Serial.println("DTMF: 5");
        break;
      case 0x06:
        Serial.println("DTMF: 6");
        break;
      case 0x07:
        Serial.println("DTMF: 7");
        break;
      case 0x08:
        Serial.println("DTMF: 8");
        break;
      case 0x09:
        Serial.println("DTMF: 9");
        break;
      case 0x0A:
        Serial.println("DTMF: 0");
        break;
      case 0x0B:
        Serial.println("DTMF: *");
        break;
      case 0x0C:
        Serial.println("DTMF: #");
        break;
    }
    while (digitalRead(StD)) {};  // wait for current dtmf signal to end before looking for the next one
  }
}
