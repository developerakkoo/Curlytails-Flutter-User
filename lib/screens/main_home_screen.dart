import 'package:card_swiper/card_swiper.dart';
import 'package:curlytailsapp/Widgets/image-Container.dart';
import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 90, // Adjust the height as needed
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/dog-icon.png', // Replace with your image asset path
                          height: 25, // Adjust the image height as needed
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlineSearchBar(
                            backgroundColor: Color(0xffF2F3F2),
                            onSearchButtonPressed: ((value) => {print(value)}),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Search product or brand",
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderColor: Color(0xffF2F3F2),
                            hideSearchButton: false,
                            searchButtonPosition: SearchButtonPosition.leading,
                            searchButtonIconColor: Colors.grey,
                            padding: const EdgeInsets.only(left: 10, right: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Add more widgets to the column if needed
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Swiper(
                      containerHeight: 200,
                      containerWidth: 150,

                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          "assets/images/banner-1.jpeg",
                          fit: BoxFit.cover,
                        );
                      },
                      autoplay: true,
                      fade: 0.5,
                      itemCount: 6,
                      pagination: const SwiperPagination(),
                      // control: const SwiperControl(),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending Now",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          trending_widget(),
                          SizedBox(
                            width: 10,
                          ),
                          trending_widget(),
                          SizedBox(
                            width: 10,
                          ),
                          trending_widget(),
                          SizedBox(
                            width: 10,
                          ),
                        ]),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Browse pet types",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 170,
                        height: 181,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              248, 164, 76, 0.15), // Opacity background color
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/images/dog.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Dog",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 170,
                        height: 181,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              248, 164, 76, 0.15), // Opacity background color
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/images/cat.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Cat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 170,
                        height: 181,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              248, 164, 76, 0.15), // Opacity background color
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/images/cat.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Cat",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class trending_widget extends StatelessWidget {
  const trending_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 173,
            height: 170,
            child: Image.asset(
              "assets/images/banner-3.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8), // Add some spacing between the image and text
        SizedBox(
          width: 173,
          child: Text(
            'Free puppy socialisation\nin store',
            style: TextStyle(
              color: Color(0xFF1D1D1B),
              fontSize: 16,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w500,
              height: 1.12,
              letterSpacing: 0.10,
            ),
          ),
        ),

        Text(
          'FREE',
          style: TextStyle(
            color: Color(0xFF7C7C7C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
            height: 1.29,
          ),
        )
      ],
    );
  }
}
