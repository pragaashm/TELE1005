//Deklarerer startverdier

int redLED = 10;
int greenLED = 9;
int blueLED = 8;

int LED1 = 6;
int LED2 = 7;
int SW1 = 3;
int SW2 = 4;

int buzzerPin = 11;
int runder = 0;
int winner = 0;
int winnerBeep = 750;
int fault = 0;
int faultBeep = 200;
int score1 = 0;
int score2 = 0;
unsigned long long wait = 0;
unsigned long now = 0;


//Initierer variabler
void setup(){
  Serial.begin(9600);
  pinMode(redLED,OUTPUT);
  pinMode(greenLED,OUTPUT);
  pinMode(blueLED,OUTPUT);
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(buzzerPin,OUTPUT);
  pinMode(SW1,INPUT);
  pinMode(SW2,INPUT);
  Serial.println("Velkommen til spillet!");
  Serial.print("Tast 's' for aa starte, 'q' for aa avslutte,");
  Serial.println("og 'r' for aa resette.");
}  



void loop() {
  int lesV = Serial.read();

  fault=0;
  now = millis();
  wait = now + random(300,600);


  digitalWrite(redLED,HIGH);
  while(millis() < wait && digitalRead(SW1)==HIGH && digitalRead(SW2)==HIGH){
    }

  if(digitalRead(SW1)==LOW){
  fault = LED1;
  score1=score1-1;
  }
  if(digitalRead(SW2)==LOW){
  fault = LED2;
  score2=score2-1;
  }
  digitalWrite(redLED,LOW);

 if(fault == 0){
    digitalWrite(greenLED,HIGH);
    while(digitalRead(SW1)==HIGH && digitalRead(SW2)==HIGH){
      
    }
    
    if(digitalRead(SW1)==LOW){
      winner = LED1;
      score1=score1+1;
      }else{
        winner = LED2;
        score2=score2+1;
        }
        wBlink(greenLED,winnerBeep);
        noTone(buzzerPin);
  }else{
    wBlink(redLED,faultBeep);
    noTone(buzzerPin);
  }
}



    
void wBlink(int uLED, int indik){
    for(int i=1;i<5;i++){
      tone(buzzerPin,indik,100);
      digitalWrite(uLED,HIGH);
      delay(30);
      digitalWrite(uLED,LOW);
      delay(30);
    }
}
  
