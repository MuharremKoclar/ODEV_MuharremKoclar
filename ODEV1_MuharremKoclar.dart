void main(List<String> args) {
  var urun = new Product();
  urun.renk = "Gri";
  urun.barkod = "122741585";
  urun.satisfiyat = 150;
  urun.ad = "Çanta";
  urun.kategori="Okul Malzemeleri";
  urun.miktar=650;
  var tarih = DateTime.now();

  print(urun.UrunEkle());
  print(urun.UrunSil(urun.barkod));
  print(urun.UrunGuncelle(urun.barkod));
  print(urun.UrunListele(urun));
  print("İşlem Tarihi:");
  print(tarih);
  
}

class Product {
  var renk;
  var barkod;
  var satisfiyat;
  var ad;
  var kategori;
  var miktar;
  
  bool UrunEkle() {
    return true;
  }

  String UrunSil(barkod) {
    return "$barkod numaralı ürün başarıyla eklendi.";
  }

  String UrunGuncelle(barkod) {
    return "$barkod numaralı ürün başarıyla güncellendi.";
  }

  List UrunListele(Product p) {
    return [p.barkod,p.ad,p.kategori, p.miktar, p.satisfiyat];
  }
}