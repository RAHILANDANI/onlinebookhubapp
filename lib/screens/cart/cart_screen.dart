import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:onlinebookhubapp/screens/cart/cart_widget.dart';
import 'package:onlinebookhubapp/services/utils.dart';
import 'package:onlinebookhubapp/widgets/text_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            IconlyLight.arrowLeft2,
            color: color,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
            text: 'Cart (2)', color: color, isTitle: true, textSize: 22),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyBroken.delete,
              color: color,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _checkout(ctx: context),
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('cart').snapshots(),
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                final cartData = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: cartData.length,
                  itemBuilder: (ctx, index) {
                    // You can access the cart data like this:
                    final name = cartData[index]['name'];
                    final salePrice = cartData[index]['salePrice'];
                    final image = cartData[index]['image'];

                    return CartWidget(
                      quantity: "1",
                      name: name,
                      salePrice: salePrice,
                      image: image,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _checkout({required BuildContext ctx}) {
    Size size = Utils(ctx).getScreenSize;
    final Color color = Utils(ctx).color;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextWidget(
                    text: "Order Now",
                    color: color,
                    textSize: 20,
                  ),
                ),
              ),
            ),
            const Spacer(),
            FittedBox(
              child: TextWidget(
                text: "Total: \$0.259",
                color: color,
                textSize: 18,
                isTitle: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
