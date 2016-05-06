# Creazione delle ACL

Nello schema di iUniversity ci sono alcuni oggetti di database che hanno la necessità effettuare chiamate http verso l’esterno.

Gli oggetti sono i seguenti:

|Oggetto | Tipo |Descrizione|
|--------|------|------|
| Notificatore |Package |Utilizzato per l’invio delle notifiche|
| RavenClient | Procedura |Utilizzato per l'invio delle eccezioni di database al server sentry.apexnet.it |


Script di creazione
---
Oracle, per questioni di sicurezza, a partire dalla versione 10 blocca ogni tentativo di connessione dal database verso host esterni.

Per consentire chiamate di questo tipo, bisogna creare una cosiddetta ACL.

Di seguito riportiamo lo script di creazione.

    Note:
    1. Prima di eseguire lo script sostituire xx con la sigla dell'università
    2. L'esecuzione dello script va fatta con utenza SYSTEM o SYS

```sql
/* Create ACL for specific user UNIXX */
BEGIN
  DBMS_NETWORK_ACL_ADMIN.CREATE_ACL (
     acl => 'iuni_unixx.xml',
     description => 'Acl per iuniversity utente iuni_unixx',
     principal => 'IUNI_UNIXX_PROD',
     is_grant => true,
     privilege => 'connect');
  commit;
END;
/

/* Add privilege of ACL to user IUNI_UNIXX_PROD */
BEGIN
  DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE
    (acl => 'iuni_unixx.xml', principal => 'IUNI_UNIXX_PROD',is_grant => true, privilege => 'resolve');
  commit;
END;
/

/* Add services to ACL */
BEGIN
  DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL
    (acl => 'iuni_unixx.xml', host => 'notificatore01.cineca.it');
  commit;
END;
/

BEGIN
  DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL
    (acl => 'iuni_unixx.xml', host => 'notificatore02.cineca.it');
  commit;
END;
/

BEGIN
  DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL
    (acl => 'iuni_unixx.xml', host => 'sentry.apexnet.it');
  commit;
END;
/

```
