class WebtoonModel {
  final String titile;
  final String thumb;
  final String id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : titile = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
