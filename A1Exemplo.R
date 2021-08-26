
library(MASS)
head(Cars93)

# 1. Qual Manufacturer apresenta maior número de veículos?

table(Cars93$Manufacturer)

# Resp. Ford e Chevrolet

# 2. Qual o percentual de veículos Ford?

## Qual o total de veículos? 
nrow(Cars93)
## Qual o total de veículos Ford? 
CarsFord = Cars93[ Cars93$Manufacturer == 'Ford' , ]
nrow(CarsFord)

nrow(  Cars93[ Cars93$Manufacturer == 'Ford' , ]  )

## Qual o percentual de veículos Ford?
nrow(  Cars93[ Cars93$Manufacturer == 'Ford' , ]  ) / nrow(Cars93)
# 
nrow(CarsFord) / nrow(Cars93)

# 3. Qual o percentual de veículos Ford que são Compact?
nrow(  Cars93[ Cars93$Manufacturer == 'Ford' & Cars93$Type == 'Compact', ]  ) / nrow(Cars93)

# 4. Qual a Média de Preços dos veículos da Ford e da BMW?
mean(CarsFord$Price)
mean(Cars93[ Cars93$Manufacturer == 'BMW' , ]$Price)
mean(Cars93[ Cars93$Manufacturer == 'BMW' , c('Price')])

# 5. Qual % dos VALORES totais de preço de veículos com origem nos USA?

## Qual o TOTAL (soma) de VALORES de preço?
sum(Cars93$Price)

## Qual o TOTAL (soma) de VALORES de preço com origem nos USA?
sum(Cars93[ Cars93$Origin == 'USA', ]$Price)

## %
sum(Cars93[ Cars93$Origin == 'USA', ]$Price) / sum(Cars93$Price)

