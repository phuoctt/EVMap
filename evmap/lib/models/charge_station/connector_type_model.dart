import 'package:json_annotation/json_annotation.dart';

part 'connector_type_model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ConnectorTypeModel {
  final int? id;
  final String? name;
  final String? imageUrl;


  ConnectorTypeModel({
    this.id,
    this.name,
    this.imageUrl
  });

  factory ConnectorTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectorTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectorTypeModelToJson(this);
}
