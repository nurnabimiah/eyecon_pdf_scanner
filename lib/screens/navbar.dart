

import 'package:eyecon_pdf_scanner_app/screens/my_app_screen.dart';
import 'package:flutter/material.dart';
import 'myfiles_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var tabIndex = 0;
  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: tabIndex, children:  [
        //HomeScreen(),
        MyAppScreen(),
        MyfileScreen(),
      ]),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 4,
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: tabIndex,
            onTap: changeTabIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey.shade300,
            items: [
              itemBar(
                Icons.home,
                "Home",
              ),
              itemBar(Icons.file_copy_sharp, "Files")
            ],
          )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (builder) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.300,
                    child: Container(
                        decoration: new BoxDecoration(
                            color: Colors.white70.withOpacity(1),
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40.0),
                                topRight: const Radius.circular(40.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text('Upload Files'),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/camera.png',
                                      height: 65,
                                      width: 70,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('Take a Photo')
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),

                                /// ....take a photo
                                GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/import_files.png',
                                        height: 65,
                                        width: 70,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text('Import Files'),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),

                                ///......Gallery.....
                                GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/gallery.png',
                                        height: 65,
                                        width: 70,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text('Gallery')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            // cross....
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                'images/cancel.png',
                                height: 65,
                              ),
                            )
                          ],
                        )),
                  );
                });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
