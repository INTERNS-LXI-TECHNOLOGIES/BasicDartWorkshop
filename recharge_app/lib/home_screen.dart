import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recharge_app/recharge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
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
            bottom: TabBar(
              tabs: [
                const Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
                Tab(
                  child: IconButton(
                    icon: const Icon(Icons.mobile_friendly),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recharge(),
                        ),
                      );
                    },
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
                            image: AssetImage("assets/images/img.jpg"),
                          ),
                          //fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        //2nd coloumn 1st row
                        Container(
                          child: IconButton(
                            icon: const Icon(
                              Icons.music_note,
                              semanticLabel: 'music',
                              size: 40,
                            ),
                            onPressed: () {},
                            splashRadius: 40,
                          ),
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        //2nd coloumn 2nd row
                        Container(
                          child: IconButton(
                            icon: const Icon(
                              Icons.music_note,
                              size: 40,
                            ),
                            onPressed: () {},
                          ),
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height,
                          decoration: const BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        //2nd coloumn 3rd row
                        Container(
                          child: IconButton(
                            splashColor: Colors.white10,
                            splashRadius: 40,
                            icon: const Icon(
                              Icons.help,
                              size: 40,
                            ),
                            onPressed: () {},
                          ),
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height,
                          decoration: const BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
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
