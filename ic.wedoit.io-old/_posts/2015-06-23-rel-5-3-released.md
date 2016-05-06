---
layout: news_item
title: Rilasciata la rel. 5.3
date: "2015-04-20 08:00:00 +0200"
author: teopost
version: 5.3
categories: [release]
---

### Anomalie

**_Aggiunto ordinamento ulteriore delle scadenze in 'Ordini'-'Incassi'._** - (rif: 9543)

Aggiunto ordinamento ulteriore delle scadenze in 'Ordini'-'Incassi'.
Ora le scadenze sono ordinate anche per progressivo documento e data documento (ascendente), oltre che per l'ordinamento principale scelto (data scadenza o data emissione).

**_Sistemate alcune anomalie wTrendy_** - (rif: 9641)

- eliminata anomalia che poteva causare la cancellazione di righe ordine dell'ordine salvato in precedenza
- sistemato l'ordinamente degli ordini (che ora risulta consistente tra copia commissione ed export)
- sistemata anomalia che poteva causare la mancanza dei dettagli di riga ordine nei dati inviati
- sistemata visualizzazione degli sviluppi delle taglie associate agli articoli
- sistemato calcolo del totale paia, che in alcune condizione risultava sbagliato

### Novità

**_Modifiche alla generazione del copia commissione._** - (rif: 9486)

**_Migliorata la visualizzazione della destinazione del cliente_** - (rif: 9505)

In ordine veloce e nel form ordine è stata aggiunto anche l'indirizzo della destinazione cliente.

**_Aggiunti meccanismi di crash reporting_** - (rif: 9605)


[history]: /docs/history/#v1-0-0
[Upgrading]: /docs/upgrading/
