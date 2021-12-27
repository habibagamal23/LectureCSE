import 'package:flutter/material.dart';
import 'package:lecture_azhar/main.dart';


Widget text({
  required BuildContext context,
  required String title,
  required String subTitle,
}) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child :SelectableText(
            title,
            style: TextStyle(
              fontSize: 25,
              color: mythem.ko7ly
            ),
            cursorColor: Colors.blueGrey,
            showCursor: true,
            toolbarOptions: ToolbarOptions(
                copy: true,
                selectAll: true,
                cut: false,
                paste: false
            ),
          ),
        ),
        SelectableText(
            subTitle,
            style: TextStyle(
                color: Colors.red
                    ,
              fontSize: 15,
              letterSpacing: 2.0,


            ),
            cursorColor: Colors.blueGrey,
            showCursor: true,
            toolbarOptions: ToolbarOptions(
                copy: true,
                selectAll: true,
                cut: false,
                paste: false
            ),
           )
      ]));
}
