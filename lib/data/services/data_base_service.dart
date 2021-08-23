import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tn_trips/data/models/city.dart';

class DataBaseservice {
  FirebaseFirestore? _instance;
  List<City> _citys = [];

  List<City> getCitys() {
    return _citys;
  }

  Future<void> getCitysCollectionFromFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference citys = _instance!.collection('tn_trips_data');

    DocumentSnapshot snapshot = await citys.doc('citys').get();
    if (snapshot.exists) {
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      var citysData = data['citys'] as List<dynamic>;
      citysData.forEach((cityData) {
        City city = City.fromJson(cityData);
        _citys.add(city);
         
      });
    } 
  }
}
