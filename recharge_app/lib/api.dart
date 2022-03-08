import 'package:http/http.dart' as http;

class Api {
  Future<void> getRecharge({required int amount}) async {
    var url = Uri.parse('http://planapi.in');
    print(url);
    var response = await http.get(url);
  }
}
