import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final List myProducts = List.generate(10, (index) {
    return {
      "id": index,
      "title": "Favorite Product \#$index",
      "price": index + 1
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.deepOrange,
          title: Text('Favorites'),
          actions: <Widget>[
            new IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ],
        ),
        body: Container(
          child: ListView.builder(
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              // Display the list item
              return Dismissible(
                key: UniqueKey(),

                // only allows the user swipe from right to left
                direction: DismissDirection.endToStart,

                // Remove this product from the list
                // In production enviroment, you may want to send some request to delete it on server side
                onDismissed: (_) {
                  setState(() {
                    myProducts.removeAt(index);
                  });
                },

                // Display item's title, price...
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(myProducts[index]["id"].toString()),
                    ),
                    title: Text(myProducts[index]["title"]),
                    subtitle:
                        Text("\$${myProducts[index]["price"].toString()}"),
                    trailing: Icon(Icons.arrow_back),
                  ),
                ),

                // This will show up when the user performs dismissal action
                // It is a red background and a trash icon
                background: Container(
                  color: Colors.deepOrange,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
