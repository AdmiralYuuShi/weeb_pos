import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class VersionInfo extends Equatable {
  const VersionInfo({
    required this.updatedAt,
    required this.updatedBy,
    required this.version,
  });

  final DateTime updatedAt;
  final String updatedBy;
  final int version;

  VersionInfo copyWith({
    DateTime? updatedAt,
    String? updatedBy,
    int? version,
  }) {
    return VersionInfo(
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      version: version ?? this.version,
    );
  }

  VersionInfo update({String? updatedBy}) => VersionInfo(
        updatedAt: DateTime.now(),
        updatedBy: updatedBy ?? this.updatedBy,
        version: version + 1,
      );

  factory VersionInfo.fromMap(Map<String, dynamic>? map) => map == null
      ? VersionInfo(updatedBy: '', updatedAt: DateTime.now(), version: 1)
      : VersionInfo(
          updatedAt: DateTime.parse(map['updated_at']),
          updatedBy: map['updated_by'],
          version: map['version'],
        );

  Map<String, dynamic> toMap() => {
        'updated_at': updatedAt.toIso8601String(),
        'updated_by': updatedBy,
        'version': version,
      };

  // static VersionInfo fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
  //   return VersionInfo(
  //     updatedAt: (doc.data()!['updated_at'] as Timestamp).toDate(),
  //     updatedBy: doc.data()!['updated_by'],
  //     version: doc.data()!['version'],
  //   );
  // }

  // Map<String, Object?> toDocument() => {
  //       'updated_at': Timestamp.fromDate(updatedAt),
  //       'updated_by': updatedBy,
  //       'version': version,
  //     };

  @override
  List<Object?> get props {
    return [
      updatedAt,
      updatedBy,
      version,
    ];
  }
}
