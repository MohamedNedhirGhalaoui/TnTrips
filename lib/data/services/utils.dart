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
          imageName: "Tunis",
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
                          "Located in Tunis, on the famous Avenue Habib Bourguiba, Hotel Africa Tunis is a 15-minute drive from Tunis-Carthage Airport. It offers soundproofed and air-conditioned rooms with panoramic views over the city.",
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
                      position: "Gammarth · 14.67 km",
                      phoneNumber: "+216 71 910 111",
                      note: 7.4,
                      prix: 337,
                      description:
                          "With direct access to the beautiful sandy beach, Hotel Carthage Thalasso is a luxurious spa resort featuring water slides and a fully equipped business center, just 25 minutes' drive from Tunis.",
                      gallery: [
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort1"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort2"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort3"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort4"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort5"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort6"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort7"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort8"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort9"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort10"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort11"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort12"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort13"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort14"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort15"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort16"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort17"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort18"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort19"),
                        SubServiceCategoryImage(
                            imageName: "CarthageThalassoResort20"),
                      ]),
                  SubServiceCategory(
                      name: "CARTLON",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "CARTLON",
                      position: "Av. Habib Bourguiba, Tunis,1001 · 0.32 km",
                      phoneNumber: "+216 71 330 644",
                      note: 8.2,
                      prix: 160,
                      description:
                          "Hotel Carlton is in the heart of Tunis, just over a quarter mile from the Medina. It provides 3-star accommodations, room service and free Wi-Fi.",
                      gallery: [
                        SubServiceCategoryImage(imageName: "CARTLON1"),
                        SubServiceCategoryImage(imageName: "CARTLON2"),
                        SubServiceCategoryImage(imageName: "CARTLON3"),
                        SubServiceCategoryImage(imageName: "CARTLON4"),
                        SubServiceCategoryImage(imageName: "CARTLON5"),
                        SubServiceCategoryImage(imageName: "CARTLON6"),
                        SubServiceCategoryImage(imageName: "CARTLON7"),
                        SubServiceCategoryImage(imageName: "CARTLON8"),
                        SubServiceCategoryImage(imageName: "CARTLON9"),
                        SubServiceCategoryImage(imageName: "CARTLON10"),
                        SubServiceCategoryImage(imageName: "CARTLON11"),
                        SubServiceCategoryImage(imageName: "CARTLON12"),
                        SubServiceCategoryImage(imageName: "CARTLON13"),
                        SubServiceCategoryImage(imageName: "CARTLON14"),
                        SubServiceCategoryImage(imageName: "CARTLON15"),
                        SubServiceCategoryImage(imageName: "CARTLON16"),
                        SubServiceCategoryImage(imageName: "CARTLON17"),
                        SubServiceCategoryImage(imageName: "CARTLON18"),
                        SubServiceCategoryImage(imageName: "CARTLON19"),
                        SubServiceCategoryImage(imageName: "CARTLON20"),
                      ]),
                  SubServiceCategory(
                      name: "Golden Tulip El Mechtel",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "GoldenTulipElMechtel",
                      position:
                          "BP 3 Avenue Ouled Haffouz, Tunis,1005 · 1.96 km",
                      phoneNumber: "+216 71 783 200",
                      note: 7.3,
                      prix: 181,
                      description:
                          "The Hotel El Mechtel is a comfortable and functional 4-star hotel in the heart of Tunis, next to the business center and the attractive and peaceful Belvedere Park.",
                      gallery: [
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel1"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel2"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel3"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel4"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel5"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel6"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel7"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel8"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel9"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel10"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel11"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel12"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel13"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel14"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel15"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel16"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel17"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel18"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel19"),
                        SubServiceCategoryImage(
                            imageName: "GoldenTulipElMechtel20"),
                      ]),
                  SubServiceCategory(
                      name: "LE SUILTANA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LESUILTANA",
                      position: "Hammamet · 62.33 km",
                      phoneNumber: "+216 72 280 588",
                      note: 8.1,
                      prix: 508,
                      description:
                          " ",
                      gallery: [
                        SubServiceCategoryImage(imageName: "LESUILTANA1"),
                        SubServiceCategoryImage(imageName: "LESUILTANA2"),
                        SubServiceCategoryImage(imageName: "LESUILTANA3"),
                        SubServiceCategoryImage(imageName: "LESUILTANA4"),
                        SubServiceCategoryImage(imageName: "LESUILTANA5"),
                        SubServiceCategoryImage(imageName: "LESUILTANA6"),
                        SubServiceCategoryImage(imageName: "LESUILTANA7"),
                        SubServiceCategoryImage(imageName: "LESUILTANA8"),
                        SubServiceCategoryImage(imageName: "LESUILTANA9"),
                        SubServiceCategoryImage(imageName: "LESUILTANA10"),
                        SubServiceCategoryImage(imageName: "LESUILTANA11"),
                        SubServiceCategoryImage(imageName: "LESUILTANA12"),
                        SubServiceCategoryImage(imageName: "LESUILTANA13"),
                        SubServiceCategoryImage(imageName: "LESUILTANA14"),
                        SubServiceCategoryImage(imageName: "LESUILTANA15"),
                        SubServiceCategoryImage(imageName: "LESUILTANA16"),
                        SubServiceCategoryImage(imageName: "LESUILTANA17"),
                        SubServiceCategoryImage(imageName: "LESUILTANA18"),
                        SubServiceCategoryImage(imageName: "LESUILTANA19"),
                        SubServiceCategoryImage(imageName: "LESUILTANA20"),
                      ]),
                  SubServiceCategory(
                      name: "IBIS",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "IBIS",
                      position: "",
                      phoneNumber: "",
                      note: 0.0,
                      prix: 0.0,
                      description: "",
                      gallery: []),
                  SubServiceCategory(
                      name: "La Tour Blanche",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LaTourBlanche",
                      position: "",
                      phoneNumber: "",
                      note: 0.0,
                      prix: 0.0,
                      description: "",
                      gallery: []),
                  SubServiceCategory(
                      name: "LAICO",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "LAICO",
                      position: "",
                      phoneNumber: "",
                      note: 0.0,
                      prix: 0.0,
                      description: "",
                      gallery: []),
                  SubServiceCategory(
                      name: "Mövenpick",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "Mövenpick",
                      position: "",
                      phoneNumber: "",
                      note: 0.0,
                      prix: 0.0,
                      description: "",
                      gallery: []),
                  SubServiceCategory(
                      name: "ROYAL VICTORIA",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "ROYALVICTORIA",
                      position: "",
                      phoneNumber: "",
                      note: 0.0,
                      prix: 0.0,
                      description: "",
                      gallery: []),
                  SubServiceCategory(
                      name: "Sheraton Tunis Hotel",
                      icon: Icons.local_hotel_rounded,
                      color: HOTELS,
                      imageName: "SheratonTunisHotel",
                      position: "",
                      phoneNumber: "",
                      note: 0.0,
                      prix: 0.0,
                      description: "",
                      gallery: []),
                ]),
            ServiceCategory(
                name: "Restaurants",
                color: RESTAURANTS,
                icon: Icons.restaurant_menu_rounded,
                imageName: "Restaurants",
                subServiceCategorys: [
                  SubServiceCategory(
                    gallery: [
                      SubServiceCategoryImage(imageName: "DarSlah1"),
                      SubServiceCategoryImage(imageName: "DarSlah2"),
                      SubServiceCategoryImage(imageName: "DarSlah3"),
                      SubServiceCategoryImage(imageName: "DarSlah4"),
                      SubServiceCategoryImage(imageName: "DarSlah5"),
                      SubServiceCategoryImage(imageName: "DarSlah6"),
                      SubServiceCategoryImage(imageName: "DarSlah7"),
                      SubServiceCategoryImage(imageName: "DarSlah8"),
                      SubServiceCategoryImage(imageName: "DarSlah9"),
                      SubServiceCategoryImage(imageName: "DarSlah10"),
                      SubServiceCategoryImage(imageName: "DarSlah11"),
                      SubServiceCategoryImage(imageName: "DarSlah12"),
                    ],
                    name: "Dar Slah",
                    icon: Icons.restaurant_menu_rounded,
                    color: RESTAURANTS,
                    imageName: "DarSlah",
                    description:
                        "En plein cœur de la Médina de Tunis, à 150m de la Mosquée Zitouna, sur l’une des artères les plus riches et colorées des souks.",
                    note: 7.1,
                    prix: 33,
                    phoneNumber: "+216 71 261 026 ",
                    position: "145,Rue de la Kasbah|La Medina 1006",
                  )
                ]),
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
