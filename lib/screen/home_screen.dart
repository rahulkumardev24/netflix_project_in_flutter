import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:netflix/screen/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedLanguage = "English"; // Default selected language

  @override
  Widget build(BuildContext context) {
    List<String> question = [
      "What is Netflix?",
      "How much does Netflix cost?",
      "Where can I watch?",
      "How do I cancel?",
      "What can I watch on Netflix?",
      "Is Netflix good for kids?"
    ];

    List<String> query = [
      "FAQ",
      "Help Center",
      "Account",
      "Media Centre",
      "Investor Relations",
      "Jobs",
      "Ways to watch",
      "Terms of Use",
      "Privacy",
      "Cookie Preferences",
      "Corporate Information",
      "Contact Us",
      "Speed Test",
      "Legal Notices",
      "Only on Netflix"
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First Box
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: Image.asset(
                    "assets/images/bac.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "NETFLIX",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: appRed,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: appWhite),
                            ),
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: languageDrop(),
                            ),
                          ),
                          const SizedBox(width: 10),
                          signOutButton()
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Welcome back!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: appWhite,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 200,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Unlimited movies, TV shows and more",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: appWhite,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 50,
                  right: 50,
                  child: Container(
                    width: 300,
                    height: 60,
                    child: finishSignUpButton(),
                  ),
                ),
                const Positioned(
                  bottom: 140,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Watch anywhere. Cancel anytime.",
                      style: TextStyle(fontSize: 25, color: appWhite),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.black26),
              ),
            ),
            // Second Box
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Enjoy on your TV",
                    style: TextStyle(
                        fontSize: 40,
                        color: appWhite,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: appWhite,
                    ),
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: Image.asset("assets/images/computer.png"),
                      ),
                      Positioned(
                        top: 20,
                        left: 40,
                        child: GifView.asset(
                          'assets/images/netflix.gif',
                          height: 200,
                          width: 200,
                          frameRate: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black26)),
            ),
            // Third Box
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  const Text(
                    "Download Your shows to Watch offline",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Save Your favourites easily and always have something to Watch",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Container(
                            width: 100,
                            child: Image.asset("assets/images/mobile.jpg")),
                      ),
                      Positioned(
                        bottom: 90,
                        child: Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Image.asset("assets/images/ti.jpg"),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Titanic",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Downloading...",
                                    style: TextStyle(color: Colors.blue.shade900),
                                  )
                                ],
                              ),
                              SizedBox(width: 30),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: GifView.asset(
                                  'assets/images/dow.gif',
                                  frameRate: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black26)),
            ),
            // Fourth Box
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Watch everywhere",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      Positioned(
                        bottom: 60,
                        left: 80,
                        child: GifView.asset(
                          height: 300,
                          width: 260,
                          alignment: Alignment.center,
                          "assets/images/mov.gif",
                        ),
                      ),
                      Image.asset("assets/images/device.png"),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black26)),
            ),
            // Fifth Box
            Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  const Text(
                    "Create profiles for kids",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Send children on adventures with their favourite characters in a space made just for them—free with your membership.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset("assets/images/baby.png"),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black26)),
            ),
            // Sixth Box
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Frequently Asked \nQuestions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: List.generate(
                        question.length,
                            (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 6),
                        child: Container(
                          color: Colors.white10,
                          child: ListTile(
                            leading: Text(
                              question[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                 const SizedBox(height: 30,),

                  SizedBox(
                    width: 300,
                    height: 60,
                    child: finishSignUpButton(),
                  ),
                 const SizedBox(height: 40),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black26)),
            ),
            // Footer
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Questions? Call 000-800-919-1694",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 380,
                    child: GridView.builder(
                      // Remove shrinkWrap as Expanded handles the sizing
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 6/2,
                        crossAxisCount: 2, // Two columns
                      ),
                      itemCount: query.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            query[index],
                            style: const TextStyle(fontSize: 18,
                              color:Colors.white54 ,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    ),
                  ),

                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: appWhite),
                    ),
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 6),
                      child: languageDrop(),
                    ),
                  ),
                  SizedBox(height: 15,),
                  
                  Text("Netflix" , style: TextStyle(fontSize: 18 , color: Colors.white.withOpacity(0.6)),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
















  Widget languageDrop() {
    List<String> language = ["Hindi", "English"];
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        iconEnabledColor: Colors.white,
        isExpanded: true,
        value: selectedLanguage,
        items: language.map((String languageSelect) {
          return DropdownMenuItem<String>(
            value: languageSelect,
            child: Text(
              languageSelect,
              style: const TextStyle(fontSize: 20, color: appWhite),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedLanguage = newValue;
          });
        },
      ),
    );
  }

  Widget signOutButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: appLightRed,
        foregroundColor: appWhite,
      ),
      child: const Text(
        "Sign Out",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget finishSignUpButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: appLightRed,
        foregroundColor: appWhite,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Finish Sign Up",
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.navigate_next)
        ],
      ),
    );
  }
}

