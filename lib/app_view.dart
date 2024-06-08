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
  Container _HomeViewBody() {
    return Container(
      margin: const EdgeInsets.all(8),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 9 / 16,
          ),
          itemCount: 8,
          itemBuilder: (context, int i) {
            return _HomeViewBodyItem(context);
          }),
    );
  }

  //ViewBody Item Component
  Padding _HomeViewBodyItem(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
          elevation: 3,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/pizza_sku.png",
                    scale: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          child: Text(
                            "NOW-VEG",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          child: Text(
                            "🌶 BALANCE",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Cheesy Marvel",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Crafting joy your pizza, your rules, best taste!",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Colors.grey.shade700),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "\$12.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.blue.shade700),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "\$15.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.add_circled_solid))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
