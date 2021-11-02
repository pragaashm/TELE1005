int redLed=5;
int blueLed=6;
int greenLed=9;
int buzzerPin=2;

int redLevel=0;
int greenLevel=0;
int blueLevel=0;

int pitch=250;
int wait=10;

float counter=0;
float pi=3.14159;


void setup() {
  pinMode(redLed,OUTPUT);
  pinMode(blueLed,OUTPUT);
  pinMode(greenLed,OUTPUT);
  pinMode(buzzerPin,OUTPUT);
 }


void loop() {
  redLevel = sin(counter/100)*1000;
  blueLevel = sin(counter/100+pi*2/3)*1000;
  greenLevel= sin(counter/100+pi*4/3)*1000;

  pitch=map(redLevel, -1000, 1000, 100, 500);
  
  redLevel=map(redLevel, -1000, 1000, 0, 255);
  blueLevel=map(blueLevel, -1000, 1000, 0, 255);
  greenLevel=map(greenLevel, -1000, 1000, 0, 255);


  analogWrite(redLed,redLevel);
  analogWrite(blueLed,blueLevel);
  analogWrite(greenLed,greenLevel);

  
  tone(2,pitch);
  delay(wait);
 
  noTone(2);
  counter=counter+1;
}
