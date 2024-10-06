import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/access_info.dart';
import 'package:booklyapp/Features/home/presentation/views/data/models/book_model/volume_info.dart';
import 'package:equatable/equatable.dart';

import 'item.dart';

class BookModel extends Equatable {
  final String? kind;
  final int? totalItems;
  final List<Item>? items;
  final VolumeInfo volumeInfo;
  final AccessInfo accessInfo;

  const BookModel(
      {required this.volumeInfo,
      this.kind,
      this.totalItems,
      this.items,
      required this.accessInfo});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        volumeInfo:
            VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
        accessInfo:
            AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [kind, totalItems, items];
}
