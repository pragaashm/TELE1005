//Deklarerer startverdier

int redLED = 10;
int greenLED = 9;
int blueLED = 8;

int LED1 = 6;
int LED2 = 7;
int SW1 = 3;
int SW2 = 4;

int buzzerPin = 11;
int winner = 0;
int winnerBeep = 750;
int fault = 0;
int faultBeep = 200;
int score1 = 0;
int score2 = 0;
int leader = 0;
int magic;
int newScore = 0;

boolean gameOn = false;

unsigned long long wait = 0;
unsigned long now = 0;

unsigned long tid = 0;
unsigned long nTid = 0;


//Initierer variabler
void setup() {
  Serial.begin(9600);
  pinMode(redLED, OUTPUT);
  pinMode(greenLED, OUTPUT);
  pinMode(blueLED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(buzzerPin, OUTPUT);
  pinMode(SW1, INPUT);
  pinMode(SW2, INPUT);

  Serial.println("Velkommen til reaksjonsspillet!");
  Serial.println("---------------------------------------");
  Serial.println("Test dine ferdigheter her. Finn en motspiller.");
  Serial.print("Tast 's' for å starte, 'q' for å avslutte etter neste runde,");
  Serial.println("og 'r' 2x for å resette scoren.");
}

void loop() {

  if (Serial.available() > 0) {
    int lesV = Serial.read();
    if (lesV == 's') {
      gameOn = true;
      Serial.println("START!");
      while ((score1 < 15) && (score2 < 15) && (gameOn == true)) {
        fault = 0;
        winner = 0;
        now = millis();
        wait = now + random(300, 600);
        funk();
      }
      sScore();
      winRar();
    }
  }
}

void fanFare() {
  for (int i = 10; i < winnerBeep; i++) {
    tone(buzzerPin, i, 100);
    delay(1);
  }
}

void winRar() {
  for (int i = 1; i < 4; i++) {
    fanFare();
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(redLED, HIGH);
    delay(50);
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(redLED, LOW);
    delay(50);
  }
}

void wBlink(int uLED, int vLED, int indik) {
  for (int i = 1; i < 5; i++) {
    tone(buzzerPin, indik, 100);
    digitalWrite(uLED, HIGH);
    digitalWrite(vLED, HIGH);
    delay(30);
    digitalWrite(uLED, LOW);
    digitalWrite(vLED, LOW);
    delay(30);
  }
}

void aSpill() {
  digitalWrite(redLED, HIGH);
  while (millis() < wait && digitalRead(SW1) == HIGH && digitalRead(SW2) == HIGH) {
  }

  if (Serial.read() == 'q') {
    delay(10);
    sScore();
    winRar();
    gameOn == false;
    digitalWrite(redLED, LOW);
    delay(3000);
    exit(0);
  }

  while (Serial.available() > 0) {
    if (Serial.read() == 'r') {
      score1 = 0;
      score2 = 0;
      Serial.println("Score resettes!");
    }
  }

  if (digitalRead(SW1) == LOW) {
    fault = LED1;
    score1 = score1 - 1;
  }
  else if (digitalRead(SW2) == LOW) {
    fault = LED2;
    score2 = score2 - 1;

  }
  magic = random(0, 10);
  if (magic > 3) {
    cSpill();
    bSpill();
  } else {
    bSpill();

  }
}

void bSpill() {
  digitalWrite(redLED, LOW);

  if (fault == 0) {
    digitalWrite(greenLED, HIGH);
    tid = millis();
    while (digitalRead(SW1) == HIGH && digitalRead(SW2) == HIGH) {

    }

    if (digitalRead(SW1) == LOW) {
      winner = LED1;
      nTid = millis() - tid;
      if (nTid < 200) {
        score1 = score1 + 3;
        Serial.print("Vinneren brukte: ");
        Serial.print(nTid);
        Serial.println(" ms.");
        Serial.println("Her var du rask! Bonuspoeng!");
      } else if (nTid < 400) {
        score1 = score1 + 2;
        Serial.print("Vinneren brukte: ");
        Serial.print(nTid);
        Serial.println(" ms.");
        Serial.println("Bonuspoeng!");
      } else {
        score1 = score1 + 1;
        Serial.print("Vinneren brukte: ");
        Serial.print(nTid);
        Serial.println(" ms.");
      }

    } else if (digitalRead(SW2) == LOW) {
      winner = LED2;
      nTid = millis() - tid;
      if (nTid < 200) {
        score1 = score2 + 3;
        Serial.print("Vinneren brukte: ");
        Serial.print(nTid);
        Serial.println(" ms.");
        Serial.println("Her var du rask! Bonuspoeng!");
      } else if (nTid < 400) {
        score1 = score2 + 2;
        Serial.print("Vinneren brukte: ");
        Serial.print(nTid);
        Serial.println(" ms.");
        Serial.println("Bonuspoeng!");
      } else {
        Serial.print("Vinneren brukte: ");
        Serial.print(nTid);
        Serial.println(" ms.");
        score1 = score2 + 1;
      }

    }
    wBlink(greenLED, winner, winnerBeep);
    noTone(buzzerPin);
  }
}

void cSpill() {
  digitalWrite(redLED, LOW);
  digitalWrite(greenLED, LOW);

  if (fault == 0) {
    digitalWrite(blueLED, HIGH);
    now = millis();
    wait = now + random(600, 2000);
    while (millis() < wait && digitalRead(SW1) == HIGH && digitalRead(SW2) == HIGH) {
    }


    if (digitalRead(SW1) == LOW) {
      score1 = score1 - 2;
      fault = LED1;
      wBlink(blueLED, fault, faultBeep);
    } else if (digitalRead(SW2) == LOW) {
      fault = LED2;
      score2 = score2 - 2;
      wBlink(blueLED, fault, faultBeep);
    }
  }
  digitalWrite(blueLED, LOW);

}

void funk() {
  aSpill();
  if (fault != 0) {
    wBlink(redLED, fault, faultBeep);
    noTone(buzzerPin);
    fault = 0;
    aSpill();
  }
}

void sScore() {
  Serial.println("--Spillet avsluttes--");
  if (score1 > score2) {
    leader = score1;
    Serial.print("Vinneren er spiller 1 med: ");
    Serial.print(leader);
    Serial.println(" poeng!");
    Serial.print("Spiller 2 har: ");
    Serial.println(score2);
    Serial.println("Reset program for å starte nytt spill..");
  } else if (score1 < score2) {
    leader = score2;
    Serial.print("Vinneren er spiller 2 med: ");
    Serial.print(leader);
    Serial.println(" poeng!");
    Serial.print("Spiller 1 har: ");
    Serial.println(score1);
    Serial.println("Reset program for å starte nytt spill..");

  } else if (score1 == score2) {
    leader = score1;
    Serial.print("Likt. Poengsum: ");
    Serial.println(leader);
    Serial.println("Reset program for å starte nytt spill..");
  }
}
