//Oppgave 3_b
void setup() {
  Serial.begin(9600); //definerer en startverdi
  
  pinMode(7, OUTPUT); //Initierer LED-lysene
  pinMode(6, OUTPUT);
  pinMode(8, OUTPUT);
  Serial.println("Input a,b or c. O to turn off the lights");


}

void loop() {
  if(Serial.available()>0){ //Avleser sensor
    int lesV = Serial.read();

    switch(lesV){ //Initierer switch-case
      case 'a':
      case 'A':
      digitalWrite(7, HIGH);
      break;
      case 'b':
      case 'B':
      digitalWrite(6, HIGH);
      break;
      case 'c':
      case 'C':
      digitalWrite(8, HIGH);
      break;
      case 'o':
      case 'O':
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      digitalWrite(8, LOW);
      break;
      }
  }
}
