import 'package:flutter/material.dart';
import 'package:test_app/models/cart.dart';
import 'package:test_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.bold.black.make(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  final CartModel _cart=(VxState.store as MyStore).cart;
  // const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         VxConsumer(
          notifications: {},
          builder:(context, store, status) {
          
            return  "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(MyTheme.darkBlueishColor)
                  .make();
         }, mutations:{RemoveMutations}),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying Not Supported, yet".text.make()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBlueishColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget{

// class __CartListState extends State<_CartList> {

  @override
  Widget build(BuildContext context) {
      VxState.watch(context, on: [RemoveMutations]);
      final CartModel _cart=(VxState.store as MyStore).cart;
    return _cart.item.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.item.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                  onPressed: () {
                    // _cart.remove(_cart.item[index]);
                    RemoveMutations(_cart.item[index]);
                    // setState(() {});
                  },
                  icon: Icon(Icons.remove_circle_outline)),
              title: _cart.item[index].name.text.make(),
            ),
          );
  }
}
