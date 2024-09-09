class PlaceInfoCanakkale {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;
  PlaceInfoCanakkale(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  PlaceInfoCanakkale(
    image: "assets/images/alaysehitligi.jpg",
    locaciton: "57. Alay Şehitliği",
    description:
        "57. Alay Şehitliği, şadırvan, açık namazgâh, ana mezarlık ve anıttan oluşmaktadır. Şehitlikte kullanılan başlıca malzeme; genellikle Selçuklu ve Osmanlı kervansaraylarında kullanılan Kevser taşıdır. Şehitliğin girişi; Kabatepe-Conkbayırı yolunun kenarında, doğu duvarındaki bir açıklıktır. Girişin hemen yanında torununun elini tutmuş bir şekilde figürize edilmiş; Türkiye’nin en yaşlı gazisi iken 10 Eylül1994’te, 108 yaşında vefat eden Hüseyin Kaçmaz’ın bronzdan yapılmış bir heykeli bulunmaktadır.",
    isFavorite: false,
    voice: 'alaysehitligi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/57.+Piyade+Alay%C4%B1+%C5%9Eehitli%C4%9Fi/@40.2402496,26.2901792,17z/data=!3m1!4b1!4m5!3m4!1s0x14b1a597ca902ff1:0x97bc259f7b8a7254!8m2!3d40.2402496!4d26.2923679',
  ),
  PlaceInfoCanakkale(
    image: "assets/images/truvaati.jpg",
    locaciton: "Truva Atı",
    description:
        "Truva Antik Kenti 1998 yılında Dünya Miras Listesi’ne alınmıştır. Arkeolojik çalışmaları hala devam etmektedir. Çanakkale iline bağlı Tevfikiye köyü yakınlarındadır. 1871 yılından beri ara ara kazıları devam eden, tarih boyunca farklı medeniyetlere ev sahipliği yapmış bu kent büyük bir alana yayılmıştır. Kazılarla ortaya çıkan tiyatro alanı, hamamlar ve çeşitli yaşam alanları ve o dönemlere göre son derece gelişmiş bir kanalizasyon sistemi ortaya çıkarılmıştır.",
    isFavorite: false,
    voice: 'truvaati.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Truva+At%C4%B1/@40.1520614,26.4032697,17z/data=!3m1!4b1!4m5!3m4!1s0x14b1a9cdda157e6b:0x820724da4bd3b098!8m2!3d40.1520614!4d26.4054584',
  ),
  PlaceInfoCanakkale(
    image: "assets/images/sehitlerabidesi.png",
    locaciton: "Şehitler Abidesi",
    description:
        "Gelibolu Yarımadası’nın en çok ziyaret edilen ana ziyaret noktası olan Abide, Eski hisarlık Burnu üzerinde yer almaktadır. 1915 yılında I. Dünya Savaşı sırasında Çanakkale Savaşları'nda hayatını kaybeden Türk askerlerin anısına yaptırıldı. Dört ayak ve bir kubbeden oluşan 41,7 metre yüksekliğindeki yapı, Feridun Kip, İsmail Utkular ve Doğan Erginbaş tarafından tasarlanmıştır. Temeli 17 Nisan 1954 tarihinde atılmıştır. İkinci Anafartalar Zaferi’nin 45. Yıldönümü olan 21 Ağustos 1960 tarihi ziyarete açılan Çanakkale Şehitler Abidesi, Çanakkale Muharebeleri’nde şehit düşen tüm askerlerimizi simgelemekte ve onların anısını yaşatmaktadır.  ",
    isFavorite: false,
    voice: 'sehitlerabidesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/%C3%87anakkale+%C5%9Eehitler+Abidesi/@40.0498333,26.2168442,17z/data=!3m1!4b1!4m5!3m4!1s0x14b04d7909b54199:0x6d329c06deeabf9a!8m2!3d40.0498333!4d26.2190329?hl=tr',
  ),
];
