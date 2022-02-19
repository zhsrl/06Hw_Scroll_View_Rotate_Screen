import 'package:flutter/material.dart';

void main() => runApp(SliverAppBarTask());

class SliverAppBarTask extends StatefulWidget {
  @override
  State<SliverAppBarTask> createState() => _SliverAppBarTaskState();
}

class _SliverAppBarTaskState extends State<SliverAppBarTask> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Page Title'),
                centerTitle: false,
                background: Image.network('https://pbs.twimg.com/media/D5fVzmeXoAQeXYm.jpg', fit: BoxFit.cover,),
              ),
            ),
            SliverToBoxAdapter(
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et massa ipsum. Phasellus volutpat magna ac sagittis pellentesque. In ut accumsan dolor, ut consectetur nisl. Etiam laoreet hendrerit commodo. Duis bibendum leo risus, vitae tempor purus venenatis vitae. Morbi vel quam in orci aliquam fringilla in vel libero. Morbi eleifend fringilla leo, eu consectetur ante accumsan sed. Nam sem urna, posuere et ornare a, molestie ut turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla tempor libero nisi, a molestie urna bibendum non. Mauris a tempor erat. Vestibulum id semper ex. Sed a quam eget velit faucibus interdum. Praesent blandit pharetra est nec viverra. Mauris gravida molestie tellus vitae volutpat. Nam lacinia nunc massa, vel feugiat nisl ultricies quis. Maecenas dictum auctor lectus ac blandit. Ut efficitur in leo vitae ullamcorper. Praesent mi massa, tempus ut nunc a, varius interdum nisi. Phasellus vitae ipsum egestas, luctus ex in, tristique lacus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc sodales tempor imperdiet. In et dolor vehicula, hendrerit erat ut, iaculis dui. Proin bibendum eros a est iaculis luctus. Praesent eget rhoncus tortor, in tristique nisl. Vivamus ex justo, volutpat ut sem et, ornare venenatis mauris. Phasellus interdum non lectus at pharetra. In feugiat felis id lacinia luctus. Curabitur id varius diam. Duis faucibus ullamcorper dolor vitae vestibulum. Aliquam non nulla mauris. Duis vehicula tellus sed felis condimentum, a euismod mauris gravida. Curabitur nec metus volutpat, cursus tortor eu, euismod enim. Fusce non dignissim enim, in interdum est. Nullam mauris lorem, maximus ac commodo porta, vehicula sed eros. Cras imperdiet sapien convallis diam luctus, ut tristique est maximus. Nunc rhoncus tortor et turpis elementum tincidunt. Etiam eget semper lacus, nec rhoncus neque. Etiam nunc enim, volutpat at ipsum vitae, imperdiet luctus ante. Etiam at ex non lectus tristique vestibulum eget in arcu. Quisque gravida ultricies neque, nec porta neque iaculis sagittis. In venenatis imperdiet sem quis mollis. Cras justo est, rhoncus sit amet condimentum eu, sodales in nisl. Maecenas et porttitor ipsum, sed pulvinar sapien. Quisque rutrum ante nisi, tempor venenatis odio facilisis maximus. Vestibulum at luctus felis.'),
            )
          ],
        ),

        drawer: Drawer(),
      )
    );
  }
}