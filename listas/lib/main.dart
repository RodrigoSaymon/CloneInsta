import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
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
      // appBar: AppBar(
      //   actions: [
      //     Icon(
      //       Icons.add_box_outlined,
      //       size: 30,
      //     ),
      //     SizedBox(width: 20),
      //     Icon(
      //       Icons.favorite_border_outlined,
      //       size: 30,
      //     ),
      //     SizedBox(width: 20),
      //     Icon(
      //       IcoFontIcons.facebookMessenger,
      //       size: 30,
      //     ),
      //     SizedBox(width: 20),
      //   ],
      //   title: const Text(
      //     'Instagram',
      //     style: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   backgroundColor: Colors.black,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit_outlined,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
            
              height: 90,
              width: mediaQuery.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 150,
                    height: 90,
                    child: Image.network(
                        'https://thumbs.dreamstime.com/b/print-204012277.jpg'),
                  ),
                  SizedBox(width: 90),
                  Icon(
            Icons.add_box_outlined, color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.favorite_border_outlined, color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 20),
          Icon(
            IcoFontIcons.facebookMessenger, color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 15),

                              
                  
               
          
                ],
              ),
            ),
            // SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CiscleAvatarCustom(
                    urlAvatar:
                        'https://www.w3schools.com/howto/img_avatar2.png',
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
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  LineAwesomeIcons.telegram,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 215,
                ),
                Icon(
                  LineAwesomeIcons.bookmark,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    '1.463 curtidas',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'paulo.serra45 GESTANTE, A 2ª DOSE É ESSENCIAL PARA',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'A SUA PROTEÇÃO...',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'mais',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 105, 105),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Ver todos os 73 comentários',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 105, 105),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
