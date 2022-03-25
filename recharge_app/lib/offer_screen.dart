import 'package:flutter/material.dart';
import 'package:recharge_app/api.dart';
import 'package:recharge_app/model/api_response/api_response.dart';

class Offer extends StatefulWidget {
  final Api api;
  const Offer({Key? key, required this.api}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  List<String> listFtt = [];
  @override
  void initState() {
    planResponse();
    super.initState();
  }

  String? mobileNumber;
  int? opCod;
  Future<ApiResponse> planResponse() async {
    mobileNumber = widget.api.number;
    opCod = widget.api.opCode;
    final _planOffer = await widget.api.getRecharge(opCode: opCod!);
    return _planOffer;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('recharge for $mobileNumber'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'unlimited',
              ),
              Tab(
                text: 'Top up',
              ),
              Tab(
                text: 'data',
              ),
              Tab(
                text: 'others',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: _offers(1),
            ),
            Container(
              child: _offers(2),
            ),
            Container(
              child: _offers(3),
            ),
            Container(
              child: _offers(4),
            ),
          ],
        ),
      ),
    );
  }

  Widget? _offers(int value) {
    return FutureBuilder<ApiResponse>(
        future: planResponse(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.hasError) {
            return const Center(child: CircularProgressIndicator());
          }
          switch (value) {
            case 1:
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.rdata!.fulltt!.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('${snapshot.data!.rdata!.fulltt![index].desc}'),
                    leading: CircleAvatar(
                      child: Text('${snapshot.data!.rdata!.fulltt![index].rs}'),
                    ),
                  ),
                ),
              );

            case 2:
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.rdata!.topup!.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('${snapshot.data!.rdata!.topup![index].desc}'),
                    leading: CircleAvatar(
                      child: Text('${snapshot.data!.rdata!.topup![index].rs}'),
                    ),
                  ),
                ),
              );
            case 3:
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.rdata!.data!.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('${snapshot.data!.rdata!.data![index].desc}'),
                    leading: CircleAvatar(
                      child: Text('${snapshot.data!.rdata!.data![index].rs}'),
                    ),
                  ),
                ),
              );
            case 4:
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.rdata!.stv!.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('${snapshot.data!.rdata!.stv![index].desc}'),
                    leading: CircleAvatar(
                      child: Text('${snapshot.data!.rdata!.stv![index].rs}'),
                    ),
                  ),
                ),
              );
            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        });
  }
}
