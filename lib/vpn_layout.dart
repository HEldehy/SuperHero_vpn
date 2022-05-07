import 'package:flutter/material.dart';
import 'package:superherovpn/styles.dart';
import 'components.dart';
class VpnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
                children: <Widget>[
                  upperCurvedContainer(context),
                  circularBottomWidget(context),
                  const SizedBox(height: 10,),
                  connectedStateText(),
                  const SizedBox(height: 5,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                  locationCard('Random Location',Colors.transparent,'Egypt'),
                  const SizedBox(
                    height: 20,
                  ),
                  locationCard('Select Location',Colors.transparent,'USA'),
                  const SizedBox(height: 10,),
                  Container(
                    color: Colors.green,
                    height: 200,
                    width: double.infinity,

                  )

                ],

            ),
          ],
        ),
      ),
    );
  }
}
