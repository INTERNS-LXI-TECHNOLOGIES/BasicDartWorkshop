import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  static const platform = const MethodChannel("razorpay_flutter");

  late Razorpay _razorpay;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('payment'),
        ),
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(onPressed: openCheckout, child: Text('Open'))
            ])),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    // var options = {
    //   'key': 'rzp_test_qZ7mwSEeAogtzf',
    //   'amount': 100,
    //   'name': 'Acme Corp.',
    //   'description': 'Fine T-Shirt',
    //   'retry': {'enabled': true, 'max_count': 1},
    //   'send_sms_hash': false,
    //   'prefill': {'contact': '9656240099', 'email': 'ajilsajeev916@gmail.com'},
    //   'external': {
    //     'wallets': ['paytm']
    //   }
    var options = {
      "id": "order_6JUYuvmgCLfgjY",
      "entity": "order",
      "amount": 50000,
      "currency": "INR",
      "attempts": 0,
      "status": "created",
      "receipt": "receipt#42",
      "notes": [],
      "created_at": 1474013013
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {}

  void _handlePaymentError(PaymentFailureResponse response) {}

  void _handleExternalWallet(ExternalWalletResponse response) {}
}
