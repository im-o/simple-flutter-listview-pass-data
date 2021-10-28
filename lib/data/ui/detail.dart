import 'package:flutter/material.dart';
import 'package:list_view_pass_data/data/model/fruit_data_model.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;
  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(fruitDataModel.name),
      ),
      body: Column(
        children: [
          Image.network(fruitDataModel.imageUrl),
          Text(fruitDataModel.description)
        ],
      ),
    );
  }
}
