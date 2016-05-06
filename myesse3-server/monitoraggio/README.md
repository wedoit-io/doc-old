# Monitoraggio

Per monitorare il corretto funzionamento di alcuni componenti software, sono state predisposti alcuni servizi:

Apilocate
---
Apilocate è un web service che viene interrogato dalle appmobile ritornando l'uri del web service della università.

Il monitoraggio attualmente è attivo sui seguenti servizi/url:

* http://apilocate01.cineca.it/api/v2/ping  da un result code http 200.
* http://apilocate02.cineca.it/api/v2/ping  da un result code http 200.

Se il result code è diverso da 200 allora ALERT

Notificatore
---
Il notificatore è un servizio che invia notifiche push a dipositivi:

* iOS (iphone, ipad)
* Android
* Windows

Per monitorarne il funzionamento è sufficiente interrogare i seguenti url.

* http://notificatore01.cineca.it
* http://notificatore01.cineca.it

Si tratta di una pagina web.
Se l'applicazione non risponde, generare un ALERT.
