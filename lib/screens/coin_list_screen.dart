import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:networking_with_dio/models/coin_model.dart';
import 'package:networking_with_dio/screens/local_widgets/coin_list_item.dart';

import '../models/coin_model_response.dart';
import '../repository/network_handler.dart';


class coin_list_screen extends StatefulWidget {
  const coin_list_screen({Key? key}) : super(key: key);

  @override
  State<coin_list_screen> createState() => _coin_list_screenState();
}

class _coin_list_screenState extends State<coin_list_screen> {
  late HttpService http;

  late CoinModelResponse coinModelResponse;

  List<coinModel> coins = [];

  Future getCoinModel() async {
    Response response;
    try{
      response = await http.getRequest("/v2/assets");

      if (response.statusCode == 200) {
        setState((){
          coinModelResponse = CoinModelResponse.fromJson(response.data);
          coins = coinModelResponse.coins;

        });
      }else{
        print("there is some problem");
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  void initState(){
    http = HttpService();
    getCoinModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        CoinListItem(coins: 'Bitcoin',)
      ],
    );
  }
}
