
void setup() {
  Serial.begin(9600); //Initierer startverdi
  

}

void loop() {
  int sensorValue = analogRead(A0); //Data skal leses fra port A0
  //data som leses fra variabelen "sensorValue" ligger mellom 0-1023. Konverterer dette til voltage
  float voltage = sensorValue*(5.0 / 1023.0);
  delay(1); //delay mellom utskrift av data

}
