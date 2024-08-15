// Définition des pins pour les capteurs ultrason
const int trigPin1 = 9;
const int echoPin1 = 8;

const int trigPin2 = 7;
const int echoPin2 = 6;

const int trigPin3 = 5;
const int echoPin3 = 4;

// Variables pour stocker la durée des impulsions et les distances calculées
long duration1, duration2, duration3;
int distance1, distance2, distance3;

void setup() {
  // Initialisation des pins pour chaque capteur
  pinMode(trigPin1, OUTPUT);
  pinMode(echoPin1, INPUT);

  pinMode(trigPin2, OUTPUT);
  pinMode(echoPin2, INPUT);

  pinMode(trigPin3, OUTPUT);
  pinMode(echoPin3, INPUT);
  
  // Initialisation de la communication série pour l'affichage des résultats
  Serial.begin(9600);
}

void loop() {
  // Mesure pour le capteur 1
  measureDistance(trigPin1, echoPin1, duration1, distance1);
  
  // Mesure pour le capteur 2
  measureDistance(trigPin2, echoPin2, duration2, distance2);
  
  // Mesure pour le capteur 3
  measureDistance(trigPin3, echoPin3, duration3, distance3);
  
  // Affichage des distances sur le moniteur série
  Serial.print("Distance 1: ");
  Serial.print(distance1);
  Serial.println(" cm");

  Serial.print("Distance 2: ");
  Serial.print(distance2);
  Serial.println(" cm");

  Serial.print("Distance 3: ");
  Serial.print(distance3);
  Serial.println(" cm");
  
  // Délai avant la prochaine série de mesures
  delay(1000);
}

void measureDistance(int trigPin, int echoPin, long &duration, int &distance) {
  // Envoi d'un pulse à l'entrée trig du capteur ultrason
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  // Lecture de la durée du retour de l'impulsion sur l'entrée echo du capteur ultrason
  duration = pulseIn(echoPin, HIGH);
  
  // Calcul de la distance en cm (vitesse du son = 34300 cm/s)
  distance = duration * 0.034 / 2;
}
