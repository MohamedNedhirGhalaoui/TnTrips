import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tn_trips/data/models/sub_service_category.dart';
import 'package:tn_trips/ui/common/rounded_button.dart';
import 'package:tn_trips/ui/home/widget/main_app_bar.dart';

class DetailsPage extends StatefulWidget {
  final SubServiceCategory subServiceCategory;
  const DetailsPage({Key? key, required this.subServiceCategory})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/services/hotels/tunisia/" +
                                widget.subServiceCategory.imageName +
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
                        children: [
                          ClipOval(
                            child: Container(
                              color: widget.subServiceCategory.color,
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                widget.subServiceCategory.icon,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: widget.subServiceCategory.color,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              widget.subServiceCategory.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  MainAppBar()
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Gallery",
                        style: TextStyle(
                          color: widget.subServiceCategory.color,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 200.0,
                      child: ListView.builder(
                          itemCount: widget.subServiceCategory.gallery.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                showImage(
                                    context,
                                    widget.subServiceCategory.gallery[index]
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
                                            widget.subServiceCategory
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
                        color: widget.subServiceCategory.color,
                        text: "MAP",
                        press: () {},
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
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              height: 450,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "assets/images/services/hotels/tunisia/" + img + ".jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
