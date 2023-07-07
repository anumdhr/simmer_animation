class SunScreen {
  final String urlImage;
  final String title;
  final String description;

  SunScreen({
    required this.urlImage,
    required this.title,
    required this.description,
  });
}

List<SunScreen> sunScreen = [
  SunScreen(
      urlImage: "assets/images/drjkl.jpeg",
      title: "Dr Jkl",
      description: "Best for both oily and dry skin.True white finishing. One of the best type of sunscreen."),
  SunScreen(
    urlImage: "assets/images/fix shadow.jpg",
    title: "Fix Shadow",
    description: "Clinically approved sunscreen.Available in bothe cream based and gel based",
  ),
  SunScreen(
    urlImage: "assets/images/cerave.jpg",
    title: "CeraVe",
    description: "One of the expensive product available and clinically proved",
  ),
  SunScreen(
    urlImage: "assets/images/neutregena.jpeg",
    title: "Neutregena",
    description: "Best sunscreen available with less subum production",
  ),
  SunScreen(
    urlImage: "assets/images/mamaearth.jpg",
    title: "Mama Earth",
    description: "Nature based sunscreen available ",
  ),
];
