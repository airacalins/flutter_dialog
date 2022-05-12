
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtomSheetDialog extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const ButtomSheetDialog(this.scaffoldKey, { Key? key }) : super(key: key);

  @override
  State<ButtomSheetDialog> createState() => _ButtomSheetDialogState();
}

class _ButtomSheetDialogState extends State<ButtomSheetDialog> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.scaffoldKey.currentState?.showBottomSheet((context) {
          return Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),
          );
        });
      },
      child: Text('Bottom Sheet'),
    );
  }
}