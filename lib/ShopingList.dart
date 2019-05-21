import 'package:flutter/material.dart';

class MyShoppingListScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("应用商城"),
      ),
      body: new ShoppingList(
        products: <Product>[
          new Product(name:"吃鸡战场"),
          new Product(name:"王者农药"),
          new Product(name:"战地风云"),
        ],
      ),
    );
  }
}

class Product{

  final String name;

  const Product({this.name});

}

///不知道我理解的对不对 这个类似于Android的接口回调 至少在本文中是这个思路
typedef void CartChangedCallback(Product product, bool icCart);

class ShoppingListItem extends StatelessWidget{

  final Product product;
  final bool inCart;
  final CartChangedCallback callback;

  ShoppingListItem({this.product, this.inCart, this.callback}):super(key:new ObjectKey(product));

  @override
  Widget build(BuildContext context) {
    print("ShoppingListItem-build:${product.name}");
    return new ListTile(
      onTap: (){
        callback(product,!inCart); 
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }

  Color _getColor(BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if(!inCart){
      return null;
    }
    return new TextStyle(
      color: Colors.red,
      decoration: TextDecoration.lineThrough
    );
  }

}

class ShoppingList extends StatefulWidget{

  final List<Product> products;

  ShoppingList({Key key,this.products});

  @override
  State<StatefulWidget> createState() {
    print("createState");
    return new _ShoppingListState();
  }

}


///_ShoppingListState对象继承自state 它具备一个特性就是在两次build之间可以保持不变 允许它们记录住状态
class _ShoppingListState extends State<ShoppingList>{

  Set<Product> _shoppingCart = new Set<Product>();

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    print("disposeState");
    super.dispose();
  }

  void _handler(Product product,bool inChart){
      //setState标记为dirty 是为了通知框架该对象的内部状态已发生改变 setState调用后会触发build
    setState(() {
      print("setState");
      if (inChart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("buildState");
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8),
      children: widget.products.map((Product product){
        return new ShoppingListItem(
            product:product,
            inCart:_shoppingCart.contains(product),
            callback:_handler
        );
      }).toList(),
    );
  }

}