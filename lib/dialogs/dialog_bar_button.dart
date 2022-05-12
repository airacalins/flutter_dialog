// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DialogBarButton extends StatefulWidget {
  @override
  State<DialogBarButton> createState() => _DialogBarButtonState();
}

class _DialogBarButtonState extends State<DialogBarButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          // to disable closing the dialog when tapped on the outside
          barrierDismissible: false,
          context: context, 
          builder: (context) {
            return AlertDialog(
              title: Text('Delete this item?'),
              content: Text('Are you sure you want to delete the entry?'),
              actions: [
                TextButton(
                  onPressed: () {
                    // To dismiss the dialog
                    Navigator.pop(context);
                  }, 
                 child: Text('No')
                ),
                TextButton(
                  onPressed: () {

                  }, 
                  child: Text('Yes')
                )
              ],
            );
          }
        );
      }, 
      child: Text('Delete'),
    );
  }
}