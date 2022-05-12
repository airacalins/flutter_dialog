// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SimpleDialogButton extends StatefulWidget {
  const SimpleDialogButton({ Key? key }) : super(key: key);

  @override
  State<SimpleDialogButton> createState() => _SimpleDialogButtonState();
}

class _SimpleDialogButtonState extends State<SimpleDialogButton> {
  String location = 'No selected yet';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async{
              final String loc = await showDialog(
                barrierDismissible: false,
                context: context, 
                builder: (context) {
                  return SimpleDialog(
                    title: Text('Choose your location'),
                    children: [
                      SimpleDialogOption(
                        onPressed: () {
                          // return the value aand close the dialog
                          Navigator.pop(context, 'South Africa');
                        },
                        child: Text('South Africa'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {Navigator.pop(context, 'America');},
                        child: Text('America'),
                      ),
                      SimpleDialogOption(
                        onPressed: () {Navigator.pop(context, 'Brazil');},
                        child: Text('Brazil'),
                      )
                    ],
                  );
                }
              );
              setState(() => location = loc);
            }, 
            child: Text('Delete'),
          ),
          Text(location)
        ],
      ),
    );
  }
}