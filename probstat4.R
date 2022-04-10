# 4 Diketahui nilai x = 2 dan v = 10. Tentukan:

#a
#Fungsi Probabilitas dari Distribusi Chi-Square

x = 2
v = 10
#dschisq(x, v)
dchisq(2, 10)

#b
#Histogram dari Distribusi Chi-Square dengan 100 data random
n = 100
v = 10
hist(rchisq(n, v), main = 'Histogram Distribusi Chi-Square', xlab='x', ylab = 'v')

#c
#Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Chi-Square.
rataan = v
rataan

varian = 2 * v
varian