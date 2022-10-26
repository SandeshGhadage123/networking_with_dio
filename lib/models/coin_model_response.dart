import 'package:json_annotation/json_annotation.dart';

import 'coin_model.dart';

path "coin_model_response.g.dart";

@JsonSerializable()
class CoinModelResponse{
  CoinModelResponse();

  @JsonKey(name : "data")
  List<coinModel> coins = [];

  factory CoinModelResponse.fromJson(Map<String, dynamic> json) => _$CoinModelResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CoinModelResponseToJson(this);


}