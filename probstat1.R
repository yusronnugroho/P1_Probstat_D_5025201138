# 1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya

#a
#Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?(distribusi Geometrik)
x = 3
p = 0.20
peluang = dgeom(x-1,p)
peluang

#b
#Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
n = 10000
mean(rgeom(n,p)==3)

#d
#Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
hist(rgeom(n, prob = 0.20), main = 'Histogram Distribusi Geometrik')

#e
#Nilai Rataan (μ) dan Varian (σ2) dari Distribusi Geometrik
#nilai Rataan
rataan = x/p
rataan
#Varian
varian = (x-p)/(p^2)
varian