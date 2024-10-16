import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final String? buyLink;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        isEbook: json['isEbook'] as bool?,
        buyLink: json['buyLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'buyLink': buyLink,
      };

  @override
  List<Object?> get props => [country, saleability, isEbook, buyLink];
}
