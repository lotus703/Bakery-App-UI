import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Body extends StatelessWidget {
  List<DropdownMenuItem<int>> listItem = [];
  void loadData() {
    listItem.add(
      DropdownMenuItem(
        child: Text("Quận Tân Bình"),
        value: 1,
      ),
    );
    listItem.add(
      DropdownMenuItem(
        child: Text("Quận 4"),
        value: 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Store",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Stack(children: <Widget>[
          Map(),
          DropdownButton(
            items: listItem,
            onChanged: null,
            hint: Text("Chọn khu vực"),
          )
        ]),
      ),
    );
  }
}

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
