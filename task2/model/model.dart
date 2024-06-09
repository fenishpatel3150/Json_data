class Albumdata {
  int userId;
  int id;
  String title;

  Albumdata({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Albumdata.fromJson(Map<String, dynamic> json) {
    return Albumdata(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
