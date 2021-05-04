import 'package:flutter/material.dart';
class LzwAppBar extends StatelessWidget {
  final String ?title;

  const LzwAppBar({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.cyan,
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.black12,
                  //   offset: Offset(0, 4),
                  //   blurRadius: 6,
                  // )
                ]),
            margin: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("title")],
            )),
      );
  }
 
}
