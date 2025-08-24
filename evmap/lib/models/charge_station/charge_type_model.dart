
import 'package:json_annotation/json_annotation.dart';

part 'charge_type_model.g.dart';

@JsonSerializable()
class ChargeTypeModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  // @JsonKey(name: "kW")
  // int? kW;
  // @JsonKey(name: "power_supply")
  // String? powerSupply;
  // @JsonKey(name: "type")
  // String? type;
  // @JsonKey(name: "release_date")
  // DateTime? releaseDate;
  // @JsonKey(name: "station_count")
  // int? stationCount;
  // @JsonKey(name: "image_url")
  // String? imageUrl;

  ChargeTypeModel({
    this.id,
    this.name,
    // this.kW,
    // this.powerSupply,
    // this.type,
    // this.releaseDate,
    // this.stationCount,
    // this.imageUrl,
  });



  factory ChargeTypeModel.fromJson(Map<String, dynamic> json) => _$ChargeTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeTypeModelToJson(this);
}
