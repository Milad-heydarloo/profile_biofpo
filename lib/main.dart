import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _getBody(),
    );
  }
}

Widget _getBody() {
  return Scaffold(
    appBar: _getAppBar(),
    body: _getView(),
  );
}

PreferredSizeWidget _getAppBar() {
  return AppBar(
    title: Text(
      'Mobile Developer',
      style: TextStyle(fontSize: 30),
    ),
    elevation: 60,
    backgroundColor: Color.fromARGB(255, 16, 16, 16),
  );
}

Widget _getView() {
  return SafeArea(child: _getEvryBody());
}

Widget _getEvryBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        SizedBox(width: double.infinity),
        _getPicCircel(),
        _getTextUnder(),
        _getColumnIcon(),
        SizedBox(height: 12),
        _getCardview(),
        _getTextForetch(),
        _getSkill(),
      ],
    ),
  );
}

Widget _getPicCircel() {
  return Container(
    height: 140,
    width: 140,
    child: CircleAvatar(
      radius: 10,
      backgroundImage: AssetImage('image/photos.png'),
    ),
  );
}

Widget _getTextUnder() {
  return Wrap(
      spacing: 5,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        SizedBox(height: 50),
        Text('Milad'),
        Text('Heydarloo'),
      ]);
}

Widget _getColumnIcon() {
  return Wrap(
    children: [
      IconButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "@milademoun",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 3,
              backgroundColor: Color.fromARGB(255, 90, 92, 90),
              textColor: Color.fromARGB(255, 246, 246, 246),
              fontSize: 18.0);
        },
        icon: FaIcon(FontAwesomeIcons.instagram),
      ),
      IconButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "09013757395",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 3,
              backgroundColor: Color.fromARGB(255, 90, 92, 90),
              textColor: Color.fromARGB(255, 246, 246, 246),
              fontSize: 18.0);
        },
        icon: FaIcon(FontAwesomeIcons.telegram),
      ),
      IconButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "09013757395",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 3,
              backgroundColor: Color.fromARGB(255, 90, 92, 90),
              textColor: Color.fromARGB(255, 246, 246, 246),
              fontSize: 18.0);
        },
        icon: FaIcon(FontAwesomeIcons.whatsapp),
      ),
      IconButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "biofpo",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 3,
              backgroundColor: Color.fromARGB(255, 90, 92, 90),
              textColor: Color.fromARGB(255, 246, 246, 246),
              fontSize: 18.0);
        },
        icon: FaIcon(FontAwesomeIcons.linkedin),
      ),
      IconButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "@milademoun",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 3,
              backgroundColor: Color.fromARGB(255, 90, 92, 90),
              textColor: Color.fromARGB(255, 246, 246, 246),
              fontSize: 18.0);
        },
        icon: FaIcon(FontAwesomeIcons.github),
      ),
      IconButton(
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Milad-heydarloo",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 3,
              backgroundColor: Color.fromARGB(255, 90, 92, 90),
              textColor: Color.fromARGB(255, 246, 246, 246),
              fontSize: 18.0);
        },
        icon: FaIcon(FontAwesomeIcons.stackOverflow),
      ),
    ],
  );
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog Sample')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).restorablePush(_dialogBuilder);
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text('A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

Widget _getCardview() {
  return Card(
      elevation: 90,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(9),
            height: 260,
            child: Image(
              image: AssetImage('image/photos.png'),
            ),
          ),
        ],
      ));
}

Widget _getTextForetch() {
  var listtex = ['Php', 'Java', 'Android', 'Flutter'];

  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      for (var mod in listtex)
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Text('$mod'),
        )
    ],
  );
}

Widget _getSkill() {
  var list = ['Php', 'Java', 'Android', 'Flutter'];
  return Wrap(
    alignment: WrapAlignment.center,
    runSpacing: 5,
    spacing: 5,
    children: [
      for (var kill in list)
        Card(
          margin: const EdgeInsets.only(bottom: 20),
          elevation: 6,
          child: Column(
            children: [
              Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('image/$kill.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  '$kill',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        )
    ],
  );
}
