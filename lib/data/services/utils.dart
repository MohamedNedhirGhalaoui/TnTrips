import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/models/service_catagory.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';
import 'package:tn_trips/data/models/sub_service_category_image.dart';

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
                      imageName: "AFRICA",
                      gallery: [
                        SubServiceCategoryImage(imageName: "AFRICA1"),
                        SubServiceCategoryImage(imageName: "AFRICA2"),
                        SubServiceCategoryImage(imageName: "AFRICA3"),
                        SubServiceCategoryImage(imageName: "AFRICA4"),
                        SubServiceCategoryImage(imageName: "AFRICA5"),
                        SubServiceCategoryImage(imageName: "AFRICA6"),
                        SubServiceCategoryImage(imageName: "AFRICA7"),
                        SubServiceCategoryImage(imageName: "AFRICA8"),
                        SubServiceCategoryImage(imageName: "AFRICA9"),
                        SubServiceCategoryImage(imageName: "AFRICA10"),
                      ]),
                  SubServiceCategory(
                      name: "Belvédère Optic",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "BelvédèreOptic",
                      gallery: []),
                  SubServiceCategory(
                      name: "Carthage Thalasso Resort",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "CarthageThalassoResort",
                      gallery: []),
                  SubServiceCategory(
                      name: "CARTLON",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "CARTLON",
                      gallery: []),
                  SubServiceCategory(
                      name: "Golden Tulip El Mechtel",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "GoldenTulipElMechtel",
                      gallery: []),
                  SubServiceCategory(
                      name: "LE SUILTANA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LESUILTANA",
                      gallery: []),
                  SubServiceCategory(
                      name: "IBIS",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "IBIS",
                      gallery: []),
                  SubServiceCategory(
                      name: "La Tour Blanche",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LaTourBlanche",
                      gallery: []),
                  SubServiceCategory(
                      name: "LAICO",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LAICO",
                      gallery: []),
                  SubServiceCategory(
                      name: "Mövenpick",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "Mövenpick",
                      gallery: []),
                  SubServiceCategory(
                      name: "ROYAL VICTORIA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "ROYALVICTORIA",
                      gallery: []),
                  SubServiceCategory(
                      name: "Sheraton Tunis Hotel",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "SheratonTunisHotel",
                      gallery: []),
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
