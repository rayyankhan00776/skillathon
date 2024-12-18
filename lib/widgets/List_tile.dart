import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String titletext;
  final String subtitletext;
  const CustomListTile({
    super.key,
    required this.titletext,
    required this.subtitletext,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 8),
      child: Container(
        width: 330,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: Text(
            titletext,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            subtitletext,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: Icon(
            Icons.computer,
            color: Colors.red,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
