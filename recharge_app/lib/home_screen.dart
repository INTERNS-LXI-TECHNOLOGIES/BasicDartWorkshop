// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recharge_app/recharge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.blue[500],
          appBar: AppBar(
            backgroundColor: Colors.blue[500],
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
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
                Tab(
                  height: 100,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recharge(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.mobile_friendly,
                      color: Colors.white,
                    ),
                  ),
                ),
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
                      color: Colors.blue[500],
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
                              image: AssetImage('images/img.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: const Image(
                      image: NetworkImage(
                          'https://i.gadgets360cdn.com/large/jio_airtel_vi_vodafone_idea_image_1612358966262.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
