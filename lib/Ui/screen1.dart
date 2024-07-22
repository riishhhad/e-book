import 'dart:ui';

import 'package:ebook2/Repository/API/api_book.dart';
import 'package:ebook2/Ui/screen2.dart';
import 'package:ebook2/bloc/ebook_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Repository/Modelclass/ebook.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  late List<Ebook> sooi;

  @override
  void initState() {
    BlocProvider.of<EbookBloc>(context).add(FetcebookEvent());
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 25),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Book ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'Junction',
                            style: TextStyle(
                              color: Color(0xFFD1618A),
                              fontSize: 25,
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 160, top: 20),
                    child: Icon(Icons.notification_add),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Search of Books",
                    prefixIcon: Icon(Icons.search_rounded),
                  ),
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'Best Sellers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Playfair Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ]),
              BlocBuilder<EbookBloc, EbookState>(
  builder: (context, state) {
    if (state is ebookBlocloading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is ebookBlocerror) {
      return Center(
        child: Text("Error"),
      );
    }
    if (state is ebookBlocloaded) {
      sooi = BlocProvider.of<EbookBloc>(context).ebook;
    return SizedBox(
                height: 605,
                width: 500,
                child: BlocBuilder<EbookBloc, EbookState>(
                    builder: (context, state) {

                    return GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 300 / 520,
                      shrinkWrap: true,
                      children: List.generate(
                        sooi.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(onTap: (){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) => screen2(image:sooi[index].cover.toString(), text: sooi[index].name.toString(), writer:sooi[index].author.toString(), description: '',)));
                            },
                              child: Container(
                                width: 200,
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 200,
                                      child: Image.network(
                                        sooi[index].cover.toString(),
                                        fit: BoxFit.cover,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 5,top: 3),
                                          child: SizedBox(width: 85,height: 24,
                                            child: Text(
                                              sooi[index].name.toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'Playfair Display',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),Padding(
                                          padding:  EdgeInsets.only(left: 15),
                                          child: Icon(Icons.star,color: Colors.yellow,size: 20,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            '4.8',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child: Text(
                                            sooi[index].author.toString(),
                                            style: TextStyle(
                                              color: Color(0xFF505050),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 6,top: 5),
                                          child: Text(
                                            '\$6.99',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ),Padding(
                                          padding: EdgeInsets.only(left: 75),
                                          child: Icon(Icons.arrow_circle_right_outlined),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );

                  }
                    ),
              );
  }else{return SizedBox();}
  })],
          ),
        ));
  }
}
