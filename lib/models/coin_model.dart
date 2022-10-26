import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';

part 'coin_model.g.dart';

@JsonSerializable()
class coinModel{

  coinModel();

  @JsonKey(name: 'id')
  late String id;

  @JsonKey(name: 'symbol')
  late String symbol;

  @JsonKey(name: 'priceUsd')
  late String price_usd;

  @JsonKey(name: 'changePercent24Hr')
  late String change_percent_24hr;

  @JsonKey(name: 'data')
  List<coinModel> coin_model;



  factory coinModel.fromJson(Map<String, dynamic> json) => _$coinModelFromJson(json);
  Map<String, dynamic> toJson() => _$coinModelToJson(this);

}

