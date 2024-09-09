class PlaceInfoAntalya {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoAntalya(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  PlaceInfoAntalya(
    image: "assets/images/perge.jpg",
    locaciton: "Perge Antik",
    description:
        "Perge Antik Kenti Antalya şehir merkezinin 17 kilometre doğusunda bulunan Aksu ilçesinde yer alır. Hitit Dönemi'nde varlığını sürdürdüğüne inanılan ve 'Parha' diye bilinen kent Roma Dönemi'nde Anadolu'nun en düzenli kentlerinden biri olmuştur. Mimarisi ve mermer heykeltıraşlığı ile ünlü olan antik kentte yapılan kazılarda ortaya çıkarılan heykeller Antalya Müzesi'ni en önemli heykel müzelerinden biri haline getirmiştir.",
    isFavorite: false,
    voice: 'GalataKulesi.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Perge+Antik+Kenti/@36.9574934,30.8499935,17z/data=!3m1!4b1!4m5!3m4!1s0x14c381a96a370743:0xc68467e8d8ebb407!8m2!3d36.9574934!4d30.8521822',
  ),

   PlaceInfoAntalya(
    image: "assets/images/mira.jpg",
    locaciton: "Myra Antik",
    description:
        "Taşınan topraklarla oluşmuş verimli alüvyon ovasına kurulmuştur. Bugünkü Demre ilçe merkezi ve civarında yer alan Myra Antik Kenti, aynı adı taşıyan ova üzerinde kurulmuştur. Myros Nehri'nin (Demre Çayı) batısındaki ulaşıma elverişli kanal ile şehrin denizle bağlantısı sağlanmaktaydı. Kanalın diğer yanında yer alan Andriake (Çayağzı) Limanı'ndan da bölgenin deniz ulaşımı ve ticareti yürütülmekteydi. Myra Antik Kenti özellikle Likya Dönemi kaya mezarları, Roma Dönemi tiyatrosu ve Bizans Dönemi Aziz Nikolaos Kilisesi (Noel Baba) ile ünlüdür.",
    isFavorite: false,
    voice: 'MiraAntikKenti.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Myra+Antik+Kenti/@36.257891,29.9838684,17z/data=!3m1!4b1!4m5!3m4!1s0x14c1f20daaaaaaab:0x5b0823a7d917edc2!8m2!3d36.257891!4d29.9860571',
  ),
  PlaceInfoAntalya(
    image: "assets/images/aspendos.jpeg",
    locaciton: "Aspendos ",
    description:
        "Aspendos, bölgede kendi adına madeni para bastıran ilk şehirlerden biridir. Yunan efsanesine göre, şehir Truva Savaşı'ndan sonra Pamphylia'ya gelen kahraman Mopsos liderliğindeki Argive kolonicileri tarafından kurulmuştur. Aspendos'ta en göze çarpan yapı kuşkusuz yaklaşık 12.000 kişilik, iyi korunmuş amfitiyatrodur. Tiyatronun yanında bir bazilika bulunur, kentin diğer kalıntıları ise tiyatronun arkasında, akropolün yukarısında yer alırlar. Aspendos'un gözden kaçırılmaması gereken bir diğer kalıntısı da su kemerleridir. Kuzeydeki dağlardan şehre su getiren 1 km uzunluğundaki bu kemerler dizisi olağanüstü bir mühendislik becerisini ortaya koyar ve eski çağlardan günümüze kalan nadir örneklerdendir.",
    isFavorite: false,
    voice: 'Aspendos.wav',
    locationUrl:
        'https://www.google.com.tr/maps/search/google+map+aspendos/@38.4881657,27.0508679,5z/data=!3m1!4b1',
  ),
 
];
