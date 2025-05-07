import 'package:flutter/material.dart';

class FullScreen extends StatefulWidget{
  final String imageurl;

  const FullScreen({super.key, required this.imageurl});

  @override
  _FullScreenState createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.network(widget.imageurl),
              ),
            ),
            InkWell(
              onTap: (){
                // loadMore();
              },
              child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(
                      child: Text('Full Screen',style: TextStyle(fontSize: 20, color: Colors.white),)
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}