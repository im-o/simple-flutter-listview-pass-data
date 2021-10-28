import 'package:flutter/material.dart';
import 'package:list_view_pass_data/data/model/fruit_data_model.dart';
import 'package:list_view_pass_data/data/ui/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> fruitNames = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'Pineapple'
  ];
  static List<String> urlImages = [
    'https://picsum.photos/id/0/5616/3744',
    'https://picsum.photos/id/1/5616/3744',
    'https://picsum.photos/id/10/2500/1667',
    'https://picsum.photos/id/100/2500/1656',
    'https://picsum.photos/id/1000/5626/3635'
  ];

  final List<FruitDataModel> fruits = List.generate(
      fruitNames.length,
      (index) => FruitDataModel('${fruitNames[index]}', '${urlImages[index]}',
          '${fruitNames[index]} Description'));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(fruits[index].name),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.network(fruits[index].imageUrl),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        FruitDetail(fruitDataModel: fruits[index])));
              },
            ),
          );
        });
  }
}
