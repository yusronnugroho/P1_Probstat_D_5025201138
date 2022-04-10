# 3 Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

#a
#Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
x = 6
l = 4.5
dpois(x,l)

#b
#simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
p = 4.5
n = 365
set.seed(0)
hist(rpois(n, p),
     main = "Histogram Poisson Bayi",
     xlim = c(0,20)
)

#d
#Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Poisson.
rataan = l
rataan
varian = l
varian