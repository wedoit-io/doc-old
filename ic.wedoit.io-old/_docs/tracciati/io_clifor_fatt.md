---
layout: docs
title: io_clifor_fatt.dat
permalink: /docs/io_clifor_fatt/
---

Tabella di anagrafica del fatturato mensile di un cliente/fornitore

1. **CHIAVE** - Character - Max Length: 250
  * *Chiave univoca del record composta dai dati di origine*
2. **COD_DITTA** - Character - Max Length: 50
  * *Codice della ditta. Identifica univocamente una ditta dentro il gestionale che, nel caso sia multisocietario, può contenere dati di più aziende*
3. **TIPO_CLIFOR** - Integer - Max Length: 1
  * *Tipologia (0=Cliente, 1=Fornitore)*
4. **COD_CLIFOR** - Character - Max Length: 50
  * *Codice Cliente / Fornitore*
5. **ANNO** - Integer - Max Length: 10
  * *Anno*
6. **MESE** - Integer - Max Length: 10
  * *Mese*
7. **COD_VALUTA** - Character - Max Length: 50
  * *Codice della valuta*
8. **FATTURATO** - Decimal - Max Length: 28,8
  * *Fatturato Totale*
9. **DAT_ULT_MOD** - DateTime - Max Length: 16
  * *Data di ultima modifica del record*

