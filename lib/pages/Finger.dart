import 'package:flutter/material.dart';
//1. imported local authentication plugin
import 'package:local_auth/local_auth.dart';
import 'package:saker11/pages/home.dart';

void main() => runApp(Myfinger());

class Myfinger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyfingerPage(title: 'بصمه الاصبع '),
    );
  }
}

class MyfingerPage extends StatefulWidget {
  MyfingerPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyfingerPage> {
  // 2. created object of localauthentication class
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  // 3. variable for track whether your device support local authentication means
  //    have fingerprint or face recognization sensor or not
  bool _hasFingerPrintSupport = false;
  // 4. we will set state whether user authorized or not
  String _authorizedOrNot = "Not Authorized";
  // 5. list of avalable biometric authentication supports of your device will be saved in this array
  List<BiometricType> _availableBuimetricType = List<BiometricType>();

  Future<void> _getBiometricsSupport() async {
    // 6. this method checks whether your device has biometric support or not
    bool hasFingerPrintSupport = false;
    try {
      hasFingerPrintSupport = await _localAuthentication.canCheckBiometrics;
    } catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _hasFingerPrintSupport = hasFingerPrintSupport;

    });
  }

  Future<void> _getAvailableSupport() async {
    // 7. this method fetches all the available biometric supports of the device
    List<BiometricType> availableBuimetricType = List<BiometricType>();
    try {
      availableBuimetricType =
      await _localAuthentication.getAvailableBiometrics();
    } catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _availableBuimetricType = availableBuimetricType;

    });
  }

  Future<void> _authenticateMe() async {
    // 8. this method opens a dialog for fingerprint authentication.
    //    we do not need to create a dialog nut it popsup from device natively.
    bool authenticated = false;

    try {
      authenticated = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Authenticate for Testing", // message for dialog
        useErrorDialogs: true,// show error in dialog
        stickyAuth: true,// native process

      );



    } catch (e) {
      print(e);
    }
    if (!mounted) return;


    setState(() {
      _authorizedOrNot = authenticated ? "Authorized" : "Not Authorized";
      if (authenticated==true){
        Navigator.of(context).pop();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => homeScreen()));
      }
    }



    );
  }


//  Navigator.of(context).pop();
//  Navigator.push(context,
//  MaterialPageRoute(builder: (context) => Infographic()));

  @override
  void initState() {
    _getBiometricsSupport();
    _getAvailableSupport();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text(widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Has FingerPrint Support : $_hasFingerPrintSupport"),
            Text(
                "List of Biometrics Support: ${_availableBuimetricType.toString()}"),
            Text("Authorized : $_authorizedOrNot"),
            RaisedButton(
              child: Image.asset("homeimage/finger.png",width: 80,height: 80, color: Colors.green,
              ),
              color: Colors.white,
              onPressed: _authenticateMe,
            ),
          ],
        ),
      ),
    );
  }
}