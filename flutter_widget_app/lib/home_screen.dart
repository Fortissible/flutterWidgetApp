import 'package:flutter/material.dart';
import 'package:flutter_widget_app/char_model.dart';

class HomeScreen extends StatefulWidget{
  // final String query;

  // const HomeScreen({Key? key, required this.query}) : super(key:key);
  const HomeScreen({Key? key}) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: charModelList.length,
          itemBuilder: (BuildContext context, int idx){
            final CharModel char = charModelList[idx];
            return Align(
              alignment: FractionalOffset.center,
              child: Container(
                  height: 185,
                  width: 375,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Container(
                            width: 375,
                            height: 115,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(2, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child : Row(
                              children: [
                                Container(
                                  width : 125,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      alignment: Alignment.centerLeft,
                                      width: 190,
                                      constraints: const BoxConstraints(
                                        maxWidth: 190,
                                      ),
                                      child: Text(
                                        char.charName,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: 190,
                                      constraints: const BoxConstraints(
                                        maxWidth: 190,
                                      ),
                                      child: Text(
                                        char.charDesc,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          height: 1,
                                          fontFamily: 'Dongle',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height : 18,
                                      width: 190,
                                      alignment: Alignment.centerRight,
                                      child : ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xFF8DBBFF),
                                            textStyle: const TextStyle(
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 8,
                                              color: Colors.white,
                                            )
                                        ),
                                        onPressed: () {
                                          // Aksi ketika button diklik
                                        },
                                        child: const Text("Go to detail..."),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                        )
                      ),
                      Image.asset(char.charImgPath,width: 125, height: 185,),
                    ],
                  )
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return const Divider();
        },
        ),
      )
    );
  }
}