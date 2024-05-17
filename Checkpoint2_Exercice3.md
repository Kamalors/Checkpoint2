**Q.3.1**

C’est un switch. Son rôle est d’interconnecter les différents PC du réseau.


**Q3.2**

C’est un routeur. Son rôle est de permettre au réseau 10.10.0.0/16 de pouvoir communiquer avec d’autres réseaux.

**Q3.3**

Ce sont les ports d’interface de connexion, le "f" pour Fast Ethernet et le "g" pour Gigabit Ethernet.

**Q3.4**

Cela représente son masque de sous-réseau (adresse de réseau fixe). En gros, les 16 premiers bits de son adresse IP sont fixés à 1 (255.255.0.0).

**Q3.5**

C’est la dernière adresse disponible.

**Q3.6**


    PC1 : 10.10.4.1/16
        RSO : 10.10.0.0
        1ère : 10.10.0.1
        Dernière : 10.10.255.254
        Diffusion : 10.10.255.255
    PC2 : 10.11.80.2/16
        RSO : 10.11.0.0
        1ère : 10.11.0.1
        Dernière : 10.11.255.254
        Diffusion : 10.11.255.255
    PC5 : 10.10.4.7/15
        RSO : 10.10.0.0
        1ère : 10.10.0.1
        Dernière : 10.11.255.254
        Diffusion : 10.11.255.255

**Q3.7**

PC 1, 3, 4, 5.

**Q3.8**

PC 1, 3, 4, 5.

**Q3.9**

Aucun, car leur adresse IP est configurée sur leur machine.

**Q3.10**

Il faut soit mettre en place un serveur DHCP et modifier les adresses de statiques à dynamiques, soit passer les ordinateurs en IPv6.

**Q3.11**

00:50:79:66:68:00 eth.src

**Q3.12**

Oui, cela a fonctionné entre 00:50:79:66:68:00 eth.src et 00:50:79:66:68:03 eth.dst. On peut le voir dans le protocole ICMP [Response frame: 6].

**Q3.13**

Request correspond à Source: 00:50:79:66:68:00 (00:50:79:66:68:00) Source Address: 10.10.4.1
Reply à Source: 00:50:79:66:68:03 (00:50:79:66:68:03) Source Address: 10.10.4.2

**Q3.14**

C’est le protocole ARP et il sert à faire le lien entre l’adresse MAC et l’adresse IP.

**Q3.15**

A est celui qui envoie la requête ping et B la reçoit.

**Q3.16**

Src: 00:50:79:66:68:02 (10.10.80.3), Dst: ca:01:da:d2:00:08 (10.11.80.2)

**Q3.17**

C’est le protocole ICMP (Internet Control Message Protocol). Son rôle est d’émettre des messages, que ce soit des erreurs ou juste des messages de contrôle comme celui du ping.

**Q3.18**

Non, la communication n’a pas réussi car les deux adresses n’étaient pas sur la même adresse réseau. On peut le confirmer car la dernière adresse du réseau renvoie ICMP Source Address: 10.10.255.254.

**Q3.19**

La dernière adresse du réseau 10.10.0.0 renvoie un message d’erreur car l’adresse que l’on a voulu contacter est hors de portée.

**Q3.20**

Le rôle du matériel A est d’émettre un ping et celui du matériel B est de le recevoir. Le B n’a pas pu être pingé.

**Q3.21**

Src: 10.10.4.2, Dst: 172.16.5.253

**Q3.22**

Src: ca:01:da:d2:00:1c (ca:01:da:d2:00:1c), Dst: ca:03:9e:ef:00:38 (ca:03:9e:ef:00:38)
Elles sont toutes les deux des adresses individuelles (unicast).
