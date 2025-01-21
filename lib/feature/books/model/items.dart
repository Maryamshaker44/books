import 'access_info.dart';
import 'sale_info.dart';
import 'volume_info.dart';

class Items {
  final String kind;
  final int id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final AccessInfo accessInfo;
  final SaleInfo saleInfo;

  Items(
      {required this.id,
      required this.etag,
      required this.selfLink,
      required this.volumeInfo,
      required this.accessInfo,
      required this.kind,
      required this.saleInfo});

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
        id: json['id'],
        etag: json['etag'],
        selfLink: json['selfLink'],
        volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
        accessInfo: AccessInfo.fromJson(json['accessInfo']),
        kind: json['kind'],
        saleInfo: SaleInfo.fromJson(json['saleInfo']));
  }
}
