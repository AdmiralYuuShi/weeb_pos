import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'model.dart';

class UserData extends Equatable {
  const UserData({
    this.docId,
    required this.email,
    required this.name,
    required this.merchantId,
    this.avatar,
    required this.versionInfo,
  });

  final String? docId;
  final String email;
  final String name;
  final String merchantId;
  final String? avatar;
  final VersionInfo versionInfo;

  UserData copyWith({
    String? docId,
    String? email,
    String? name,
    String? avatar,
    String? merchantId,
    VersionInfo? versionInfo,
  }) {
    return UserData(
      docId: docId ?? this.docId,
      email: email ?? this.email,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      merchantId: merchantId ?? this.merchantId,
      versionInfo: versionInfo ?? this.versionInfo,
    );
  }

  factory UserData.fromMap(Map<String, dynamic> map) => UserData(
        docId: map['id'],
        email: map['email'],
        name: map['name'],
        avatar: map['avatar'],
        merchantId: map['merchant_id'],
        versionInfo: VersionInfo.fromMap(map['version_info']),
      );

  Map<String, dynamic> toMap() => {
        'id': docId,
        'email': email,
        'name': name,
        'avatar': avatar,
        'merchant_id': merchantId,
        'version_info': versionInfo.toMap(),
      };

  static UserData fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    return UserData(
      docId: doc.id,
      email: doc.data()!['email'],
      name: doc.data()!['name'],
      avatar: doc.data()!['avatar'],
      merchantId: doc.data()!['merchant_id'],
      versionInfo: VersionInfo.fromMap(doc.data()!['version_info']),
    );
  }

  Map<String, Object?> toDocument() => {
        'email': email,
        'name': name,
        'avatar': avatar,
        'merchant_id': merchantId,
        'version_info': versionInfo.toMap(),
      };

  @override
  List<Object?> get props {
    return [
      docId,
      email,
      name,
      avatar,
      merchantId,
      versionInfo,
    ];
  }
}
