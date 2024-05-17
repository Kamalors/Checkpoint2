**Exercice 1 : Modification IP client-serveur**

**Q.1.1**

Le serveur ne peut pas contacter le client car l’adresse du serveur est 176.16.10.10/24, donc son adresse réseau est 176.16.10.0, alors que le client est sur 172.16.100.50/24, dont l’adresse réseau est 172.16.100.0. De ce fait, ils ne peuvent pas communiquer entre eux.
J’ai changé l’adresse IP du client (de 172.16.100.50 à 172.16.10.50) pour qu’elle soit dans l’adresse réseau du serveur.

![No_ping_SRV_CLT](https://github.com/Kamalors/Checkpoint2/assets/162970946/9bfbc42b-afe4-46c9-9b78-ce7918747000)


**Q.1.2**

En utilisant le nom de la machine pour le ping, elle utilise le protocole IPv6.

![ping_SRV_CLT](https://github.com/Kamalors/Checkpoint2/assets/162970946/bccadbc4-5a38-4d87-8de4-7d32f8091f5b)


**Q.1.3**

J’ai désactivé le protocole IPv6 sur la machine client pour que le ping fonctionne. La machine est passée sur le protocole IPv4. J’ai changé en amont cette adresse IP, de ce fait, les machines peuvent communiquer entre elles.

![Q1 3](https://github.com/Kamalors/Checkpoint2/assets/162970946/dadd2315-1990-4dfb-8b97-dc5a50619b56)

![PIng_IPv4](https://github.com/Kamalors/Checkpoint2/assets/162970946/d4bc7aea-7af1-4522-849a-443814a0be6a)

**Q.1.4**

![Q1 4](https://github.com/Kamalors/Checkpoint2/assets/162970946/eacacfbc-bd2f-4dbe-aa04-6e6eac7f9adb)

![Q1 42](https://github.com/Kamalors/Checkpoint2/assets/162970946/b316eb83-564c-432c-87b1-7dd8ef9f5f7c)



**Q.1.5**

Le client ne prend pas la première adresse car dans le pool d’adresses, il est spécifié que le pool d’adresses allant de 172.16.10.1 à 172.16.10.19 est exclu de la distribution. C’est la même chose pour le pool d’adresses de 172.16.10.241 à 172.16.10.254.

![Q 15](https://github.com/Kamalors/Checkpoint2/assets/162970946/455b6ebb-1c82-4bf6-babc-a0a514d8914c)

![Q1 5](https://github.com/Kamalors/Checkpoint2/assets/162970946/e646d540-e258-47dd-939f-793fcd768634)

**Q.1.6**


![Q 16](https://github.com/Kamalors/Checkpoint2/assets/162970946/1f68ee98-4133-429b-8d82-1fd4fb76ccc6)



**Q.1.7**

L'intérêt de passer en IPv6 est de pouvoir passer outre le DHCP, car l’IPv6 a, pour des réseaux locaux fc00::/8, une quasi infinité d’adresses, ce qui fait que l’on n’a pas besoin de gérer les pools d’adresses.

**Q.1.8**

Non, le DHCP n’est pas obsolète. Si, par exemple, on décide de faire des réseaux IPv6 par service, donc en adresse locale lien fe00::/8, le DHCPv6 peut être utilisé pour la gestion des adresses.
