import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: _HomeViewAppBar(context),
      body: _HomeViewBody(),
    );
  }

  // AppBar Components
  AppBar _HomeViewAppBar(context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
            scale: 4,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "PIZZA",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              //TODO 购物车
            },
            icon: const Icon(CupertinoIcons.cart)),
        IconButton(
            onPressed: () {
              //TODO 退出登录
            },
            icon: const Icon(CupertinoIcons.arrow_right_to_line))
      ],
    );
  }

  // ViewBody Components
  Padding _HomeViewBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 9 / 16,
          ),
          itemCount: 8,
          itemBuilder: (context, int i) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                      offset:  Offset(3.0, 3.0))

                ],
              ),
            );
          }),
    );
  }
}
