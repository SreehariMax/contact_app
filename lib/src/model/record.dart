class RecordsModel {
  final String name;
  final String address;
  final String contact;
  final String photo;
  final String url;

  const RecordsModel(
      {required this.name,
      required this.address,
      required this.contact,
      required this.photo,
      required this.url});

  factory RecordsModel.fromJSON(Map<String, dynamic> json) {
    return RecordsModel(
        name: json['name'],
        address: json['address'],
        contact: json['contact'],
        photo: json['photo'],
        url: json['url']);
  }
}
