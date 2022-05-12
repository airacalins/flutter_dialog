// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SnackBarButton extends StatefulWidget {
  const SnackBarButton({ Key? key }) : super(key: key);

  @override
  State<SnackBarButton> createState() => _SnackBarButtonState();
}

class _SnackBarButtonState extends State<SnackBarButton> {
final snackBar = SnackBar(
  content: Text('Successfully Saved'),
  backgroundColor: Colors.green,
  duration: Duration(seconds: 1),
  action: SnackBarAction(
    onPressed: () {},
    label: 'Undo',
    textColor: Colors.white,
  ),
);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }, 
      child: Text('Save')
    );
  }
}