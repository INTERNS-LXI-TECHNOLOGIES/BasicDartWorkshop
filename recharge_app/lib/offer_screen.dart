import 'package:flutter/material.dart';
import 'package:recharge_app/api.dart';
import 'package:recharge_app/model/api_response/api_response.dart';

import 'model/recharge_response.dart';

class Offer extends StatefulWidget {
  final Api api;
  const Offer({Key? key, required this.api}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  void initState() {
    planResponse();
    super.initState();
  }

  Future<ApiResponse> planResponse() async {
    String mobileNumber = widget.api.number;
    final _planOffer = await widget.api.getRecharge(opCode: 23);
    // final _planOff =
    //     await widget.api.getRecharge(opCode: 23, number: mobileNumber);
    // _planOff.rdata!.first.ofrtext;
    return _planOffer;
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
    return FutureBuilder<ApiResponse>(
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
              itemCount: snapshot.data!.rdata!.frc!.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => ListTile(
                title: Text('${snapshot.data!.rdata!.frc![index].desc}'),
                leading: CircleAvatar(
                  child: Text('${snapshot.data!.rdata!.frc![index].rs}'),
                ),
              ),
            ),
          );
        });
  }
}
