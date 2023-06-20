import 'package:ecommerce_design/src/models/cart.dart';
import 'package:ecommerce_design/src/models/cart_item.dart';

import 'package:ecommerce_design/src/models/item.dart';
import 'package:ecommerce_design/src/screens/cart.dart';
import 'package:ecommerce_design/src/widgets/button.dart';
import 'package:ecommerce_design/utils/constants.dart';
import 'package:ecommerce_design/utils/helpers.dart';
import 'package:ecommerce_design/utils/images.dart';
import 'package:ecommerce_design/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.dummyCategories, {super.key});

  final List<Item> dummyCategories;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final theme = AppTheme.light();

  var increment = 0;

  final Cart cart = Cart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Sneakers'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.product1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    container(AppIcons.previous),
                    container(AppIcons.next)
                  ],
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appText(
                    text: 'SNEAKER COMPANY',
                    style: theme.textTheme.displaySmall!,
                  ),
                  const SizedBox(height: 10),
                  appText(
                    text: widget.dummyCategories[0].title,
                    style: theme.textTheme.displayLarge!,
                  ),
                  const SizedBox(height: 20),
                  appText(
                    text: widget.dummyCategories[0].description,
                    style: theme.textTheme.bodyMedium!,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      appText(
                        text: widget.dummyCategories[0].price.toString(),
                        style: theme.textTheme.displayLarge!,
                      ),
                      const SizedBox(height: 10),
                      Chip(
                        label: const Text('-50'),
                        labelStyle: theme.textTheme.bodySmall,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        backgroundColor: secondaryColor,
                      ),
                      const Spacer(),
                      appText(
                          text: '\$250.00',
                          style: const TextStyle(color: Colors.grey))
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 235, 232, 232),
                      minimumSize: const Size(
                        double.infinity,
                        50,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              increment++;
                            });
                          },
                          child: SvgPicture.asset(AppIcons.plus),
                        ),
                        Text(
                          '$increment',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              increment--;
                            });
                          },
                          child: SvgPicture.asset(AppIcons.minus),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReusedButton(
                    icon: Icons.shopping_cart,
                    text: 'Add to cart',
                    onTap: () {
                      setState(() {
                        cart.addItem(CartItem(
                          id: widget.dummyCategories[0].id,
                          name: widget.dummyCategories[0].title,
                          price: widget.dummyCategories[0].price,
                        ));
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
