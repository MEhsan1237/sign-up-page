import 'package:flutter/material.dart';

  class ViewPage extends StatefulWidget {
    const ViewPage({super.key});

    @override
    State<ViewPage> createState() => _ViewPageState();
  }

  class _ViewPageState extends State<ViewPage> {
    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("View Page"),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
