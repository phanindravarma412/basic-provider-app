import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './datamodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider Basic'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Consumer<DataModel>(
              builder: (context, dataModel, child) {
                return RaisedButton(
                  child: Text('Increase'),
                  onPressed: () {
                    dataModel.increaseValue();
                  },
                );
              },
            ),
            Consumer<DataModel>(
              builder: (context, dataModel, child) {
                return Text(dataModel.count.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
