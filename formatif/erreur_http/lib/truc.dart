
import 'package:json_annotation/json_annotation.dart';

part 'truc.g.dart';

@JsonSerializable()
class Truc{
  Truc();

  String val1 = '';
  String val2 = '';


  factory Truc.fromJson(Map<String, dynamic> json) =>
      _$TrucFromJson(json);

  Map<String, dynamic> toJson() => _$TrucToJson(this);
}