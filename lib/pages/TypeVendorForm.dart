import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../provider/JenisVendor.dart';

class RadioSelectionType extends StatefulWidget {
  @override
  _RadioSelectionTypeState createState() => _RadioSelectionTypeState();
}

class _RadioSelectionTypeState extends State<RadioSelectionType> {
  int selectedRadio;
  List<JenisVendor> jenisvendors;
  JenisVendor selectedjenisVendor;
  var _onPressed;
  bool _enabled = false;
  final String title = 'pilih jenis Vendor';

  @override
  initState() {
    super.initState();
    jenisvendors = JenisVendor.getJenisVendors();
  }

  setSelectedJenisVendor(JenisVendor jenisVendor) {
    setState(() {
      selectedjenisVendor = jenisVendor;
    });
  }

// auto create radio list tile dari total jenis vendor yang ada.
  List<Widget> createRadioListTilejenisvendor() {
    List<Widget> widgets = [];

    for (JenisVendor jenisVendor in jenisvendors) {
      widgets.add(
        RadioListTile(
          value: jenisVendor,
          groupValue: selectedjenisVendor,
          title: Text(jenisVendor.jenisVendorTitle),
          onChanged: (currentJenisVendor) {
            print('Current $currentJenisVendor');
            setSelectedJenisVendor(currentJenisVendor);
          },
          selected: selectedjenisVendor == jenisVendor,
        ),
      );
    }
    return widgets;
  }

  setButton(bool value) {
    setState(() {
      _enabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // masih mencari cara biar tombol di disable dlu
    // if (_enabled) {
    //   _onPressed = () {
    //     print('tap');
    //   };
    // }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 245, 229, 1),
              image: DecorationImage(
                image: AssetImage("assets/TransparentBackground.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(title),
                    ),
                    Divider(
                      color: Colors.brown,
                    ),
                    Container(
                      child: Column(
                        children: createRadioListTilejenisvendor(),
                      ),
                    ),
                    Container(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 50,
              width: 420,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: RaisedButton(
                child: Text(
                  'Selanjutnya',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: null,
                disabledColor: Colors.grey,
                // disabledTextColor: Colors.grey,
                elevation: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
