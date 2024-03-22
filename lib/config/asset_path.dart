class AssetPath {
  static const String _imagePath = "assets/images";
  static const String _iconPath = "assets/icons";

  // Icons
  static const String iconEnrolled = "$_iconPath/enrolled-mem.svg";
  static const String iconInstructor = "$_iconPath/instructor.svg";
  static const String iconSession = "$_iconPath/session.svg";
  static const String iconSmily = "$_iconPath/smily.svg";

  // Imagess
  static const String logo = "$_imagePath/logo.png";
  static const String homeBg = "$_imagePath/home-bg.jfif";
  static const String girlWarmUp = "$_imagePath/girl-warm-up.jfif";
  static const String girlYoga = "$_imagePath/girl-yoga.jfif";
  static const String boy = "$_imagePath/boy.jfif";
  static const String meditating = "$_imagePath/meditating.jfif";
  static const String manandher = "$_imagePath/manandher.png";
  static const String homeContact = "$_imagePath/home-contact.png";

  static String gallaryImage(int index) => "$_imagePath/g${index + 1}.png";
}
