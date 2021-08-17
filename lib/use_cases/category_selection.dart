import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';

class Categoryselection {
  City? _selectedCity;
  ServiceCategory? _selectedServiceCategory;
  SubServiceCategory? _selectedSubServiceCategory;

  City? get selectedCity => _selectedCity;
  set selectedCity(City? value) {
    _selectedCity = value;
  }

  ServiceCategory? get selectedServiceCategory => _selectedServiceCategory;
  set selectedServiceCategory(ServiceCategory? value) {
    _selectedServiceCategory = value;
  }

  SubServiceCategory? get selectedSubServiceCategory =>
      _selectedSubServiceCategory;
  set selectedSubServiceCategory(SubServiceCategory? value) {
    _selectedSubServiceCategory = value;
  }
}
