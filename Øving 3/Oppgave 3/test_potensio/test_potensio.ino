

void setup() {
  Serial.begin(9600); //Initierer startverdi
  

}

void loop() {
  int sensorValue = analogRead(A0); //Data skal leses fra port A0
  Serial.println(sensorValue); //data skal skrives ut
  delay(1); //delay mellom utskrift av data

}
