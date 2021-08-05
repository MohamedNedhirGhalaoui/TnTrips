import 'package:flutter/material.dart';
import 'package:tn_trips/common/constants.dart';
import 'package:tn_trips/data/models/city.dart';
import 'package:tn_trips/data/models/onboarding_page.dart';
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
                      name: "El Mouradi Hotel Africa",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "AFRICA",
                      position: "50 AV H BOURGUIBA BP73, TUNIS 1001 · 2.28 km",
                      phoneNumber: "+216 71 347 477",
                      note: 8.8,
                      prix: 150,
                      description:
                          "Located in Tunis, on the famous Avenue Habib Bourguiba, Hotel Africa Tunis is a 15-minute drive from Tunis-Carthage Airport. It offers soundproofed and air-conditioned rooms with panoramic views over the city",
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
                        SubServiceCategoryImage(imageName: "AFRICA11"),
                        SubServiceCategoryImage(imageName: "AFRICA12"),
                        SubServiceCategoryImage(imageName: "AFRICA13"),
                        SubServiceCategoryImage(imageName: "AFRICA14"),
                        SubServiceCategoryImage(imageName: "AFRICA15"),
                        SubServiceCategoryImage(imageName: "AFRICA16"),
                        SubServiceCategoryImage(imageName: "AFRICA17")
                      ]),
                  SubServiceCategory(
                      name: "Belvédère Optic",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "BelvédèreOptic",
                      position: "Avenue Taieb Mhiri, El Omrane · 0.48 km",
                      phoneNumber: "+216 71 783 133",
                      note: 8.9,
                      prix: 152,
                      description:
                          "Located in Tunis, 100 m from Belvedre Parc, Hôtel Belvédère Fourati features free WiFi access and free private parking. Guests can enjoy the on-site restaurant.",
                      gallery: [
                        SubServiceCategoryImage(imageName: "BelvédèreOptic1"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic2"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic3"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic4"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic5"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic6"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic7"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic8"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic9"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic10"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic11"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic12"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic13"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic14"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic15"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic16"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic17"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic18"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic19"),
                        SubServiceCategoryImage(imageName: "BelvédèreOptic20")
                      ]),
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

  static List<OnBoarding> getOnBoardingPage() {
    return [
      OnBoarding(
          title: "Tn Trips",
          description:
              "A travel guide inside Tunisia that enables you to find all services from hotels, restaurants and cafes to enjoy your trip.",
          image: "trip"),
      OnBoarding(
          title: "Move",
          description:
              "You can count on us and move around freely to find the right services for you.",
          image: "onboarding1"),
      OnBoarding(
          title: "Meet People",
          description:
              "You can meet people, organize trips with them, and have fun.",
          image: "onboarding2")
    ];
  }
}
