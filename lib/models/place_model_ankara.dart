class PlaceInfoAnkara {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoAnkara(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  PlaceInfoAnkara(
    image: "assets/images/anıtkabir.png",
    locaciton: "Anıtkabir",
    description:
        "Türk Kurtuluş Savaşı'nın ve Türk İnkılâplarının büyük önderi Türkiye Cumhuriyeti'nin kurucusu Mustafa Kemal Atatürk'ün, Türk vatanının bağımsızlığını kazanması için giriştiği savaş ve Türk milletini çağdaş uygarlık seviyesine ulaştırmak amacıyla gerçekleştirdiği inkılâplarla geçen yaşamı 57 yıl sürmüş ve Büyük Önder 10 Kasım 1938'de ebediyete intikal etmiştir… ",
    isFavorite: false,
    voice: 'Anıtkabir.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+an%C4%B1tkabir/@39.9297247,32.8321362,16z/data=!3m1!4b1?hl=tr',
  ),
  PlaceInfoAnkara(
    image: "assets/images/atakule.jpg",
    locaciton: "Atakule",
    description:
    "13 Ekim 1989 tarihinde Ankara'nın başkent oluşunun 66. yıldönümüne denk gelen günde 8. Cumhurbaşkanı Turgut Özal tarafından açılışı yapılan kulenin altında, Türkiye'nin ikinci ve Ankara'nın ilk Alışveriş Merkezi hizmet vermeye başlamıştır. Yapının adı bir yarışma sonucu belirlenmiştir. Modern alışveriş merkezinin plan ve projesi Mimar Ragıp Buluç tarafından hazırlandı.",
    isFavorite: false,
    voice: 'Atakule.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/%C3%87ankaya,+Atakule,+06690+%C3%87ankaya%2FAnkara/@39.8865659,32.8532707,17z/data=!3m1!4b1!4m5!3m4!1s0x14d34f804ea7ce91:0x421752adde71b8f5!8m2!3d39.8865659!4d32.8554594',
  ),
  PlaceInfoAnkara(
    image: "assets/images/ankarakalesi.jpg",
    locaciton: "Ankara Kalesi",
    description:
       "Kalenin yerden yüksekliği 110 m'dir. Tepenin yüksek bölümünü kaplayan iç kale ve çevresini kuşatan dış kaleden oluşur. Dış kalenin 20'ye yakın kulesi vardır. Dış kale eski Ankara şehrini çevirir. İç kale yaklaşık 43.000 m²'lik bir yer kaplar. 14-16 m yüksekliğindeki duvarların üstünde çoğu 5 köşeli 42 kule vardır.",
    isFavorite: false,
    voice: 'AnkaraKalesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Kale,+06250+Alt%C4%B1nda%C4%9F%2FAnkara/@39.9394382,32.8562367,15z/data=!3m1!4b1!4m5!3m4!1s0x14d34e68e57c5b3b:0x6d93b0d0bb547916!8m2!3d39.9397564!4d32.8662635',
  ),
  
];
