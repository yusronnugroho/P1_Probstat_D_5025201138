#2 Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

#a
#Peluang terdapat 4 pasien yang sembuh
n = 20
p = 0.2
x = 4
dbinom (x, n, p)

#b
#Gambarkan grafik histogram berdasarkan kasus tersebut
n = 20
p = 0.2
x = 0:20
plot(x, dbinom(x, n, p),
     type = 'h',
     main = 'Histogram Distribusi Binomial',
     xlab = 'Sukses',
     ylab = 'Probabilitas',
     col = 'black',
     lwd = 3
)

#c
#Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Binomial
#nilai Rataan
rataan = n * (prob = p)
rataan
#Varian
varian = n * (prob = p) * (1 - (prob = p))
varian