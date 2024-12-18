import 'package:flutter/material.dart';
import 'package:skillathon_app/screens/login_page.dart';
import 'package:skillathon_app/screens/register_screen.dart';
import 'package:skillathon_app/widgets/List_tile.dart';
import 'package:skillathon_app/widgets/button.dart';
import 'package:skillathon_app/widgets/gradiant_container.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "COMPETITION LIST",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          GradiantContainer(),
          Column(
            children: [
              CustomListTile(
                titletext: 'Mobile dev',
                subtitletext: 'join as an App dev across various platforms',
              ),
              CustomListTile(
                titletext: 'Web dev',
                subtitletext: 'join as an web dev for Facilitations',
              ),
              CustomListTile(
                titletext: 'graphics Designer',
                subtitletext: 'join as an designer to create unique graphics',
              ),
              CustomListTile(
                titletext: 'AI dev',
                subtitletext: 'join as an Ai dev to build Automatic machines',
              ),
              Divider(
                color: Colors.white,
                thickness: 0.7,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30.0,
                  left: 9,
                ),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: CustomButton(text: "APPLY")),
              )
            ],
          ),
        ],
      ),
    );
  }
}
