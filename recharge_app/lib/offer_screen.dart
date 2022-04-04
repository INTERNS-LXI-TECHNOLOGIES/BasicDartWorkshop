import 'package:flutter/material.dart';
import 'package:recharge_app/api.dart';
import 'package:recharge_app/model/api_response/api_response.dart';
import 'package:recharge_app/payment_screen.dart';

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
          List fullTT = snapshot.data!.rdata!.fulltt!;
          List topUp = snapshot.data!.rdata!.topup!;
          List data = snapshot.data!.rdata!.data!;
          List stv = snapshot.data!.rdata!.stv!;
          switch (value) {
            case 1:
              return selectOffer(fullTT);

            case 2:
              return selectOffer(topUp);

            case 3:
              return selectOffer(data);
            case 4:
              return selectOffer(stv);
            default:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        });
  }

  Padding selectOffer(List<dynamic> offers) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: offers.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ListTile(
          title: Text('${offers[index].desc}'),
          leading: CircleAvatar(
            child: Text('${offers[index].rs}'),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
