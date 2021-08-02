import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/models/service_catagory.dart';

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
                imageName: "Hotels"),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants"),
            ServiceCategory(
                name: "Cafes",
                color: CAFES,
                icon: Icons.coffee_maker_rounded,
                imageName: "Cafes"),
            ServiceCategory(
                name: "Sports",
                color: SPORTS,
                icon: Icons.sports,
                imageName: "Sports")
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
                imageName: "Hotels"),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants"),
            ServiceCategory(
                name: "Cafes",
                color: CAFES,
                icon: Icons.coffee_maker_rounded,
                imageName: "Cafes"),
            ServiceCategory(
                name: "Sports",
                color: SPORTS,
                icon: Icons.sports,
                imageName: "Sports")
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
                imageName: "Hotels"),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants"),
            ServiceCategory(
                name: "Cafes",
                color: CAFES,
                icon: Icons.coffee_maker_rounded,
                imageName: "Cafes"),
            ServiceCategory(
                name: "Sports",
                color: SPORTS,
                icon: Icons.sports,
                imageName: "Sports")
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
              imageName: "Hotels"),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants"),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes"),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports")
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
              imageName: "Hotels"),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants"),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes"),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports")
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
              imageName: "Hotels"),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants"),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes"),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports")
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
              imageName: "Hotels"),
          ServiceCategory(
              name: "Restaurants",
              color: RESTAURANTS,
              icon: Icons.restaurant_menu_rounded,
              imageName: "Restaurants"),
          ServiceCategory(
              name: "Cafes",
              color: CAFES,
              icon: Icons.coffee_maker_rounded,
              imageName: "Cafes"),
          ServiceCategory(
              name: "Sports",
              color: SPORTS,
              icon: Icons.sports,
              imageName: "Sports")
        ],
      ),
    ];
  }

  
}
