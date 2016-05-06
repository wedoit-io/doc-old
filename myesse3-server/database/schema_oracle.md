# Schema Oracle

Lo schema oracle di iUniversity, deve essere creato sulla stessa istanza in cui è presente lo schema di ESSE3.
Infatti, nella maggior parte delle installazioni, iUniversity si integra con ESSE3 a livello di database tramite sinonimi, viste, ecc.

Per convenzione, il nome degli schemi deve seguire la seguente naming convention:

Naming convention
---
Per uniformare le installazioni si è deciso di adottare la seguente Naming convention

* IUNIV_UNIxxx_yyy

dove:

* xxx contiene la sigla dell'università (VR per Verona, Bergamo per Bergamo)
* yyy contiene un suffisso che identifica l'ambiente. Può valere TEST o PROD

Esempi:

| Nome | Descrizione |
| -----|-------------|
| IUNIV_UNIVR_PROD| Nome dello schema oracle di produzione di Verona|
| IUNIV_UNIBG_TEST | Nome dello schema oracle di test di Bergamo |


Tablespace
---
Il nome della tablespace deve essere uguale a quello dello schema creato.

La dimensione della tablespace dipente dalla dimensione dello schema di ESSE3 con cui viene effettuata l'integrazione.
Nella maggior parte dei casi non supera mai 1/3 dello spazio dedicato a ESSE3.

Schema
---
Lo schema deve essere creato con privilegi standard di connect e resource.

Esempio:

```sql
DROP USER  IUNIV_UNIXXXXXX_PROD CASCADE;
CREATE USER IUNIV_UNIXXXXXX_PROD
  IDENTIFIED BY IUNIV_UNIXXXXXX_PROD
  DEFAULT TABLESPACE IUNIV_UNIXXXXXX_PROD
  TEMPORARY TABLESPACE TEMP
  ACCOUNT UNLOCK;

ALTER USER IUNIV_UNIXXXXXX_PROD QUOTA UNLIMITED ON IUNIV_UNIXXXXXX_PROD;

GRANT CONNECT, RESOURCE TO IUNIV_UNIXXXXXX_PROD;
GRANT UPDATE ANY TABLE TO IUNIV_UNIXXXXXX_PROD;
GRANT SELECT ANY TABLE TO IUNIV_UNIXXXXXX_PROD;
GRANT CREATE ANY TABLE TO IUNIV_UNIXXXXXX_PROD;
GRANT QUERY REWRITE TO IUNIV_UNIXXXXXX_PROD;
GRANT ALTER ANY TRIGGER TO IUNIV_UNIXXXXXX_PROD;
GRANT EXECUTE ANY PROCEDURE TO IUNIV_UNIXXXXXX_PROD;
GRANT CREATE ANY SYNONYM TO IUNIV_UNIXXXXXX_PROD;
GRANT INSERT ANY TABLE TO IUNIV_UNIXXXXXX_PROD;
GRANT EXECUTE ANY LIBRARY TO IUNIV_UNIXXXXXX_PROD;
GRANT UNLIMITED TABLESPACE TO IUNIV_UNIXXXXXX_PROD;
GRANT DELETE ANY TABLE TO IUNIV_UNIXXXXXX_PROD;
GRANT CREATE VIEW TO IUNIV_UNIXXXXXX_PROD;
```

-----------


Aggiungere al file TNSNAMES.ORA l’entry necessaria alla connessione dell’utente. Di seguito un esempio:

```sql
IUNIV_UNIXXXXXX_PROD =
  (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP) (HOST = DB.UNIXXXXXX.IT) (PORT = 1521))
    (CONNECT_DATA = (SERVER = DEDICATED)(SID = XXXXXX))
  )
```

Per verificare la connessione con il database di destinazione da linea di comando eseguire
sqlplus USER/PWD@TNSALIAS
Se la connessione avviene, l’installazione è corretta.

