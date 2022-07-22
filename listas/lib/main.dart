import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
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
    final mediaQuery = MediaQuery.of(context).size;
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
            IcoFontIcons.facebookMessenger, size: 30,),
            
          SizedBox(width: 20),
        ],
         title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
          ),

        
       
      
      body: SingleChildScrollView(
        child: Column(
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
              title: Text(
                'Rodrigo Saymon',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.w3schools.com/howto/img_avatar.png'),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.teal,
              // height: mediaQuery.height,
              width: mediaQuery.width,
              child: Image.network(
                  'https://github.com/RodrigoSaymon/ListaDeTarefas/blob/main/assets/imagens/insta.png?raw=true'),
            ),
            SizedBox( height: 15,),

            Row(
              children: [
                SizedBox( width: 20,),
                Icon(Icons.favorite_border, color: Colors.white,size: 30,),
                SizedBox( width: 20,),
                Icon(Icons.chat_bubble_outline, color: Colors.white, size: 30,),
                SizedBox( width: 20,),
                Icon(Icons.near_me_outlined, color: Colors.white,size: 30,),
                SizedBox( width: 20,),
                Icon(Icons.turned_in_outlined, color: Colors.white,size: 30,),
              ],
            ),
            

          ],
        ),
      ),
    );
  }
}
