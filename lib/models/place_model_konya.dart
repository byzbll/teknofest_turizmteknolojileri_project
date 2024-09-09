class PlaceInfoKonya {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoKonya(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  PlaceInfoKonya(
    image: "assets/images/catalhoyuk.jpg",
    locaciton: "Çatalhöyük",
    description:
        "Çatalhöyük, Orta Anadolu'da, günümüzden 9 bin yıl önce yerleşim yeri olmuş, çok geniş bir Neolitik Çağ ve Kalkolitik Çağ yerleşim yeridir. Doğu ve batı yönlerinde yan yana iki höyükten oluşmaktadır. Doğudaki Çatalhöyük (Doğu) olarak adlandırılan yerleşme Neolitik Çağ'da, Çatalhöyük (Batı) olarak adlandırılan batıdaki höyük ise Kalkolitik Çağ'da iskan görmüştür. Bugünkü Konya şehrinin 52 km güneydoğusundadır.",
    isFavorite: false,
    voice: 'catalhoyuk.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+konya+%C3%A7atalh%C3%B6y%C3%BCk/@37.7096188,32.3938829,10z/data=!3m1!4b1',
  ),
  PlaceInfoKonya(
    image: "assets/images/mevlanamuzesi.png",
    locaciton: "Mevlana Müzesi",
    description:
        "Bugün müze olarak kullanılmakta olan Mevlâna Dergâhı'nın yeri, Selçuklu Sarayı'nın Gül Bahçesi iken bahçe, Sultan Alâeddin Keykubad tarafından Mevlâna'nın babası Sultânü'l-Ulemâ Bâhaeddin Veled'e hediye edilmiştir. Sultânü'l-Ulemâ 12 Ocak 1231 tarihinde vefat edince türbedeki bugünkü yerine defnedilmiştir. Bu defin gül bahçesine yapılan ilk defindir.",
    isFavorite: false,
    voice: 'mevlanamuzesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Mevlana+M%C3%BCzesi/@37.8707281,32.5028103,17z/data=!3m1!4b1!4m5!3m4!1s0x14d0851041d7b9a3:0x843bb18685ba9410!8m2!3d37.8707281!4d32.504999',
  ),
  PlaceInfoKonya(
    image: "assets/images/kelebekbahcesi.jpg",
    locaciton: "Kelebek Bahçesi",
    description:
        "Türkiye'deki ilk kelebek koruma alanıdır. 1,200 m² kelebek uçuş alanına sahiptir. Soğuk yarı kurak bir iklime sahip olan şehirde tüm yıl boyunca 26 °C sabit sıcaklıkta ve %80 nemde tutulur. Çevre, 150'den fazla türe ait 20.000'den fazla tropikal bitkiye ve 45 türe ait yağmur ormanı habitatlarından binlerce tropikal kelebeğe yaşam alanı sağlar. Kelebeklerin tırtıl larvasından pupaya ve son olarak ergin evresine kadar tüm yaşam döngüleri gözlemlenebilir",
    isFavorite: false,
    voice: 'kelebekbahcesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Konya+Tropikal+Kelebek+Bah%C3%A7esi/@37.9484522,32.4596218,17z/data=!3m1!4b1!4m5!3m4!1s0x14d08f2770a72ced:0x3a395c06ca6f41b7!8m2!3d37.9484522!4d32.4618105',
  ),
];
