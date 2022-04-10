# 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

#a
#Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
n = 100
mean = 50
sd = 8

set.seed(1)
zscore = rnorm(n, mean, sd)
disnorm
summary(zscore)

x1 = runif(1, min(zscore), mean)
x1
x2 = runif(1, mean, max(zscore))
x2
p1 = pnorm(x1, mean, sd)
p1
p2 = pnorm(x2, mean, sd)
p2

plot(zscore)

#b
#Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
#NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

breaks = 50
hist(zscore, breaks,
     main = "5025201138_Yusron Nugroho Aji_Probstat_D_DNhistogram"
)

#c
#Nilai Varian (σ2) dari hasil generate random nilai Distribusi Normal.
varian = (sd(zscore))^2
varian
