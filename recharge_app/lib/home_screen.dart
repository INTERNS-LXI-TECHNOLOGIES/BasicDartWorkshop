import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            toolbarHeight: 30,
            title: const Text('Recharge App'),
            actions: [
              IconButton(
                icon: const Icon(Icons.qr_code),
                onPressed: () {},
                splashRadius: 20,
              ),
              IconButton(
                icon: const Icon(Icons.mic),
                onPressed: () {},
                splashRadius: 20,
              ),
              IconButton(
                icon: const Icon(Icons.notification_add),
                onPressed: () {},
                splashRadius: 20,
              )
            ],
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: const Icon(Icons.menu),
                    splashRadius: 20,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    });
              },
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
                Tab(
                  icon: Icon(Icons.mobile_friendly_outlined),
                  text: 'mobile',
                ),
                Tab(
                  icon: Icon(Icons.people),
                  text: 'recharge for others',
                )
              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent[100],
                      // borderRadius: BorderRadius.circular(20),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),

                      //borderRadius:const BorderRadius.only(topRight: Radius.circular(20)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Colors.black45,
                          child: const Image(
                            image: AssetImage('images/offer.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          // decoration: const BoxDecoration(
                          //   color: Colors.black45,
                          //   image: DecorationImage(
                          //       image: AssetImage('images/offer.jpeg'),
                          //       fit: BoxFit.fill),
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
