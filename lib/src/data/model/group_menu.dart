import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class GroupMenu extends Equatable {
  const GroupMenu({
    required this.docId,
    required this.name,
  });

  final String docId;
  final String name;

  GroupMenu copyWith({
    String? name,
  }) {
    return GroupMenu(
      docId: docId,
      name: name ?? this.name,
    );
  }

  static GroupMenu fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) => GroupMenu(
        docId: doc.id,
        name: doc.data()!['name'],
      );

  Map<String, Object?> toDocument() => {
        'name': name,
      };

  @override
  List<Object?> get props {
    return [
      docId,
      name,
    ];
  }
}
