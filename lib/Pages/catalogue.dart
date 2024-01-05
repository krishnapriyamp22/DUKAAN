import 'package:dukaan_clone/Pages/categories.dart';
import 'package:dukaan_clone/Pages/products.dart';
import 'package:flutter/material.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({super.key});

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        //appbar
        appBar:AppBar(
          actionsIconTheme: IconThemeData(color: Colors.white),
          title: Text("Catalogue",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.search),
            ),
          ],
          
        //tab bar
            bottom:TabBar(tabs: const [
              Tab(text: 'Products',),
              Tab(text: 'Categories',),
            ],
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize:TabBarIndicatorSize.tab,
            indicatorWeight: 5,
           
            ),
        ),


        body: TabBarView(children:  [
            ProductsPage(),
          CategoryPage(),
        ]),
    
      ),
    );
  }
}