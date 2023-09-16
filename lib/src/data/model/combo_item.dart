import 'package:equatable/equatable.dart';

class ComboItem extends Equatable {
  const ComboItem({
    required this.itemId,
    required this.price,
  });

  final String itemId;
  final double price;

  ComboItem copyWith({
    String? itemId,
    double? price,
  }) {
    return ComboItem(
      itemId: itemId ?? this.itemId,
      price: price ?? this.price,
    );
  }

  @override
  List<Object?> get props {
    return [
      itemId,
      price,
    ];
  }
}
