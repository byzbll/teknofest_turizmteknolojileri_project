class OnboardingModel {
  String image;
  String text;
  String title;

  OnboardingModel(
      {required this.image, required this.text, required this.title});
  static List<OnboardingModel> list = [
    OnboardingModel(
        image: "assets/images/hızlıgiris1.jpeg",
        title: "Eğlence Başlasın",
        text:
            "Gezi planın hazır! Görmen gereken yüzlerce yer seni bekliyor.Keyfini sürmenk senin elinde."),
    OnboardingModel(
        image: "assets/images/hızlıgiris2.jpeg",
        title: "Şehrini Seç",
        text:
            "Gideceğin güzergah zaman kaybı olmadan belirlensin.Tüm yolları keyfine göre ayarla."),
    OnboardingModel(
        image: "assets/images/hızlıgiris.jpeg",
        title: "Asistanı Takip Et",
        text: "Gerçek rehber deneyimini bir tıkla telefonundan anında yaşa."),
  ];
}
