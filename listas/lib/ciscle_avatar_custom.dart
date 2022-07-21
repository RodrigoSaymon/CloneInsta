import 'package:flutter/material.dart';

class CiscleAvatarCustom extends StatelessWidget {
  CiscleAvatarCustom({Key? key, required this.urlAvatar, this.nome})
      : super(key: key);

  final String urlAvatar;
  final String? nome;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Container(
            height: 70,
            width: 70,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlAvatar),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$nome',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
