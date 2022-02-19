import 'package:flutter/material.dart';

void main() => runApp(TextFieldTask());

class TextFieldTask extends StatefulWidget {
  @override
  State<TextFieldTask> createState() => _TextFieldTask();
}

class _TextFieldTask extends State<TextFieldTask> {
  TextEditingController _controller = TextEditingController();

  var hintText = 'Введите значение';
  var labelText = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
        
              controller: _controller,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search, color: Colors.purple),
                hintText: hintText,
                labelText: 'Search',
                helperText: 'Поле для поиска заметок',
                
                labelStyle: TextStyle(
                  color: Colors.purple
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.purple),
                  borderRadius: BorderRadius.circular(10))
              ),

            ),
          ),
        )
      )
    );
  }
}

