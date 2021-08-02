import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';

class Utils {
  static List<City> getCitys() {
    return [
      City(
          name: "Tunisia",
          icons: [
            Icons.local_hotel_rounded,
            Icons.restaurant_menu_rounded,
            Icons.coffee_maker_rounded,
            Icons.sports
          ],
          color: Colors.white,
          imageName: "Tunisia",
          servicecategorys: [
            ServiceCategory(
                name: "Hotels",
                color: HOTELS,
                icon: Icons.local_hotel_rounded,
                imageName: "Hotels",
                subServiceCategorys: [
                  SubServiceCategory(
                      name: "AFRICA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "AFRICA"),
                  SubServiceCategory(
                      name: "Belvédère Optic",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "BelvédèreOptic"),
                  SubServiceCategory(
                      name: "Carthage Thalasso Resort",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "CarthageThalassoResort"),
                  SubServiceCategory(
                      name: "CARTLON",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "CARTLON"),
                  SubServiceCategory(
                      name: "Golden Tulip El Mechtel",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "GoldenTulipElMechtel"),
                  SubServiceCategory(
                      name: "LE SUILTANA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LESUILTANA"),
                  SubServiceCategory(
                      name: "IBIS",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "IBIS"),
                  SubServiceCategory(
                      name: "La Tour Blanche",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LaTourBlanche"),
                  SubServiceCategory(
                      name: "LAICO",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LAICO"),
                  SubServiceCategory(
                      name: "Mövenpick",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "Mövenpick"),
                  SubServiceCategory(
                      name: "ROYAL VICTORIA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "ROYALVICTORIA"),
                  SubServiceCategory(
                      name: "Sheraton Tunis Hotel",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "SheratonTunisHotel"),
                ]),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Cafes",
                color: CAFES,
                icon: Icons.coffee_maker_rounded,
                imageName: "Cafes",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Sports",
                color: SPORTS,
                icon: Icons.sports,
                imageName: "Sports",
                subServiceCategorys: [])
          ]),
      City(
          name: "Sfax",
          icons: [
            Icons.local_hotel_rounded,
            Icons.restaurant_menu_rounded,
            Icons.coffee_maker_rounded,
            Icons.sports
          ],
          color: Colors.white,
          imageName: "Sfax",
          servicecategorys: [
            ServiceCategory(
                name: "Hotels",
                color: HOTELS,
                icon: Icons.local_hotel_rounded,
                imageName: "Hotels",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Cafes",
                color: CAFES,
                icon: Icons.coffee_maker_rounded,
                imageName: "Cafes",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Sports",
                color: SPORTS,
                icon: Icons.sports,
                imageName: "Sports",
                subServiceCategorys: [])
          ]),
      City(
          name: "Sousse",
          icons: [
            Icons.local_hotel_rounded,
            Icons.restaurant_menu_rounded,
            Icons.coffee_maker_rounded,
            Icons.sports
          ],
          color: Colors.white,
          imageName: "Sousse",
          servicecategorys: [
            ServiceCategory(
                name: "Hotels",
                color: HOTELS,
                icon: Icons.local_hotel_rounded,
                imageName: "Hotels",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Cafes",
                color: CAFES,
                icon: Icons.coffee_maker_rounded,
                imageName: "Cafes",
                subServiceCategorys: []),
            ServiceCategory(
                name: "Sports",
                color: SPORTS,
                icon: Icons.sports,
                imageName: "Sports",
                subServiceCategorys: [])
          ]),
      City(
        name: "Monastir",
        icons: [
          Icons.local_hotel_rounded,
          Icons.restaurant_menu_rounded,
          Icons.coffee_maker_rounded,
          Icons.sports
        ],
        color: Colors.white,
        imageName: "Monastir",
        servicecategorys: [
          ServiceCategory(
              name: "Hotels",
              color: HOTELS,
              icon: Icons.local_hotel_rounded,
              imageName: "Hotels",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports",
              subServiceCategorys: [])
        ],
      ),
      City(
        name: "Jerba",
        icons: [
          Icons.local_hotel_rounded,
          Icons.restaurant_menu_rounded,
          Icons.coffee_maker_rounded,
          Icons.sports
        ],
        color: Colors.white,
        imageName: "Jerba",
        servicecategorys: [
          ServiceCategory(
              name: "Hotels",
              color: HOTELS,
              icon: Icons.local_hotel_rounded,
              imageName: "Hotels",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports",
              subServiceCategorys: [])
        ],
      ),
      City(
        name: "Mahdia",
        icons: [
          Icons.local_hotel_rounded,
          Icons.restaurant_menu_rounded,
          Icons.coffee_maker_rounded,
          Icons.sports
        ],
        color: Colors.white,
        imageName: "Mahdia",
        servicecategorys: [
          ServiceCategory(
              name: "Hotels",
              color: HOTELS,
              icon: Icons.local_hotel_rounded,
              imageName: "Hotels",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports",
              subServiceCategorys: [])
        ],
      ),
      City(
        name: "Gabes",
        icons: [
          Icons.local_hotel_rounded,
          Icons.restaurant_menu_rounded,
          Icons.coffee_maker_rounded,
          Icons.sports
        ],
        color: Colors.white,
        imageName: "Gabes",
        servicecategorys: [
          ServiceCategory(
              name: "Hotels",
              color: HOTELS,
              icon: Icons.local_hotel_rounded,
              imageName: "Hotels",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes",
              subServiceCategorys: []),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports",
              subServiceCategorys: [])
        ],
      ),
    ];
  }
}
