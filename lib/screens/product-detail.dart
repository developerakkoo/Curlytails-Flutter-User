import 'package:flutter/material.dart';
import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black54,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon:
                  Icon(color: Colors.black54, Icons.favorite_outline_outlined))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/product.jpeg",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Symply Dog Adult Chicken",
                    style: const TextStyle(
// fontFamily: "Lato",
                      fontSize: 20,
                      overflow: TextOverflow.visible,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff181725),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "£1.99",
                    style: const TextStyle(
                      // fontFamily: "Lato",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff181725),
                      // height: 18 / 24,
                    ),
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CartStepperInt(
                    value: _counter,
                    size: 40,
                    elevation: 0,
                    style: CartStepperTheme.of(context).copyWith(
                        activeForegroundColor: Colors.black,
                        activeBackgroundColor: Colors.white),
                    didChangeCount: (count) {
                      setState(() {
                        _counter = count;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_half,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text("Product detail"),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            ),
            MaterialButton(
              minWidth: 200.0,
              onPressed: () {
                print("Pressed");
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              padding: const EdgeInsets.all(20.0),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(255, 63, 61, 86),
                      Color.fromARGB(255, 63, 61, 86),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                      minWidth: 200.0,
                      minHeight: 60.0), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'ADD TO CART',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
