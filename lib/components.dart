import 'package:flutter/material.dart';
import 'package:superherovpn/styles.dart';
import 'clipper.dart';
Widget upperCurvedContainer(BuildContext context) {
  return ClipPath(
    clipper: MyCustomClipper(),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 36),
      height: 320,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: curveGradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          topRow(),
          const Text(
            'Super Hero Vpn',
            style: vpnStyle,
          ),
          bottomRow(),
        ],
      ),
    ),
  );
}

Widget topRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          onTap: () {},
          child: const Center(
            child: Icon(
              Icons.tune,
              size: 26,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        height: 50,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
             Container(
                width: 40, child: Image.asset('assets/image/premuim.png')),
            const SizedBox(
              width: 12.0,
            ),
            const Text(
              'Go Premium',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget bottomRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
       Text(
        'Upload\n435 kb/s',
        style: textSpeedStyle,
      ),
       Text(
        'Download\n16 mb/s',
        style: textSpeedStyle,
      ),
    ],
  );
}

Widget circularBottomWidget(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.width * 0.51,
        width: MediaQuery.of(context).size.width * 0.51,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: curveGradient,
        ),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: bgColor),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.width * 0.3,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: greenGradient,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF00D58D),
                      spreadRadius: 6.0,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: (){
                    print('hassan');
                  },
                  child: const Center(
                      child: Icon(
                    Icons.power_settings_new,
                    color: Colors.white,
                    size: 80.0,
                  )

                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: 8,
        top: 30,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              // CircularProgressIndicator(
              //   backgroundColor: Colors.red,
              //   color: Colors.greenAccent,
              //   strokeWidth: 13,
              ),
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/f.jpg'),
                  radius: 40,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget connectedStateText() {
  return Align(
    alignment: Alignment.center,
    child: RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(text: 'status : ', style: connectedStyle, children: [
        TextSpan(
          text: 'Connected\n',
          style: connectedGreenStyle,
        ),
        TextSpan(
          text: '00:22:45',
          style: connectedSubtitle,
        ),
      ]),
    ),
  );
}
Map<String,String>vpndata=
{
  'country':'Egypt','flag':'assets/image/f.jpg'
};

final items = ['Egypt', 'Usa', 'England', 'Europa'];
String value;
Widget locationCard(title, cardBgColor, country, {flag}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: locationTitleStyle,
        ),
        const SizedBox(
          height: 14.0,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.grey[600], width: 4)),
            child: DropdownButton<String>(
              hint: Center(child: const Text('Select Location',style: TextStyle(color: Colors.white),)),
              underline: Container(
                width: 0,
              ),
              icon: const Icon(
                Icons.arrow_drop_down_sharp,
                size: 28.0,
                color: Colors.black87,
              ),
              isExpanded: true,
              value: value,
              items: items.map(buildMenuItem).toList(),
              onChanged: (val) {
                val = value;
              },
            ),
          ),
        ),

      ],
    ),
  );
}
DropdownMenuItem<String> buildMenuItem(String item, {country}) =>
    DropdownMenuItem(
        value: item,
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/image/f.jpg'),
            radius: 20.0,
            backgroundColor: Colors.green,
          ),
          title: Text(
            item,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
