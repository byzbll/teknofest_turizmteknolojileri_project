class PlaceInfoKutahya {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoKutahya (
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  PlaceInfoKutahya (
    image: "assets/images/aizonai.jpg",
    locaciton: "Aizonai",
    description:
        "Aizanoi antik kenti, Kütahya şehir merkezine 58 kilometre uzaklıkta güneybatıda bulunur. Dünyanın ilk borsası yapılan kazılarda ortaya çıkmış ve keşfedilmiştir. Çavdarhisar ilçesinin içinden antik kente girdiğinizde sizi öncelikle Kocaçay deresinin üzerinde restore edilmiş bir antik köprü karşılayacaktır. Bu köprüye Aizanoi köprüsü denilmektedir. Sonrasında ise 1970 depreminde hasar gören evlerin arasından Zeus tapınağı tüm ihtişamı ile karşınıza çıkacaktır.",
    isFavorite: false,
    voice: 'aizonai.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+k%C3%BCtahya+aizonai/@39.2984098,29.5367158,10z/data=!3m1!4b1?hl=tr',
  ),
 PlaceInfoKutahya (
    image: "assets/images/frigvadisi.jpg",
    locaciton: "Frig Vadisi",
    description:
        "Hititlerden sonra Demir Çağı’nda Anadolu’daki egemen güçlerden biri olan Friglerin 11. yüzyılın ortalarında Boğazlar üzerinden Anadolu’ya geldikleri sanılmaktadır. M.Ö. 8. yüzyılın ortalarında merkezi Ankara yakınlarındaki Gordion olan bir krallık kurmuşlardır. Burada yapılan kazılarda Frig uygarlığına ait pek çok bilgi ve bulgu elde edilmiştir.",
    isFavorite: false,
    voice: 'firigvadisi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Frig+Vadisi+Yolu,+K%C3%BCtahya+Merkez%2FK%C3%BCtahya/@39.5665589,30.1232488,17z/data=!3m1!4b1!4m5!3m4!1s0x14c95312093138f1:0x8331d5403598e88b!8m2!3d39.5665589!4d30.1254375?hl=tr',
  ),
 PlaceInfoKutahya (
    image: "assets/images/germiyansokağı.jpg",
    locaciton: "Germiyan Sokağı",
    description:
        "19 yy. sivil mimarlık örneklerinden olan ve konut mimarisi bakımından Anadolu’nun ahşap mimari özelliklerini taşıyan Kütahya evleri, aslına uygun olarak hala yaşamaktadır. Kendine özgü iki ve üç katlı mimarileri, ahşap payandalı çıkmaları,pencere düzeni vegeniş saçakları ile eski konak kültürünün en güzel örneklerini bugüne taşımaktadır.",
    isFavorite: false,
    voice: 'germiyansokağı.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+k%C3%BCtahya+germiyan+soka%C4%9F%C4%B1/@39.4213806,29.9758838,17z/data=!3m1!4b1?hl=tr',
  ),
];
