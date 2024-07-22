import 'package:ebook2/Ui/screen1.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  final  String image;
  final String text;
  final String writer;
  final String description;
  const screen2({super.key, required this.image, required this.text, required this.writer, required this.description});
  @override
  _screen2State createState() => _screen2State();
   // TODO: implement Screen2
 }


  @override
  State<screen2> createState() => _screen2State();


class _screen2State extends State<screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: <Widget>[Image.asset('assets/2.png'), Row(
              children: [
                GestureDetector(onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen1()));},
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20,top: 20),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
              ],
            ),  Padding(
              padding: EdgeInsets.only(left: 100,top: 20),
              child: Container(
                width: 166,
                height: 48,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.text.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.writer.toString(),
                      style: TextStyle(
                        color: Color(0xFF686868),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: SizedBox(width: 160,height:350,child: Image.network(widget.image.toString())),
              ),
            )
            ]),Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 15,top: 10),
                  child: Text(
                    'Synopsis',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Playfair Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),Padding(
              padding:  EdgeInsets.only(left: 15,top: 10),
              child: SizedBox(
                width: 353,
                child: Text(
                  'Elspeth needs a monster. The monster might be her. Elspeth Spindle needs more than luck to stay safe in the eerie, mist-locked kingdom of Blunder—she needs a monster. She calls him the Nightmare, an ancient, mercurial spirit trapped in her head. He protects her. He keeps her secrets.\n \nBut nothing comes for free, especially magic. When Elspeth meets a mysterious highwayman on the forest road, her life takes a drastic turn. Thrust into a world of shadow and deception, she joins a dangerous quest to cure Blunder from the dark magic infecting it. And the highwayman? He just so happens to be the King’s nephew, Captain of the most dangerous men in Blunder…and guilty of high treason.\n\nTogether they must gather twelve Providence Cards—the keys to the cure. But as the stakes heighten and their undeniable attraction intensifies, Elspeth is forced to face her darkest secret yet: the Nightmare is slowly taking over her mind. And she might not be able to stop him.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),Padding(
              padding:  EdgeInsets.only(top: 48),
              child: Container(
                width: 393,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 40,
                      offset: Offset(0, -3),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 17,
                      top: 14,
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 30,
                              offset: Offset(0, 16),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 93,
                      top: 14,
                      child: Container(
                        width: 250,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: ShapeDecoration(
                          color: Color(0xFF404066),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 40,
                              offset: Offset(0, 12),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),Padding(
                      padding: EdgeInsets.only(left: 30,top: 25),
                      child: Icon(Icons.bookmark_border),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
