## Exercice 2: MOM-JMS (Exam 16/05/2022)

### 5. Annotation de la figure :
- **Étape 1** : Le producteur envoie un message dans la file d'attente (Queue).
- **Étape 2** : Le message est stocké dans la file d'attente.
- **Étape 3** : Un consommateur récupère le message (lecture de la queue).

### 6. Compléter le tableau des instructions :

| Instruction | Description |
|-------------|-------------|
| A           | Créer un producteur pour le topic |
| B           | Créer une session avec ACK automatique |
| C           | Créer un abonné pour le topic |
| D           | Récupérer les objets de connexion et de topic à partir de JNDI |
| E           | Assigner un listener au subscriber |
| F           | Créer et démarrer la connexion |
| G           | Démarrer la connexion |
| H           | Créer un contexte initial avec les propriétés JDNI |

### 7. Type de client JMS :
- Ce code correspond à un **TopicSubscriber**, car il crée un abonné à un topic.
- Le modèle de délivrance est **Push** car un listener est assigné pour recevoir les messages automatiquement.

---

## Exercice 3 : (Exam 2017)

### 1. Réception implicite (push) vs explicite (pull) :
- Dans une réception **push**, le serveur envoie activement les messages au consommateur.
- Dans une réception **pull**, c'est le consommateur qui interroge la file d'attente pour récupérer les messages.

### 2. Correspondance instructions-commentaires :

| Instructions | Commentaires |
|--------------|--------------|
| 1)           | Créer l'émetteur de la file d'attente |
| 2)           | Créer l'objet listener et le lier au récepteur |
| 3)           | Créer le contexte et rechercher la connectionFactory |
| 4)           | Récupérer l'objet Queue |
| 5)           | Créer une session de queue |
| 6)           | Créer et démarrer la connexion |
| 7)           | Créer un récepteur pour la file d'attente |
| 8)           | Créer un message TextMessage et l'envoyer |

### 3. Séquence de code :

- **Producteur** :
  1. InitialContext
  2. Connexion Queue
  3. Session Queue
  4. Création QueueSender
  5. Création TextMessage
  6. Envoi du message

- **Consommateur** :
  1. InitialContext
  2. Connexion Queue
  3. Session Queue
  4. Création QueueReceiver
  5. Assigner un listener pour recevoir les messages
"""
