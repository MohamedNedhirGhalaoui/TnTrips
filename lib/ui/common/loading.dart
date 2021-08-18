import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tn_trips/common/constants.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Center(
            child: SpinKitFadingCube(
              color: kPrimaryColor,
              size: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
