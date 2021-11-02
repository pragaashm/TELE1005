#include <Servo.h>

Servo myservo;  // create servo object to control a servo

void setup() {
  Serial.begin(9600);
  Serial.println("Leser av romtemperatur");
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object



}

void loop() {
  int sensorValue = analogRead(A0); //Avleser verdi
  float voltage = sensorValue*(5.0 / 1024.0); //Konverter avlest verdi til voltage
  float grader = (voltage - 0.5)*100; //Konverterer til grader
  int grader1 = 0;
  grader1 = map(grader, 20, 35, 0, 180);

  myservo.write(grader1);

  Serial.println(grader); //Printer ut gradeverdi
  delay(1000);



  // put your main code here, to run repeatedly:

}
