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
    final dataModel = Provider.of<DataModel>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider Basic'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text('Increase'),
              onPressed: () {
                dataModel.increaseValue();
              },
            ),
            RaisedButton(
              child: Text('decrease'),
              onPressed: () {
                dataModel.decreseCount();
              },
            ),
            RaisedButton(
              child: Text('Reset'),
              onPressed: (){
                dataModel.resetCount();
              },
            ),
            Text(dataModel.count.toString()),
          ],
        ),
      ),
    );
  }
}
