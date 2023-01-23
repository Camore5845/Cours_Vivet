# TP - DVWA

DVWA ( Damn Vulnerable Wab application) est une application PHP / MYSQL vulnérable. C'est à dire qu'elle permet de tester des intrusions mysql, xms,php et autre.

## L'installation

L'application doit fonctionner sur un serveur web. Il existe aussi un container [docker ]([Docker](https://hub.docker.com/r/vulnerables/web-dvwa)) disponible sur le docker hub. 

Personnellement, j'utilise le container docker beaucoup plus simple et pratique à l'installation. Ça donne aussi un avantage sur le faible risque de casse de la machine virtuelle hébgereant DVWA.

## Pour installer Docker il faut inscrire ces commandes :

Mettre à jour les packets et installer les packets suivant : 

```shell
sudo apt-get update

 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

Ajout de la clé GPG de docker  : 

```shell
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Ajout du repo docker : 

```shell
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Mise à jour des repo 

```shell
sudo apt-get update
```

Installation de docker : 

```shell
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

## Pour installer le container DVWA :

Pour installer le conteneur il faut inscrire cette commande : 

```shell
docker run --rm -it -p 80:80 vulnerables/web-dvwa
```

Il devrait afficher ceci une fois installer

![](assets/dfe369f1bc9523bb60fc4657444e8b655a2d0f83.png)

La page de conenxion DVWA :

![](assets/2023-01-20-08-26-16-image.png)

### Les logins par défaut :

- Username: admin
- Password: password

DVWA 

![](assets/6d94f0ae9f1150154df51f1efc77c10e964f6b0b.png)

Les Essai:

### Command Injection :

La commande injection, permet de modifié des fichiers directement dans le serveur. On y parvient en mettant un argument php comme ";" 

Par exemple on peut lui dire de lister le répertoire et d'inscrire le resultat dans un fichier ls.txt.
Pour ce faire on fait : ";ls >ls.txt", On rentre la commande puis on fait un ";ls"

![](assets/4023db5847e05338fa8b5910513275e030d4cd6c.png)

Le fichier "ls.txt" est bien présent. 
On peut même lire le fichier ls.txt en faisant ";cat ls.txt"

## SQL Injection

Liste des utilisateurs dans la base des utilisateurs avec leur mot de passe. 

commande : 

```sql
' UNION SELECT user,password FROM users --
```

![](assets/2023-01-20-09-26-41-image.png)

Les mots de passse sont encodé en MD5. Des sites sur internet sont capable de les décodé. Comme [crackstation](https://crackstation.net/)

## XSS Injection

La vulnérabilité XSS se produit dans les sites web qui prennent les données de l'utilisateur et qui, lorsqu'elles sont renvoyées dans le navigateur, n'effectuent aucune désinfection ou codage du contenu. L'aseptisation consiste à supprimer certains caractères indésirables comme >,<,",",%, etc. de la chaîne d'entrée.

Dans mon cas, j'ai décidé d'avoir des informations sur la signature du cookie. 

Pour ce faire j'ai utilisé ce bout de code : 

```
<script> alert(document.cookie) </script>
```

![](assets/2023-01-20-10-30-01-image.png)
