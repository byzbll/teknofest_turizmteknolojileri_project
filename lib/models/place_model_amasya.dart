import 'package:flutter/cupertino.dart';

class PlaceInfoAmasya{
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoAmasya(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
 PlaceInfoAmasya(
    image: "assets/images/amasyakalesi.jpg",
    locaciton: "Amasya Kalesi",
    description:
        "Amasya Kalesi, Amasya il merkezinin kuzeyini kaplayan Harşena Dağı üzerindedir. Harşena Kalesi adıyla da bilinir. Amasya Kalesi’nin üzerinde inşa edildiği kaya denizden 700 metre Yeşilırmak’tan ise 300 metre yüksekte bulunmaktadır. Bazı tarihçilere göre kaleyi Pontus Kralı Mithridates yaptırmıştır. Bazılarına göre ise Kumandan Karsan veya Harsana yaptırdığı için kale Harşana/Harşena ismini almıştır.",
    isFavorite: false,
    voice: 'amasyakalesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Amasya+Har%C5%9Fena+Kalesi/@40.6554571,35.8246229,17z/data=!3m1!4b1!4m5!3m4!1s0x40876e48d3e7574b:0x625b3aebf41e7e6b!8m2!3d40.6555049!4d35.8269217',
  ),
  PlaceInfoAmasya(
    image: "assets/images/kralkayamezarları.jpeg",
    locaciton: "Kral Mezarları",
    description:
        "Helenistik Dönem'de, Amasya’yı İÖ. 302’den İÖ. 26’ya kadar başkent olarak kullanan Pontus Krallarına ait olan Kral Kaya Mezarları, Amasya Kalesi eteklerinde düz bir duvar gibi dikine uzanan kalker kayalara oyularak yapılmıştır. Hatuniye Mahallesi’nin dar sokaklarından, tren yolunu geçerek çıkılan mezarların arasında, kayaya oyulmuş yollar ve merdivenler bulunmaktadır. Yeşilırmak Vadisi boyunca, irili ufaklı 21 mezar olduğu bilinmekle birlikte bunlardan sadece birkaç tanesi günümüze gelebilmiştir.",
    isFavorite: false,
    voice: 'kralkayamezarları.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+kral+kaya+mezarlar%C4%B1/@40.6083868,35.5616042,8z/data=!3m1!4b1',
  ),
  PlaceInfoAmasya(
    image: "assets/images/arkeolojimuzesi.jpg",
    locaciton: "Arkeoloji Müzesi",
    description:
        "1980 yılında şimdiki modern binasına taşınan müzede Geç Neolitik Erken Kalkolitik Çağ’dan itibaren Tunç Çağı, Hitit, Urartu, Frig, İskit, Pers, Helenistik, Roma, Bizans, Selçuklu ve Osmanlı Dönemlerine ait 13 ayrı medeniyetin eserlerini bir arada görmek mümkündür. Müze binasının batısında bulunan müze bahçesi içerisinde Hitit, Helenistik, Roma, Bizans, İlhanlı, Selçuklu ve Osmanlı Dönemlerine ait taş eserler sergilenmektedir. ",
    isFavorite: false,
    voice: 'amasyaarkeolojimuzesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Amasya+Arkeoloji+M%C3%BCzesi/@40.6495626,35.8224602,17z/data=!3m1!4b1!4m5!3m4!1s0x40876e523ba178ab:0x104d317738ce7265!8m2!3d40.6495626!4d35.8246489',
  ),
];
