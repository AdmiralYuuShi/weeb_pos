import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class SalesOrder extends Equatable {
  const SalesOrder({
    required this.docId,
    required this.orderNumber,
    required this.createdBy,
    required this.createdAt,
    required this.total,
    required this.pay,
    required this.change,
    required this.refund,
    this.notes,
  });

  final String docId;
  final int orderNumber;
  final String createdBy;
  final DateTime createdAt;
  final String? notes;

  final double total;
  final double pay;
  final double change;
  final double refund;

  SalesOrder copyWith({
    int? orderNumber,
    String? createdBy,
    DateTime? createdAt,
    String? notes,
    double? total,
    double? pay,
    double? change,
    double? refund,
  }) {
    return SalesOrder(
      docId: docId,
      orderNumber: orderNumber ?? this.orderNumber,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      total: total ?? this.total,
      pay: pay ?? this.pay,
      change: change ?? this.change,
      refund: refund ?? this.refund,
      notes: notes ?? this.notes,
    );
  }

  static SalesOrder fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) => SalesOrder(
        docId: doc.id,
        orderNumber: doc.data()!['order_number'],
        createdBy: doc.data()!['created_by'],
        createdAt: (doc.data()!['created_at'] as Timestamp).toDate(),
        notes: doc.data()!['notes'],
        total: doc.data()!['total'].toDouble(),
        pay: doc.data()!['pay'].toDouble(),
        change: doc.data()!['change'].toDouble(),
        refund: doc.data()!['refund'].toDouble(),
      );

  Map<String, Object?> toDocument() => {
        'order_number': orderNumber,
        'created_at': Timestamp.fromDate(createdAt),
        'created_by': createdBy,
        'notes': notes,
        'total': total,
        'pay': pay,
        'change': change,
        'refund': refund,
      };

  @override
  List<Object?> get props {
    return [
      docId,
      orderNumber,
      createdBy,
      createdAt,
      total,
      pay,
      change,
      refund,
      notes,
    ];
  }
}
