import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  late String time;
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/$url'),
      );
      Map data = jsonDecode(response.body);
      print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));

      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
      // Optionally handle the error, e.g., print(e);
    }
  }
}

WorldTime instance = WorldTime(
  location: 'Berlin',
  flag: 'germany.png',
  url: 'Europe/Berlin',
);
