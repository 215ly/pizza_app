import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_app/macro.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _DetailsImage(context),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(3, 3), blurRadius: 5)
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "Truffle Temptation Extravaganza",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              children: [
                                Text(
                                  "\$12.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "\$16.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        MyMacroWidget(
                          title: 'Calories',
                          value: 267,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyMacroWidget(
                          title: 'Protein',
                          value: 36,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyMacroWidget(
                          title: 'Fat',
                          value: 21,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyMacroWidget(
                          title: 'Carbs',
                          value: 38,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // image component
  _DetailsImage(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width - (40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 5)
        ],
      ),
      child: Image.asset(
        "assets/images/pizza_sku.png",
        scale: 5,
      ),
    );
  }
}
