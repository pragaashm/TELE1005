
void setup() {
  Serial.begin(9600); //Initierer startverdi
  pinMode(13,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(11,OUTPUT);
  

}

void loop() {
  int sensorValue = analogRead(A0); //Data skal leses fra port A0
  float voltage = sensorValue*(5.0/1023);
  if (voltage >= 2.5){
    int newValue=750;
    digitalWrite(13, HIGH);
    delay(newValue);
    digitalWrite(13, LOW);
    delay(newValue);
  }else{
    int newValue=243;
    digitalWrite(13, HIGH);
    delay(newValue);
    digitalWrite(13, LOW);
    delay(newValue);
  Serial.println(newValue); //data skal skrives ut
  delay(1);

  }

}
