void setup() {
  Serial.begin(9600);
  Serial.println("Leser av romtemperatur");



}

void loop() {
  int sensorValue = analogRead(A0); //Avleser verdi
  float voltage = sensorValue*(5.0 / 1024.0); //Konverter avlest verdi til voltage
  float grader = (voltage - 0.5)*100; //Konverterer til grader

  Serial.println(grader); //Printer ut gradeverdi
  delay(1000);
  

  // put your main code here, to run repeatedly:

}
