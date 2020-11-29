import 'dart:convert';

class Band {
  String id;
  String name;
  int votes;

  Band({
    this.id,
    this.name,
    this.votes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'votes': votes,
    };
  }

  factory Band.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Band(
      id: map['id'],
      name: map['name'],
      votes: map['votes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Band.fromJson(String source) => Band.fromMap(json.decode(source));
}
