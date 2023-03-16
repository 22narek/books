class ItemModel {
  List<Items>? items;

  ItemModel({this.items});

  ItemModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? title;
  String? author;
  String? year;
  String? description;
  String? imageUrl;
  bool? isFavoite;

  Items(
      {this.id,
      this.title,
      this.author,
      this.year,
      this.description,
      this.imageUrl,
      this.isFavoite});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    year = json['year'];
    description = json['description'];
    imageUrl = json['imageUrl'];
    isFavoite = json['isFavoite'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['author'] = author;
    data['year'] = year;
    data['description'] = description;
    data['imageUrl'] = imageUrl;
    data['isFavoite'] = isFavoite;
    return data;
  }

  Items copyWith({
    bool? isFavoite,
  }) {
    return Items(
        id: id,
        title: title,
        author: author,
        year: year,
        description: description,
        imageUrl: imageUrl,
        isFavoite: isFavoite ?? this.isFavoite);
  }
}
