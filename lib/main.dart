import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/product_row_item.dart';


import 'model/app_state_model.dart';
import 'ui/cart_tab.dart';
import 'ui/search_tab.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: App(),
    )
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar:CupertinoTabBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart))
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch(index){
          case 0: returnValue = CupertinoTabView(builder: (context) {
            return const CupertinoPageScaffold(
                child: HomeTab()
            );
          });
          break;

          case 1: returnValue = CupertinoTabView(builder: (context) {
            return const CupertinoPageScaffold(
              child: SearchTab(),
            );
          });
          break;

          case 2: returnValue = CupertinoTabView(builder: (context) {
            return const CupertinoPageScaffold(
                child: CartTab()
            );
          });
          break;
        }
        return returnValue;
      }
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();
        return CustomScrollView(
          semanticChildCount: products.length,
          slivers : <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text("Store"),
            ),
            SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 0),
                sliver: SliverToBoxAdapter(
                  child: CupertinoListSection(
                    topMargin: 0,
                    children: [
                      for (var product in products)
                        ProductRowItem(
                          product: product,
                        )
                    ],
                  ),
                )
            )
          ]
        );
      }
    );
  }
}








