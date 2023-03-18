// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 53,
          width: 239,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 17.5,
              ),
              Icon(
                Icons.search,
                color: Colors.grey[300],
              ),
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for colleges ,schools.... ',
                      hintStyle: TextStyle(
                        color: Colors.grey[300],
                      )),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 53,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.mic),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
