import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';
import 'package:tn_trips/ui/common/rounded_button.dart';
import 'package:tn_trips/ui/home/widget/build_icon.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';
import 'package:tn_trips/use_cases/category_selection.dart';
import 'map_page.dart';

class DetailsPage extends StatefulWidget {
  SubServiceCategory? subServiceCategory;
  DetailsPage({Key? key, this.subServiceCategory}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    CategorySelection categorySelection =
        Provider.of<CategorySelection>(context, listen: false);
    widget.subServiceCategory = categorySelection.selectedSubServiceCategory;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
              ),
              child: InkWell(
                onTap: () {
                  showImageAndDetails(
                      context,
                      widget.subServiceCategory!.imageName,
                      widget.subServiceCategory!.description);
                },
                child: Stack(
                  children: [
                    Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/services/hotels/tunisia/" +
                                  widget.subServiceCategory!.imageName +
                                  ".jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            BuildIcon(
                                color: widget.subServiceCategory!.color,
                                icon: widget.subServiceCategory!.icon),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                textTheme("${widget.subServiceCategory!.note}"),
                                SizedBox(
                                  height: 5.0,
                                ),
                                textTheme("${widget.subServiceCategory!.prix}" +
                                    " DT"),
                                SizedBox(
                                  height: 5.0,
                                ),
                                textTheme(widget.subServiceCategory!.name),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    MainAppBar()
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: widget.subServiceCategory!.color,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            widget.subServiceCategory!.position!,
                            style: TextStyle(
                              color: widget.subServiceCategory!.color,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: widget.subServiceCategory!.color,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            widget.subServiceCategory!.phoneNumber!,
                            style: TextStyle(
                              color: widget.subServiceCategory!.color,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: textTheme("Gallery"),
                    ),
                    Container(
                      height: 200.0,
                      child: ListView.builder(
                          itemCount: widget.subServiceCategory!.gallery.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                showImage(
                                    context,
                                    widget.subServiceCategory!.gallery[index]
                                        .imageName);
                              },
                              child: Container(
                                margin: EdgeInsets.all(15.0),
                                width: 170.0,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/services/hotels/tunisia/" +
                                            widget.subServiceCategory!
                                                .gallery[index].imageName +
                                            ".jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset.zero,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RoundedButton(
                        icon: Icons.location_on_outlined,
                        color: widget.subServiceCategory!.color,
                        text: "Take me there",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapPage(
                                serviceCategorySelected:
                                    widget.subServiceCategory!,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  showImage(context, img) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              height: 500,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/services/hotels/tunisia/" + img + ".jpg",
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget textTheme(String text) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: widget.subServiceCategory!.color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

//fonction permer l'affichage d'une image avec une description
  showImageAndDetails(context, img, text) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: widget.subServiceCategory!.color,
              ),
              padding: EdgeInsets.all(15),
              height: 500,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/services/hotels/tunisia/" + img + ".jpg",
                      width: 350,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
