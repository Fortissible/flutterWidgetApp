import 'package:flutter/material.dart';
import 'package:flutter_widget_app/char_model.dart';
import 'package:flutter_widget_app/get_recommendation.dart';

class DetailScreen extends StatelessWidget{
  final CharModel charDetail;
  const DetailScreen( this.charDetail, {Key? key,}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              'Back',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontSize: 20,
                  fontWeight: FontWeight.normal
              )
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${charDetail.charName} Build",
                  style: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
                IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 165,
                            height: 350,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(charDetail.charImgPath)
                              ],
                            )
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 185,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(2, 2), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(charDetail.artefIcon[0],height: 40, width: 40),
                                  const SizedBox(
                                      width:10
                                  ),
                                  Text(
                                    charDetail.charArtefStat[0],
                                    style: const TextStyle(
                                      height: 1,
                                      fontFamily: 'Dongle',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(2, 2), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(charDetail.artefIcon[1], height: 40, width: 40),
                                  const SizedBox(
                                      width:10
                                  ),
                                  Text(
                                    charDetail.charArtefStat[1],
                                    style: const TextStyle(
                                      height: 1,
                                      fontFamily: 'Dongle',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(2, 2), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(charDetail.artefIcon[2], height: 40, width: 40),
                                  const SizedBox(
                                      width:10
                                  ),
                                  Text(
                                    charDetail.charArtefStat[2],
                                    style: const TextStyle(
                                      height: 1,
                                      fontFamily: 'Dongle',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(2, 2), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(charDetail.artefIcon[3], height: 40, width: 40),
                                  const SizedBox(
                                      width:10
                                  ),
                                  Text(
                                    charDetail.charArtefStat[3],
                                    style: const TextStyle(
                                      height: 1,
                                      fontFamily: 'Dongle',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 185,
                              height: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: const Offset(2, 2), // changes position of shadow
                                    ),
                                  ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(charDetail.artefIcon[4], height: 40, width: 40),
                                  const SizedBox(
                                      width:10
                                  ),
                                  Text(
                                    charDetail.charArtefStat[4],
                                    style: const TextStyle(
                                      height: 1,
                                      fontFamily: 'Dongle',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
                Container(
                  width: 375,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: const Offset(2, 2), // changes position of shadow
                        ),
                      ]
                  ),
                  child: getRecommendation("Skill priority", charDetail.charSkills),
                ),
                Container(
                  width: 375,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: const Offset(2, 2), // changes position of shadow
                        ),
                      ]
                  ),
                  child: getRecommendation(charDetail.charArtefSets, charDetail.charBestArtef),
                ),
                const SizedBox(
                  width: 375,
                  height: 55,
                ),
                const SizedBox(
                  width: 375,
                  height: 55,
                )
              ],
            ),
          )
        )
        ),
    );
  }
}