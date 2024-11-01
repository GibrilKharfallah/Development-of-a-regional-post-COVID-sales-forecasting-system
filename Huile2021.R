####################### ANALYSE PREVISIONELLE DE LA SERIE HUILE #################################

serieH1 = c(37091,32352,32770,35305,43681,27327,39484,37941,31862,38058,35237,35135,40601,35306,40511,41144,44197,35514,40978,39103,38185,40854,38227,41636,40780,36513,40564,46741,42438,37100,43699,38899,38404,41187,40083,41043,44350,39062,47078,44653,31839,38846,41881,36082,40308,39214,39277,39224)


boxplot(serieH1)    ### Représentation des données sous forme de boite à moustache 

dataH1 = ts(serieH1, start = c(2018,1), frequency = 12)  ## Introduire la série chronologique
plot(dataH1)

library(tseries)

print(adf.test(dataH1, alternative = 'stationary')) # Test de la stationnarité de la série
decomposition = decompose(dataH1)
plot(decomposition)

coef_acf = acf(dataH1)
print(data.frame(coef_acf$lag,coef_acf$acf)[1:16,])

pacf(dataH1)
print(data.frame(coef_pacf$lag,coef_pacf$pacf)[1:16,])


############################## Choix du modèle ################################################

library(forecast)

mod = auto.arima(dataH1, trace = TRUE)
mod

modele = auto.arima(dataH1)
modele

############################## Validation ##################################################

tsdiag(modele)

acf(modele$residuals, main = "Corrélogramme des résidus")

pacf(modele$residuals, main = "Corrélogramme Partiel des résidus")

Box.test(modele$residuals, lag = 20, type = "Ljung-Box")

hist(modele$residuals, col = "green", xlab = "Erreur", main = "Histogramme des résidus", freq = FALSE)
lines(density(modele$residuals), col = "Black")

interconf = round(confint(modele), 2)
interconf

############################## Prévision ##############################################

pred = forecast(modele, 12)

library(ggplot2)

autoplot(pred)
print(accuracy(pred))