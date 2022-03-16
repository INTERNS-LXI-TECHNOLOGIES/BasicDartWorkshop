import 'package:flutter/material.dart';
import 'package:recharge_app/api.dart';

import 'model/recharge_response.dart';

class Offer extends StatefulWidget {
  Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  void initState() {
    planResponse();
    super.initState();
  }

  Api api = Api();

  Future<RechargeResponse> planResponse() async {
    String mobileNumber = api.number;
    print('${api.number}//////////////////////////');
    final _planOff = await api.getRecharge(opCode: 23, number: mobileNumber);
    _planOff.rdata!.first.ofrtext;
    return _planOff;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _offers(),
      ),
    );
  }

  Widget _offers() {
    return FutureBuilder<RechargeResponse>(
        future: planResponse(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.hasError) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data!.rdata!.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => ListTile(
                title: Text('${snapshot.data!.rdata![index].ofrtext}'),
                leading: CircleAvatar(
                  child: Text('${snapshot.data!.rdata![index].price}'),
                ),
              ),
            ),
          );
        });
  }
}
