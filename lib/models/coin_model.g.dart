// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

coinModel _$coinModelFromJson(Map<String, dynamic> json) => coinModel()
  ..id = json['id'] as String
  ..symbol = json['symbol'] as String
  ..price_usd = json['priceUsd'] as String
  ..change_percent_24hr = json['changePercent24Hr'] as String
  ..coin_model = (json['data'] as List<dynamic>)
      .map((e) => coinModel.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$coinModelToJson(coinModel instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'priceUsd': instance.price_usd,
      'changePercent24Hr': instance.change_percent_24hr,
      'data': instance.coin_model,
    };
