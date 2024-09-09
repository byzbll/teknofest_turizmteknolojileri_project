class PlaceInfo {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfo(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  
 
  PlaceInfo(
    image: "assets/images/kızkulesi.jpeg",
    locaciton: "Kız Kulesi",
    description:
        "Kız Kulesi, hakkında çeşitli rivayetler anlatılan, efsanelere konu olan, İstanbul Boğazı'nın Marmara Denizi'ne yakın kısmında, Salacak açıklarında yer alan küçük adacık üzerinde inşa edilmiş yapıdır. Üsküdar'ın sembolü haline gelen kule, Üsküdar’da Bizans devrinden kalan tek eserdir. MÖ 24 yıllarına kadar uzanan tarihi bir geçmişe sahip olan kule, Karadeniz’in Marmara ile birleştiği yerde küçük bir ada üzerinde kurulmuştur. ",
    isFavorite: false,
    voice: 'KızKulesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/K%C4%B1z+Kulesi/@41.0211216,29.0019218,17z/data=!3m1!4b1!4m5!3m4!1s0x14cab82bea99445f:0x6ed7f4baceb4476c!8m2!3d41.0211216!4d29.0041105',
  ),
   PlaceInfo(
    image: "assets/images/ayasofya.jpg",
    locaciton: "Ayasofya",
    description:
        "Ayasofya veya resmî olarak Ayasofya-i Kebîr Câmi-i Şerîfi, eskiden Kutsal Bilgelik Kilisesi ve Ayasofya Müzesi, İstanbul'da yer alan bir cami, eski bazilika, katedral ve müze. Bizans İmparatoru I. Justinianus tarafından, 532-537 yılları arasında İstanbul'un tarihî yarımadasındaki eski şehir merkezine inşa ettirilmiş bazilika planlı bir patrik katedrali olup 1453 yılında İstanbul'un Osmanlılar tarafından fethedilmesinden sonra II. Mehmed tarafından camiye dönüştürülmüştür. Mustafa Kemal Atatürk tarafından 1934 yılında yayımlanan Bakanlar Kurulu Kararnamesi ile müzeye dönüştürülmüş, kazı ve tadilat çalışmaları başlatılmış ve 1935-2020 yılları arasında müze olarak hizmet vermiştir. 2020 yılında ise müze statüsü iptal edilerek cami statüsü verilmiştir.",
    isFavorite: false,
    voice: 'Ayasofya.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Ayasofya+Camii/@41.008583,28.9779863,17z/data=!3m1!4b1!4m5!3m4!1s0x14cab9be92011c27:0x236e6f6f37444fae!8m2!3d41.008583!4d28.980175',
  ),

  PlaceInfo(
    image: "assets/images/galata.jpeg",
    locaciton: "Galata Kulesi",
    description:
        "Galata Kulesi , Türkiye'nin İstanbul şehrinin Beyoğlu ilçesinde bulunan bir kuledir. Adını, bulunduğu Galata semtinden alır. Galata Surları dahilinde bir gözetleme kulesi olarak inşa edilen kule günümüzde, bir sergi alanı ve müze olarak kullanılır. Hem Beyoğlu'nun hem de İstanbul'un sembol yapılarındandır.",
    isFavorite: false,
    voice: 'GalataKulesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Galata+Kulesi/@41.0262421,28.9712817,18z/data=!4m5!3m4!1s0x14cab9e7a7777c43:0x4c76cf3dcc8b330b!8m2!3d41.0256998!4d28.9741088',
  ),
];
