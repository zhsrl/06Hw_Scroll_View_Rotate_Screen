import 'package:flutter/material.dart';
import 'package:hw_list_app/sliver_app_bar_task2.dart';
import 'package:hw_list_app/sliver_list_task3.dart';
import 'package:hw_list_app/sliver_page_task1.dart';
import 'package:hw_list_app/text_field_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: ListPage(),
      // home: SliverAppBarTask(),
      // home: SliverListTask(),
      home: TextFieldTask()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title:const Text('List App'),
      ),
      
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
