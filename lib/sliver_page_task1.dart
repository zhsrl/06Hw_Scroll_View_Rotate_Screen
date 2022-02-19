import 'package:flutter/material.dart';

void main() => runApp(ListPage());

class ListPage extends StatefulWidget {


  @override
  State<ListPage> createState() => _ListPageState();
  
}

class _ListPageState extends State<ListPage> {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('List View App'),
                  )
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index){
                    
                    return Container(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text('Element is $index'),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 0.1 ,
                              width: 800,
                              
                              decoration: BoxDecoration(
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                      
                    );
                    
                  },
                  childCount: 20,

                  )

                  
                )
              ],
            ),
          ),
        ),
    );
  }

}