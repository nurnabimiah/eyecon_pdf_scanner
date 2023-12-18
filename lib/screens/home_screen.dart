import 'package:flutter/material.dart';

import '../reusable_widget/app_headertext_widget.dart';
import '../reusable_widget/reusable_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: reusbaleAppbar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeaderTextWidget(
            text: 'My Files',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.200,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/no_data.png',
                  height: 150,
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Scan the document or download ',
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('it form device',
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 0.4,
                        fontWeight: FontWeight.w600))
              ],
            ),
          )
        ],
      ),
    );
  }
}
