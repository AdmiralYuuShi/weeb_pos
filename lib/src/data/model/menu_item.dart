import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import '../data.dart';
import 'combo_item.dart';

class MenuItem extends Equatable {
  const MenuItem({
    required this.docId,
    required this.name,
    required this.groupId,
    required this.price,
    required this.versionInfo,
    this.description,
    this.combo,
    this.picture,
  });

  final String docId;
  final String name;
  final String? description;
  final String groupId;
  final double price;
  final List<ComboItem>? combo;
  final String? picture;
  final VersionInfo versionInfo;

  MenuItem copyWith({
    String? name,
    String? description,
    String? groupId,
    double? price,
    List<ComboItem>? combo,
    String? picture,
    VersionInfo? versionInfo,
  }) {
    return MenuItem(
      docId: docId,
      name: name ?? this.name,
      description: description ?? this.description,
      groupId: groupId ?? this.groupId,
      price: price ?? this.price,
      combo: combo ?? this.combo,
      picture: picture ?? this.picture,
      versionInfo: versionInfo ?? this.versionInfo,
    );
  }

  @override
  List<Object?> get props {
    return [
      docId,
      name,
      description,
      groupId,
      price,
      combo,
      picture,
      versionInfo,
    ];
  }

  static MenuItem fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) => MenuItem(
        docId: doc.id,
        name: doc.data()!['name'],
        description: doc.data()!['description'],
        groupId: doc.data()!['group_id'],
        price: doc.data()!['price'].toDouble(),
        combo: doc.data()!['combo'],
        picture: doc.data()!['picture'],
        versionInfo: VersionInfo.fromMap(doc.data()!['version_info']),
      );

  Map<String, Object?> toDocument() => {
        'name': name,
        'description': description,
        'group_id': groupId,
        'price': price,
        'combo': combo,
        'picture': picture,
        'version_info': versionInfo.toMap(),
      };
}
