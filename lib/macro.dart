import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyMacroWidget extends StatelessWidget {
  final String title;
  final int value;
  const MyMacroWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(2, 2),
                blurRadius: 5,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              const Icon(
                CupertinoIcons.airplane,
                color: Colors.redAccent,
              ),
              const SizedBox(height: 5,),
              Text(
                '${value} ${title}',
                style: const TextStyle(fontSize: 8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
