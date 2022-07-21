import 'package:flutter/material.dart';

import 'ciscle_avatar_custom.dart';

void main() {
  runApp(const CloneInsta());
}

class CloneInsta extends StatelessWidget {
  const CloneInsta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: CloneInstaPage(),
    );
  }
}

class CloneInstaPage extends CloneInsta {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.favorite_border_outlined,
            size: 30,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.chat_bubble_outline,
            size: 30,
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CiscleAvatarCustom(
                  urlAvatar: 'https://www.w3schools.com/howto/img_avatar2.png',
                  nome: 'Elã Borg...',
                ),
                CiscleAvatarCustom(
                  urlAvatar: 'https://www.w3schools.com/howto/img_avatar.png',
                  nome: 'Rodrigo S...',
                ),
                CiscleAvatarCustom(
                  urlAvatar:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqRyIiwYCq4s-fZi1zdmyfSuIPUvg9EyZ_Q&usqp=CAU',
                  nome: 'Heitor',
                ),
                CiscleAvatarCustom(
                  urlAvatar:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEMpUS3NxMp4i7QkSKNn40Oax_w-mLBFsoPA&usqp=CAU',
                  nome: 'Julieta F...',
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text('Rodrigo Saymon', 
            style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.more_horiz, color: Colors.white,),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.w3schools.com/howto/img_avatar.png'),
            ),
          ),
          Container(
            color: Colors.teal,
            height: 300,
            width: 300,
            child: Image.network('src'),
          
          )
        ],
      ),
    );
  }
}
