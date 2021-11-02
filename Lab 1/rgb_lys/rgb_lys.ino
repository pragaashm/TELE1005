int redLed=5;
int blueLed=6;
int greenLed=9;
int buzzerPin=2;

int pitch=250;
int wait=250;


void setup() {
  pinMode(redLed,OUTPUT);
  pinMode(blueLed,OUTPUT);
  pinMode(greenLed,OUTPUT);
  pinMode(buzzerPin,OUTPUT);
  // put your setup code here, to run once:

}

void setColor(int red, int green, int blue){
  analogWrite(redLed,red);
  analogWrite(blueLed,blue);
  analogWrite(greenLed,green);
}
void loop() {
  setColor(255, 0, 0); // Rødt lys
  tone(2,pitch);
  delay(wait);
  setColor(0, 255, 0); // Grønt lys
  tone(2,pitch+50);
  delay(wait-10);
  setColor(0, 0, 255); // Blått lys
  tone(2,pitch+100);
  delay(wait);

  noTone(2);

  wait = wait - 10;
  pitch = pitch + 20;
  if (wait<=0){
    wait=250;
    pitch=250;
    }

  }
