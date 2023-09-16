import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class GroupMenu extends Equatable {
  const GroupMenu({
    required this.docId,
    required this.name,
    required this.price,
  });

  final String docId;
  final String name;
  final double price;

  GroupMenu copyWith({
    String? name,
    double? price,
  }) {
    return GroupMenu(
      docId: docId,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  static GroupMenu fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) => GroupMenu(
        docId: doc.id,
        name: doc.data()!['name'],
        price: doc.data()!['price'].toDouble(),
      );

  Map<String, Object?> toDocument() => {
        'name': name,
        'price': price,
      };

  @override
  List<Object?> get props {
    return [
      docId,
      name,
      price,
    ];
  }
}
