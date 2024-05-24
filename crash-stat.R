# progetto di Calcolo della Probabilità Statistica e Matematica

# il campione riguarda il numero di autovetture coinvolte in incidenti stradali
# nelle province di campania, puglia, basilicata, calabria, sicilia
# e sardegna nel 2020


# inserisco in un vettore le modalità del carattere
autoin<-c(140109,25719,8460,1366,239,4083,426,2346,10244,1347,3541,1481,1033,
          1992,850,867,474,393,2920,978,518,891,308,225,13051,9842,979,2238,
          1184,491,492,203,2676,694,885,3209,1271,345,840,249,504)


# calcolo delle frequenze assolute
# la frequenza assoluta di una modalità è il numero di volte in cui compare
# nel campione
table(autoin)


# calcolo delle frequenze cumulate assolute
# la frequenza cumulata assoluta di una modalità è la somma delle freq.
# assolute delle modalità che la precedono e della propria freq. assoluta
cumsum(table(autoin))


# calcolo delle frequenze relative
# la frequenza relativa di una modalità è il rapporto tra la freq. assoluta ed 
# il numero totale di modalità
table(autoin)/length(autoin)


# calcolo della frequenze cumulate relative
# la frequenza cumulata relativa di una modalità è la somma delle frequenze
# relative delle modalità che la precedono e della propria freq. relativa
cumsum(table(autoin)/length(autoin))


# definisco le classi del campione, ne ho definite 5 perchè la radice quadrata
# di 41 è 6.4 e le classi che hanno meno di 5 istanze sono state accorpate in 
# altre classi
table(cut(autoin, breaks=c(1,500,1000,2000,5000,150000)))


# istogramma
# usando la funzione direttamente sul campione non si riesce a capire la 
# distribuzione dei dati, l'istogramma è troppo "piatto"
hist(autoin, main="Istogramma")


# a questo punto definisco un vettore con le classi che voglio utilizzare
brk<-c(1,500,1000,2000,5000,150000)
hist(autoin, breaks=brk, main="Istogramma")


# calcolo della media
# la media è il rapporto tra la somma dei dati numerici ed il numero di questi
# purtroppo la media viene alterata se sono presenti dei valori "fuori scala"
media<-mean(autoin)


# calcolo della moda
# dato che in R non esiste una funzione per calcolarla se ne definisce una ad hoc
# la moda rappresenta la modalità che è più frequente nel campione
mode<-function(v){
  unicov<-unique(v)
  unicov[which.max(tabulate(match(v,unicov)))]
}

moda<-mode(autoin)


# calcolo della mediana
# la taglia del campione è dispari quindi la mediana è il 21esimo elemento
# la mediana è l'elemento che divide in due parti il campione se ordinato
length(autoin)

mediana<-median(autoin)


# calcolo dei quartili
# i quartili sono valori che dividono un insieme di dati in quattro gruppi
# contenenti un numero approssimativamente uguale di elementi 
quartiliauto<-quantile(autoin)


# box plot
# outline=FALSE esclude gli outliers
boxplot(autoin, col="blue", outline=FALSE)


# calcolo della varianza campionaria
# la varianza campionaria rappresenta la variabilità dei dati in un 
# campione
varauto<-var(autoin)


# calcolo della deviazione standard
# la deviazione standard rappresenta la distanza dei dati dalla media
sdauto<-sd(autoin)

# calcolo della skewness
# l'indice di asimmetria si usa per stabilire se la distribuzione dei dati ha 
# una forma simmetrica
n<-length(autoin)
skw<-skw<-sum((autoin - media)^3) / (n*var(autoin)^(3/2))


# calcolo della curtosi
# la curtosi serve per stabilire se la distribuzione dei dati è appiattita
# dato che è > 0 ci sono più dati nelle classi centrali, la distribuzione
# è leptocurtica
curt<-sum((autoin - media)^4) / (n*var(autoin)^2) - 3
