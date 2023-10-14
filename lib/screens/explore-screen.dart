import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Explore Categories",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: OutlineSearchBar(
                  backgroundColor: Color(0xffF2F3F2),
                  onSearchButtonPressed: ((value) => {print(value)}),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Search product or brand",
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  borderColor: Color(0xffF2F3F2),
                  hideSearchButton: false,
                  searchButtonPosition: SearchButtonPosition.leading,
                  searchButtonIconColor: Colors.grey,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 68,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.orange, width: 1),
                          color: Colors.orange.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IntrinsicWidth(
                        stepWidth: 63,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              'Dog',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IntrinsicWidth(
                        stepWidth: 63,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              'Cat',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IntrinsicWidth(
                        stepWidth: 63,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              'Pets',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IntrinsicWidth(
                        stepWidth: 63,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              'Small Animal',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2 / 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 8,
                    itemBuilder: (_, index) => GridContainer()),
              ),
            ],
          ),
        ));
  }
}

class GridContainer extends StatelessWidget {
  const GridContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 174,
        height: 189,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color.fromARGB(82, 26, 177, 66), width: 1),
          color: Color.fromARGB(20, 26, 177, 66),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/doggroom.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Dog Food",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
