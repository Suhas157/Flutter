import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new HomeWidgetState();
  }
}

class HomeWidgetState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          children: [
            NewWidget(strValue: "car", next: Icons.directions_car),
            NewWidget(strValue: "transit", next: Icons.train),
            NewWidget(strValue: "", next: Icons.directions_bike),
            NewWidget(strValue: "", next: Icons.directions_car),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String strValue;
  final IconData next;
  const NewWidget({
    Key? key,
    required this.strValue,
    required this.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _hasBeenPressed = false;
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(strValue, style: TextStyle(color: Colors.black)),
      icon: Icon(
        next,
        color: Colors.black,
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.blue,
        onSurface: Colors.red,
        primary: Colors.grey[300],

        //color: _hasBeenPressed ? Colors.grey[300] : Colors.black,
      ),
    );
  }
}
