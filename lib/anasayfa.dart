import 'package:exxen_tasarim/colors.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  List<String> imagesList = [
    'assets/gibi.jpg',
    'assets/enis_arikan.jpg',
    'assets/sadece_arkadasiz.jpg',
    'assets/ask_kumardir.jpg',
    'assets/katarsis.jpg',
    'assets/leyla_ile_mecnun.jpg',
    'assets/olagan_supheliler.jpg',
    'assets/olum_zamani.jpg',
    'assets/seref_bey.jpg',
    'assets/seri_katiller.jpg',
    'assets/tolgshow.jpg',
    'assets/zeynep_bastik.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackground,
      body: Center(
        child: GridView.builder(
            itemCount: imagesList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 2/2.5
        ), itemBuilder: (context,index){
              if(index!=1){
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: strokeColor,width: 3),
                      image: DecorationImage(
                          image: AssetImage(imagesList[index]),
                          fit: BoxFit.cover)
                  ),
                );
              }else{
                return Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.jpg'),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.bottomCenter)
                  ),
                );
              }
        }
        )
      ),
    );
  }
}
