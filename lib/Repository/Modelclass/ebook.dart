class Ebook {
  Ebook({
      this.bookId, 
      this.name, 
      this.author, 
      this.votes, 
      this.cover, 
      this.url,});

  Ebook.fromJson(dynamic json) {
    bookId = json['book_id'];
    name = json['name'];
    author = json['author'];
    votes = json['votes'];
    cover = json['cover'];
    url = json['url'];
  }
  int? bookId;
  String? name;
  String? author;
  int? votes;
  String? cover;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['book_id'] = bookId;
    map['name'] = name;
    map['author'] = author;
    map['votes'] = votes;
    map['cover'] = cover;
    map['url'] = url;
    return map;
  }

  static List<Ebook> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => Ebook.fromJson(value)).toList();
  }

}