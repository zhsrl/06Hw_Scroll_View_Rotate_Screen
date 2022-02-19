import 'package:flutter/material.dart';

void main() => runApp(
  SliverListTask());

class SliverListTask extends StatefulWidget {

  @override
  State<SliverListTask> createState() => _SliverListTask();
}


class _SliverListTask extends State<SliverListTask>{
  
  final items = List<String>.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body:LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints){
                double _width = constraints.constrainWidth();
                
                print(_width);
                return _width > 600
                  ? ListView.builder(
                                          scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Element is $index',
                            style: TextStyle(
                            fontSize: 24,
                            color: Colors.white
                          )
                          ),
                        ),
                      ),
                    ),
                    itemCount: 30,)
                    : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        
                        width: 100,
                        
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text('Element is $index', 
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ), itemCount: 30,);
              })
          
      )
    );
  }
}