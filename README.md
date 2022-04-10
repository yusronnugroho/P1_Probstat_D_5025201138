# P1_Probstat_D_5025201138
Praktikum Probstat 1

## Soal 1
### Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### A. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
diselesaikan dengan bantuan fungsi dgeom() yang mana x adalah orang yang tidak ikut acara vaksinasi dan p merupakan probabilitas keberhasilan pertama peserta vaksinasi
```
x = 3
p = 0.20
peluang = dgeom(x-1,p)
peluang
```
### B. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
menggunakan fungsi rgeom() untuk mendapatkan data random sebanyak n data
```
n = 10000
mean(rgeom(n,p)==3)
```
### C. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
pada soal a akan dihasilkan nilai peluang yang sama karena distribusi geometriknya sama atau konstan. Sedangkan, pada soal b akan dihasilakn suatu nilai yang berbeda karena distribusi geometik bernilai acak atau tidak tetap

### D. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
untuk membuat histogramnya, dapat menggunakan fungsi hist()
```
hist(rgeom(n, prob = 0.20), main = 'Histogram Distribusi Geometrik')
```

### E. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Geometrik.
nilai rataan/mean didapat dari rumus jumlah data (n) dikali dengan probabilitas dan nilai varians didapat menggunakan nilai rataan/mean kemudian dikali dengan komplemen probabilitas
```
rataan = x/p
rataan

varian = (x-p)/(p^2)
varian
```

## Soal 2
### Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### A. Peluang terdapat 4 pasien yang sembuh
menggunakan fungsi dbinom()
```
n = 20
p = 0.2
x = 4
dbinom (x, n, p)
```

### B. Gambarkan grafik histogram berdasarkan kasus tersebut
untuk kesempatan kali menggunakan bantuan fungsi plot() untuk membuat grafik saya terlihat lebih jelas
```
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
```

### C. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Binomial
menggunakan rumus rataan dan varian
```
rataan = n * (prob = p)
rataran

varian = n * (prob = p) * (1 - (prob = p))
varian
```

## Soal 3
### Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### A. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
sebanyak rata-rata 4.5 dan x = 6 bayi akan lahir, dapat menggunakan fungsi dpois()
```
x = 6
l = 4.5
dpois(x,l)
```

### B. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
dengan menggunakan fungsi hist() dimana n adalah 365 sebagai nilai hari per tahunnya
```
p = 4.5
n = 365
set.seed(0)
hist(rpois(n, p),
     main = "Histogram Poisson Bayi",
     xlim = c(0,20)
)
```

### C. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
Peluang kelahiran dalam 1 tahun (b) memiliki hasil lebih rendah daripada kelahiran pada esok harinya (a) namun, peluang yang terjadi tidak menunjukkan perbedaan yang signifikan

### D. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Poisson
menggunakan rumus rataan dan varian
```
rataan = l
rataan
varian = l
varian
```

## Soal 4
### Diketahui nilai x = 2 dan v = 10. Tentukan:

### A. Fungsi Probabilitas dari Distribusi Chi-Square
nilai x = 2 dan v = 10 dan menggunakan fungsi dchisq
```
x = 2
v = 10
#dschisq(x, v)
dchisq(2, 10)
```

### B. Histogram dari Distribusi Chi-Square dengan 100 data random
menggunakan fungsi hist() untuk menampilkan histogramnya
```
n = 100
v = 10
hist(rchisq(n, v), main = 'Histogram Distribusi Chi-Square', xlab='x', ylab = 'v')
```

### C. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Chi-Square.
menggunakan rumus rataan dan varian
```
rataan = v
rataan

varian = 2 * v
varian
```

## Soal 5
### Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### A. Fungsi Probabilitas dari Distribusi Exponensial
menggunakan rexp, set.seed
```
lambda = 3

set.seed(1)
rnorm(1)

p = rexp(1,lambda)
p

```

### B. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
menggunakan histogram di tiap lamda nya
```
set.seed(1)
hist(rexp(10,lambda), 
     main = "Histogram 10 Random")
hist(rexp(100,lambda), 
     main = "Histogram 100 Random")
hist(rexp(1000,lambda), 
     main = "Histogram 1000 Random")
hist(rexp(10000,lambda), 
     main = "Histogram 10000 Random")
```

### C. Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Exponensial untuk n = 100 dan λ = 3
menggunakan rataan dan varian
```
n = 100
set.seed(1)

rataan = mean(rexp(n,lambda))
rataan

varian = (sd(rexp(n,lambda)))^2
varian
```

## Soal 6
### Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### A. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot())
```
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
```

### B. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
```
breaks = 50
hist(zscore, breaks,
     main = "5025201138_Yusron Nugroho Aji_Probstat_D_DNhistogram"
)
```

### C. Nilai Varian (σ2) dari hasil generate random nilai Distribusi Normal
```
varian = (sd(zscore))^2
varian

```

