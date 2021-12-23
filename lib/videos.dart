import 'dart:ffi';

class Videos {
  final int id;
  final Array src;
  final bool relay;
  final int volumn;

  Videos({
    required this.id,
    required this.src,
    required this.relay,
    required this.volumn,
  });

  factory Videos.fromJson(Map<String, dynamic> json) {
    return Videos(
      id: json['id'],
      src: json['src'],
      relay: json['relay'],
      volumn: json['volumn'],
    );
  }
}
