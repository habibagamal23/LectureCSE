class Data{
  String date;
  String title;
  int color;
  String image1;
  String image2;
  Data({required this.date,required this.title,required this.color,required this.image1,required this.image2});
}
List<Data> listData = [
  Data(
    date: "TODAY 8:30 PM",
    title: "Android",
    color: 0xFF000000,
    image1: 'assets/images/a.jpeg',
    image2: 'assets/images/b.jpeg',
  ),
  Data(
    date: "TEUSDAY 5:30 PM",
    title: "Kotlin",
    color: 0xFF52b5f0,
    image1: 'assets/images/a.jpeg',
    image2: 'assets/images/b.jpeg',
  ),
  Data(
    date: "THURDAY 6:30 AM",
    title: "Java",
    color: 0xFF6f6eee,
    image1: 'assets/images/a.jpeg',
    image2: 'assets/images/b.jpeg',
  ),
  Data(
    date: "FRIDAY 4:30 PM",
    title: "Flutter",
    color: 0xFF913bfc,
    image1: 'assets/images/a.jpeg',
    image2: 'assets/images/b.jpeg',
  ),
];