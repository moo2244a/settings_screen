import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  final pathImage =
      """http://scontent.fcai20-1.fna.fbcdn.net/v/t39.30808-6/460824246_2305995099746499_634155927861194479_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=M0xCmQMyrVoQ7kNvwEntZwf&_nc_oc=Adlfy_aZA2ORrZ-Cwgci-xgj8m2XcVX0Oy5OfNDiYA6dP-bd2JPSa5_-q-dwIXPMg-k&_nc_zt=23&_nc_ht=scontent.fcai20-1.fna&_nc_gid=ysPi2cLJ4TmEGuMABgcYhQ&oh=00_Aft6TWWuKKoyiJxt5GNO1iMVExUb3X1OvtMSowMAkGxObg&oe=6998740C""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                  Icon(Icons.sunny, color: Colors.white),
                ],
              ),
            ),
            Stack(
              children: [
                CustomProfileAvatar(radius: 60),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xfffbbf0f),
                      shape: .circle,
                    ),
                    child: IconButton(
                      color: Color.fromARGB(255, 0, 0, 0),
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomProfileText(),

            SizedBox(height: 20),
            CustomElevatedButton(text: '"Upgrade to PRO"', onPressed: () {}),
            SizedBox(height: 20),
            Expanded(child: CustomListView()),
          ],
        ),
      ),
    );
  }
}

class CustomProfileAvatar extends StatelessWidget {
  const CustomProfileAvatar({
    super.key,
    required this.radius,
    required this.pathImage,
  });

  final double radius;
  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(pathImage),
    );
  }
}

class ItemModel {
  final IconData icon;
  final bool trailing;

  final String text;
  // final onPresse;
  ItemModel({required this.icon, required this.text, this.trailing = true});
}

List<ItemModel> listsItem = [
  ItemModel(icon: Icons.privacy_tip, text: 'Privacy'),
  ItemModel(icon: Icons.history, text: 'Purchase History'),
  ItemModel(icon: Icons.help_outline, text: 'Help & Support'),
  ItemModel(icon: Icons.settings, text: 'Settings'),
  ItemModel(icon: Icons.person_add, text: 'Invite a Friend'),
  ItemModel(icon: Icons.logout, text: 'Logout', trailing: false),
];
