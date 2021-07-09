import 'package:flutter/material.dart';
import 'package:task_4/SecondScren.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 4',
      home: TaskFour(),
    );
  }
}

class TaskFour extends StatefulWidget {
  const TaskFour({Key? key}) : super(key: key);

  @override
  _TaskFourState createState() => _TaskFourState();
}

class _TaskFourState extends State<TaskFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wild Animals"),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child: Icon(Icons.notifications_active),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 300,
              child: Center(
                  child: Text(
                "Burger Menu",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              )),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.home, color: Colors.blue),
              onTap: () {
                launch("https://en.wikipedia.org/wiki/Tiger");
              },
              // tileColor: Colors.grey,
            ),
            Divider(thickness: 2.0, color: Colors.blue),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.settings, color: Colors.blue),
              //tileColor: Colors.grey,
            ),
            Divider(thickness: 2.0, color: Colors.blue),
            ListTile(
              title: Text(
                "Support",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.support, color: Colors.blue),
              //tileColor: Colors.grey,
            ),
            Divider(thickness: 2.0, color: Colors.blue),
            ListTile(
              title: Text(
                "Help",
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
              ),
              trailing: Icon(Icons.help, color: Colors.blue),
              //tileColor: Colors.grey,
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Tiger",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 5.0)),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                    "https://ichef.bbci.co.uk/news/976/cpsprodpb/0D47/production/_113699330_a51acb47-5f21-482b-8513-18594d9b0e39.jpg"),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              //color: Colors.grey,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: Colors.grey[200],
              ),

              child: Center(
                child: Text(
                  "The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange-brown fur with a lighter underside. It is an apex predator, primarily preying on ungulates such as deer and wild boar.",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  children: [
                    Text("Weight : Approx. 220 kg (480 lbs)",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    Text("Height : Between 90 to 110 cm",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    Text("Availability Worldwide : 3,900 ",
                        style: TextStyle(color: Colors.black, fontSize: 20))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0, right: 100.0),
              child: ElevatedButton(
                  // onPressed: () async {
                  //   const url = 'https://en.wikipedia.org/wiki/Tiger';
                  //   if (await canLaunch(url)) {
                  //     await launch(url);
                  //   } else {
                  //     throw 'Could not launch $url';
                  //   }
                  // },
                  onPressed: () {
                    launch("https://www.worldwildlife.org/species/tiger");
                  },
                  child: Text("More Info about Tiger")),
            ),

            // second animal

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(
                color: Colors.blue,
                thickness: 2.0,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Lion",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 5.0)),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/download.jpg"),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              //color: Colors.grey,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: Colors.grey[200],
              ),

              child: Center(
                child: Text(
                  "The lion (Panthera leo) is a large felid of the genus Panthera native mainly to Africa. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions have a prominent mane",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  children: [
                    Text("Weight : Approx. 170–230 kg",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    Text("Height : Between 1 to 1.2 m",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    Text("Availability Worldwide : Approx. 20,000 ",
                        style: TextStyle(color: Colors.black, fontSize: 20))
                  ],
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  },
                  child: Text("Second Screen")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Rate Us  "),
                Icon(
                  Icons.star,
                  color: Colors.orange[700],
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange[700],
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange[700],
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange[700],
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
