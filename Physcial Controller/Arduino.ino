int sensor = A0; //Potentiometer
int inByte = 0; //incoming serial byte

void setup() {
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
    Serial.println('0');
  }
}

void loop() {

  char inByte = Serial.read();
  int sensor = analogRead(A0);
  delay(5);

  Serial.println(sensor); //prints specific characters
}
