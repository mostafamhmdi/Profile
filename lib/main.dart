import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'YanoneKaffeesatz',
        textTheme: TextTheme(
          headline6: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w700,
              color: Colors.white), // Set the color of the app bar title
          bodyText2: TextStyle(fontSize: 15, color: Colors.white),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 42, 42, 42),
        appBarTheme:
            AppBarTheme(backgroundColor: Color.fromARGB(255, 42, 42, 42)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHeartFilled = false;
  final List<String> pngIcons = [
    'images/Python.png',
    'images/powerBI.png',
    'images/TF.png',
    'images/pandas.png',
    'images/mysql.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(
              icon: Icon(
                isHeartFilled
                    ? CupertinoIcons.heart_fill
                    : CupertinoIcons.heart,
                color: isHeartFilled ? Colors.red : Colors.redAccent,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  isHeartFilled = !isHeartFilled;
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Image.asset(
                      'images/Mostafa.png',
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Add any additional widgets related to the image here
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Mostafa Mohammadi',
                style: TextStyle(
                  fontSize: 30,
                  // Adjust the font size as needed
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Data Scientist',
                style: TextStyle(
                  fontSize: 28,
                  color: const Color.fromARGB(255, 201, 197, 197),
                  // Adjust the font size as needed
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 3, 10, 112).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 30,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: ElevatedButton(
                    onPressed: () {
                      String githubUrl =
                          'https://www.linkedin.com/in/mostafamhmdi/';
                      Clipboard.setData(ClipboardData(text: githubUrl));

                      // Show SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Linkedin URL Copied to clipboard'),
                          duration: Duration(seconds: 1),
                          backgroundColor: Color.fromRGBO(65, 13, 13,
                              0.867), // You can customize the duration
                        ),
                      );
                      // Button action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(
                          255, 10, 102, 194), // Set your desired color here
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                            size: MediaQuery.of(context).size.width * 0.075,
                          ),
                        ),

                        SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.025), // Adjust the spacing between the icon and text
                        Text(
                          'linkedin.com/in/mostafamhmdi/',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.042,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Add more buttons here if needed
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.035,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 26, 26, 27).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 30,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: ElevatedButton(
                    onPressed: () {
                      String githubUrl = 'https://github.com/mostafamhmdi';
                      Clipboard.setData(ClipboardData(text: githubUrl));

                      // Show SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Github URL Copied to clipboard'),
                          duration: Duration(seconds: 1),
                          backgroundColor: Color.fromRGBO(65, 13, 13,
                              0.867), // You can customize the duration
                        ),
                      );

                      // Button action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(
                          255, 31, 35, 40), // Set your desired color here
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Icon(
                            FontAwesomeIcons.github,
                            color: Color.fromARGB(255, 201, 209, 217),
                            size: MediaQuery.of(context).size.width * 0.075,
                          ),
                        ),

                        SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.025), // Adjust the spacing between the icon and text
                        Text(
                          'github.com/mostafamhmdi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.042,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Add more buttons here if needed
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 40, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.175,
                    height: MediaQuery.of(context).size.width * 0.175,
                    child: ElevatedButton(
                      onPressed: () {
                        String githubUrl = 'mostafamohammadi2100@gmail.com';
                        Clipboard.setData(ClipboardData(text: githubUrl));

                        // Show SnackBar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Gmail Copied to clipboard'),
                            duration: Duration(seconds: 1),
                            backgroundColor: Color.fromRGBO(65, 13, 13,
                                0.867), // You can customize the duration
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the border radius as needed
                        ),
                        primary: Color.fromARGB(255, 234, 67, 53),
                      ),
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: MediaQuery.of(context).size.width * 0.065,
                        color: Colors.white, // Adjust the icon color as needed
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 40, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.175,
                    height: MediaQuery.of(context).size.width * 0.175,
                    child: ElevatedButton(
                      onPressed: () {
                        String githubUrl = 'https://t.me/Mostafa_mhammadi';
                        Clipboard.setData(ClipboardData(text: githubUrl));

                        // Show SnackBar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Telegram URL Copied to clipboard'),
                            duration: Duration(seconds: 1),
                            backgroundColor: Color.fromRGBO(65, 13, 13,
                                0.867), // You can customize the duration
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the border radius as needed
                        ),
                        primary: Color.fromARGB(255, 48, 163, 230),
                      ),
                      child: Icon(
                        FontAwesomeIcons.telegram,
                        size: MediaQuery.of(context).size.width * 0.065,
                        color: Colors.white, // Adjust the icon color as needed
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.175,
                    height: MediaQuery.of(context).size.width * 0.175,
                    child: ElevatedButton(
                      onPressed: () {
                        String githubUrl =
                            'https://www.instagram.com/mostafa_mhammadi/';
                        Clipboard.setData(ClipboardData(text: githubUrl));

                        // Show SnackBar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Instagram URL Copied to clipboard'),
                            duration: Duration(seconds: 1),
                            backgroundColor: Color.fromRGBO(65, 13, 13,
                                0.867), // You can customize the duration
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the border radius as needed
                        ),
                        primary: Color.fromARGB(255, 170, 11, 221),
                      ),
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        size: MediaQuery.of(context).size.width * 0.065,
                        color: Colors.white, // Adjust the icon color as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.05,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 100,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: pngIcons.map((path) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                        // Set your desired width here
                                        child: Image.asset(
                                          path,

                                          height:
                                              60, // Set your desired height here
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Click to see what I know',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
