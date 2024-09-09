class PlaceInfoIzmir {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoIzmir(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  
 PlaceInfoIzmir(
    image: "assets/images/efes.jpg",
    locaciton: "Efes",
    description:
        "Anadolu'nun batı kıyısında, bugünkü İzmir ilinin Selçuk ilçesinin üç kilometre güneybatısındaki İyonya kıyısında ve sonraları önemli bir Roma kenti olan antik bir Yunan kentiydi. Kuruluşu Cilalı Taş Devri MÖ 6000 yıllarına dayanır. MÖ 10. yüzyılda eski Arzawa başkentinin yerine Attik ve İyonyalı Yunan kolonistleri tarafından inşa edilmiştir.",
    isFavorite: false,
    voice: 'efesantikkenti.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+izmir+efes/@38.1881139,26.9715303,10z/data=!3m1!4b1',
  ),
  PlaceInfoIzmir(
    image: "assets/images/artemis.jpg",
    locaciton: "Artemis",
    description:
        "Artemis Tapınağı Türkiye'nin İzmir ili sınırları içerisinde bulunur. Bu yapı tanrıça Artemis için yapılmıştır. Bu nedenle oldukça görkemli bir mimarisi vardır. M.Ö. 550 yılında tamamlandığı bilinmektedir. Günümüzde pek çok yerli ve yabancı turist bu yapıyı görmeye gelmektedir.",
    isFavorite: false,
    voice: 'artemistapınagi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Artemis+Tap%C4%B1na%C4%9F%C4%B1/@37.9493601,27.3616675,17z/data=!3m1!4b1!4m5!3m4!1s0x14b94d56fca57281:0xfaa6e359607f4524!8m2!3d37.9495785!4d27.3639125',
  ),
   PlaceInfoIzmir(
    image: "assets/images/pergamon.jpg",
    locaciton: "Pergamon",
    description:
        "Günümüzde İzmir iline bağlı Bergama ilçesinin merkezinin yerinde kurulu antik kentin adıdır. Pergamon, eski çağlarda Misya bölgesinin önemli merkezlerinden biriydi. MÖ 282-133arasında da Pergamon Krallığı'nın başkentiydi. Pergamon adı, bir söylence kahramanı olan Pergamos'tan gelir.",
    isFavorite: false,
    voice: 'pergamonantikkenti.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Pergamon+Kral+Saraylar%C4%B1/@39.1327276,27.1811307,17z/data=!3m1!4b1!4m5!3m4!1s0x14b9f89a1b8fae83:0xf86bfb39f7a99e84!8m2!3d39.1327276!4d27.1833194',
  ),

  
];
