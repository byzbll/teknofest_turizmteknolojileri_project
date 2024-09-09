class PlaceInfoTrabzon {
  final String image;
  final String locaciton;
  final String description;
  bool isFavorite;
  final String voice;
  final String locationUrl;

  PlaceInfoTrabzon(
      {required this.voice,
      required this.description,
      required this.image,
      required this.locaciton,
      required this.isFavorite,
      required this.locationUrl});
}

List placeList = [
  PlaceInfoTrabzon(
    image:"assets/images/ataturkkosku.jpg",
    locaciton: "Atatürk Köşkü",
    description:
        "Cumhuriyetin ilanından sonra, Sonbahar Gezisi adıyla Atatürk'ün yaptığı büyük yurt gezisi Dumlupınar'dan başlamıştı. Buradan Bursa'ya gelen Atatürk 12 Eylül 1924'te Hamidiye, Kruvazörü ile Mudanya'dan hareket etmiş. İstanbul Boğazından geçerek Karadeniz'e açılmış, 15 Eylül1924 sabahı saat 11. 00 de Trabzon'a gelmişti. Doğruca Belediyeye geldi. Öğleden sonra da, kendileri için dayanıp döşenen Soğuksu'daki köşke giderek dinlendiler. Köşk 1913 yılında yaptırılmış, Cumhuriyetin ilanından sonra da Özel İdarenin mülkiyetine geçmişti.",
    isFavorite: false,
    voice: 'ataturkkosku.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Atat%C3%BCrk+K%C3%B6%C5%9Fk%C3%BC/@40.9797269,39.6953222,17z/data=!3m1!4b1!4m5!3m4!1s0x40643e7f18c55ad7:0x70708cf7b4f872d2!8m2!3d40.9797269!4d39.6975109',
  ),
  PlaceInfoTrabzon(
    image: "assets/images/sumelamanastırı.jpg",
    locaciton: "Sümela ",
    description:
        "Trabzon’un Maçka İlçesi'nin Altındere Köyü sınırları içinde, Altındere vadisine hakim Karadağ’ın eteklerinde sarp bir kayalık üzerine kurulmuş olan Sümela Manastırı, halk arasında 'Meryem' Ana adı ile anılır. Vadiden yaklaşık 300 metre yükseklikte bulunan yapı, bu konumuyla manastırların şehir dışında, ormanlarda, mağara ve su kenarlarında kurulma geleneğini sürdürmüştür. Meryem Ana adına kurulan manastırın Sümela adını 'siyah' anlamına gelen 'melas' sözcüğünden aldığı söylenmektedir.",
    isFavorite: false,
    voice: 'sumelamanastırı.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/S%C3%BCmela+Manast%C4%B1r%C4%B1/@40.6901226,39.6562062,17z/data=!3m1!4b1!4m5!3m4!1s0x40645498cdbf568b:0x399f2299e21b4d07!8m2!3d40.6901226!4d39.6583949?hl=tr',
  ),
  PlaceInfoTrabzon(
    image: "assets/images/vazelonmanastırı.png",
    locaciton: "Vazelon",
    description:
        "270 yılında inşa edilen manastır, Trabzon şehir merkezinin 40 kilometre güneyinde yer almaktadır. İmparator I. Justinianus, 565 yılında manastırın onarılmasını istemiştir, o zamandan bu yana manastır pek çok kez yenilenmiştir. Mevcut bina 1410 yılında yeniden inşa edilmiştir.",
    isFavorite: false,
    voice: 'vazelonmanastırı.wav',
    locationUrl:
        'https://www.google.com.tr/maps/place/Vazelon+Manast%C4%B1r%C4%B1/@40.7597893,39.5277854,17z/data=!3m1!4b1!4m5!3m4!1s0x40645006721085d5:0xd122166a81e9e05b!8m2!3d40.7597893!4d39.5299741?hl=tr',
  ),
];
