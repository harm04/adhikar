import 'package:adhikar/utils/colors.dart';
import 'package:adhikar/widgets/drawerItems.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.transparent,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: primaryColor,
                          child: const CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                              'https://image.cdn2.seaart.ai/2023-11-29/23980058360156165/96a282a29ec11f1e76f40a92621ae2ad854df3a4_high.webp',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'username',
                              style:
                                  TextStyle(color: primaryColor, fontSize: 23),
                            ),
                            const Text(
                              'Student',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Column(
                        children: [
                          DrawerItems(
                              image: 'assets/icons/ic_filter.png',
                              name: 'Filter'),
                          DrawerItems(
                              image: 'assets/icons/ic_fines.png',
                              name: 'Fines'),
                          DrawerItems(
                              image: 'assets/icons/ic_contact_us.png',
                              name: 'Contact us'),
                          DrawerItems(
                              image: 'assets/icons/ic_forms.png',
                              name: 'Forms'),
                          DrawerItems(
                              image: 'assets/icons/ic_emergency.png',
                              name: 'Emergency'),
                          DrawerItems(
                              image: 'assets/icons/ic_feedback.png',
                              name: 'Feedback'),
                          DrawerItems(
                              image: 'assets/icons/ic_rate_us.png',
                              name: 'Rate us'),
                          DrawerItems(
                              image: 'assets/icons/ic_emergency.png',
                              name: 'Emergency'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/ic_logout.png',
                          height: 20,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(16, 32, 55, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            title: Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(44, 67, 94, 0.671),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Center(
                  child: TextFormField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        'assets/icons/ic_search.png',
                        height: 20,
                        color: Colors.white,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
