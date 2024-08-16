# Envoi des Résultats de Détection des personnes via Sockets TCP


## Objectif

Cette mise à jour ajoute la fonctionnalité d'envoi des résultats de détection de personnes à un serveur via des sockets TCP. L'envoi des données permet de transmettre les informations de détection en temps réel pour un traitement ultérieur ou une analyse centralisée.


## Fonctionnement

### Côté Client (Python)

#### Envoi des Données :
La fonction send_data_person(detected_person) est utilisée pour envoyer les résultats de détection à un serveur.

1. **Configuration du Socket :** Un socket TCP est créé et connecté au serveur à l'adresse localhost sur le port 65432.
2. **Format des Données :** Les données de détection sont converties en format JSON et envoyées au serveur après encodage.
3. **Gestion des Exceptions :** Les erreurs potentielles lors de l'envoi des données sont capturées et affichées.
4. **Fermeture du Socket :** Le socket est fermé après l'envoi des données pour libérer les ressources.

```python

def send_data_person(detected_person):
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.connect(('localhost', 65432))
        message = json.dumps({"person": detected_person})
        sock.sendall(message.encode('utf-8'))
    except Exception as e:
        print(f"Error sending data: {e}")
    finally:
        sock.close()
```

#### Traitement des Résultats du Tracker :

- La fonction process_tracker_results traite les résultats du tracker pour mettre à jour les compteurs d'entrée et de sortie.
- Les résultats de détection sont envoyés via send_data_person.
```python

def process_tracker_results(img, results_tracker, entry_line, exit_line, entry_crossed, exit_crossed, total_count_up, total_count_down):
    detected_person = {"current": 0, "entry": 0, "exit": 0}
    for result in results_tracker:
        x1, y1, x2, y2, id = map(int, result)
        cx, cy = x1 + (x2 - x1) // 2, y1 + (y2 - y1) // 2
        # Check for crossing lines
        if id not in entry_crossed and entry_line[0] < cx < entry_line[2] and entry_line[1] - 5 < cy < entry_line[1] + 5:
            entry_crossed.add(id)
            if id not in exit_crossed:
                total_count_down.append(id)
        if id not in exit_crossed and exit_line[0] < cx < exit_line[2] and exit_line[1] - 5 < cy < exit_line[1] + 5:
            exit_crossed.add(id)
            if id not in total_count_up:
                total_count_up.append(id)
    detected_person["current"] = len(total_count_up) - len(total_count_down)
    detected_person["entry"] = len(total_count_up)
    detected_person["exit"] = len(total_count_down)
    send_data_person(detected_person)

```
### Côté Serveur (Qt)
#### Configuration du Serveur :
Le serveur TCP est implémenté dans MyTcpSocket en Qt.
1.Démarrage du Serveur : Le serveur écoute les connexions entrantes sur le port 65432.
2.Gestion des Connexions : Lorsqu'une connexion est établie, un socket est créé pour recevoir les données.
3.Lecture des Données : Les données reçues sont lues, décodées du format JSON, et les informations sont extraites et signalées via un signal Qt.

```cpp

void MyTcpSocket::startServer()
{
    if (!server->listen(QHostAddress::Any, 65432)) {
        qDebug() << "Server error: " << server->errorString();
        return;
    }
    qDebug() << "Server started...";
}

void MyTcpSocket::newConnection()
{
    socket = server->nextPendingConnection();
    connect(socket, &QTcpSocket::readyRead, this, &MyTcpSocket::readData);
    connect(socket, &QTcpSocket::disconnected, socket, &QTcpSocket::deleteLater);
}

void MyTcpSocket::readData()
{
    QByteArray data = socket->readAll();
    QJsonDocument jsonDoc = QJsonDocument::fromJson(data);
    QJsonObject jsonObj = jsonDoc.object();

    if (jsonObj.contains("person")) {
        QJsonObject personObj = jsonObj["person"].toObject();
        int current = personObj["current"].toInt();
        int entry = personObj["entry"].toInt();
        int exit = personObj["exit"].toInt();
        emit countReceived(current, entry, exit);
    }
}

```

## Avantages
1. **Réactivité en Temps Réel** : La communication via sockets TCP permet une transmission instantanée des résultats de détection, facilitant le suivi en temps réel des personnes.
2. **Flexibilité** : Le format JSON est facile à lire et à manipuler, ce qui simplifie l'intégration avec différents systèmes et plateformes.
3. **Séparation des Concernes** : Le client et le serveur sont indépendants, ce qui facilite la maintenance et les mises à jour du système.
4. **Analyse Centralisée** : Les données peuvent être agrégées et analysées sur le serveur, permettant des rapports détaillés et une gestion centralisée des informations de détection.


## Perspectives

### Intégration avec une Carte Raspberry Pi

L'application Qt peut être déployée sur une carte Raspberry Pi pour réaliser des détections en temps réel et envoyer les résultats via TCP à un serveur. Voici comment cela peut fonctionner :

1. **Déploiement sur Raspberry Pi** : L'application Qt et le serveur TCP (implémenté en C++) peuvent être déployés sur une carte Raspberry Pi. La Raspberry Pi peut exécuter le serveur TCP pour recevoir les données de détection.
   
2. **Communication avec le Modèle** : Le modèle de détection (souvent un modèle d'apprentissage automatique ou de vision par ordinateur) peut être exécuté sur un autre système (comme un PC ou un serveur distant). La Raspberry Pi enverra les résultats de détection au serveur via TCP.

3. **Processus de Communication** :
   - **Détection** : Le modèle de détection sur la Raspberry Pi analyse les images et détecte les personnes.
   - **Envoi des Données** : Les résultats de la détection sont envoyés au serveur central via le socket TCP configuré.
   - **Traitement Centralisé** : Le serveur central reçoit et traite les données, les agrège et les utilise pour des analyses plus poussées.

4. **Avantages** :
   - **Décentralisation** : La Raspberry Pi peut gérer la détection localement tout en envoyant les résultats au serveur central pour une analyse approfondie.
   - **Scalabilité** : Le système peut être étendu avec plusieurs Raspberry Pi pour gérer des détections dans différentes zones géographiques.
   - **Efficacité** : Le traitement local sur Raspberry Pi réduit la latence en envoyant uniquement les données pertinentes au serveur central.
