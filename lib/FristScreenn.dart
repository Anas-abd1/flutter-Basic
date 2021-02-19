import 'package:flutter/material.dart';

class Frist extends StatelessWidget {
  //const Frist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "welcome",
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            letterSpacing: 4,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 40,
        ),
        actions: [
          Icon(
            Icons.logout,
            size: 40,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  child: Text(
                    "vers la deuxieme page",
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeuxiemePage(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("Vers l image"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Ramla(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DeuxiemePage extends StatelessWidget {
  //const DeuxiemePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dexieme page"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class Ramla extends StatefulWidget {
  // Ramla({Key key}) : super(key: key);

  @override
  _RamlaState createState() => _RamlaState();
}

class _RamlaState extends State<Ramla> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Image",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 40,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/250px-Image_created_with_a_mobile_phone.png",
          ),
        ],
      ),
    );
  }
}
