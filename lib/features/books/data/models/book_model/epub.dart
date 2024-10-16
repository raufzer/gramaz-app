import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;
  final String? downloadLink;

  const Epub({this.isAvailable, this.downloadLink});

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
        downloadLink: json['downloadLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
        'downloadLink': downloadLink,
      };

  @override
  List<Object?> get props => [isAvailable, downloadLink];
}
