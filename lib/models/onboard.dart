class OnBoard {
  final String title;
  final String description;
  final String image;

  OnBoard({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBoard> onBoardData = [
  OnBoard(
    title: 'Read your {{favorite}} books',
    description: 'Enjoy your favorite books on the go',
    image: 'assets/illustrations/onboard.png',
  ),
  OnBoard(
    title: "Huge {{library}} of books",
    description: "We help people connect with pet \naround your Location",
    image: "assets/illustrations/onboard2.png",
  ),
  OnBoard(
    title: "Instant {{access}} to millions of books",
    description:
        "We show the easy way to adopt pet. \nJust stay at home with us.",
    image: "assets/illustrations/onboard3.png",
  ),
];
