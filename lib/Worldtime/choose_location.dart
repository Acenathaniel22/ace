import 'package:flutter/material.dart';
import '../services/world_time.dart'; // Make sure this path is correct

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'Nigeria', flag: 'nigeria.png', url: 'Africa/Lagos'),
    WorldTime(
      location: 'South Africa',
      flag: 'south_africa.png',
      url: 'Africa/Johannesburg',
    ),
    WorldTime(location: 'Egypt', flag: 'egypt.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Kenya', flag: 'kenya.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'Ghana', flag: 'ghana.png', url: 'Africa/Accra'),
    WorldTime(
      location: 'Ethiopia',
      flag: 'ethiopia.png',
      url: 'Africa/Addis_Ababa',
    ),
    WorldTime(
      location: 'Morocco',
      flag: 'morocco.png',
      url: 'Africa/Casablanca',
    ),
    WorldTime(location: 'Uganda', flag: 'uganda.png', url: 'Africa/Kampala'),
    WorldTime(
      location: 'Tanzania',
      flag: 'tanzania.png',
      url: 'Africa/Dar_es_Salaam',
    ),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    Navigator.pop(context, {
      'location': instance.location ?? '-',
      'time': instance.time ?? '-',
      'flag': instance.flag ?? '-',
      'url': instance.url ?? '-',
    });
  }

  @override
  Widget build(BuildContext context) {
    print('initstate func runs');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location!),
              ),
            ),
          );
        },
      ),
    );
  }
}
