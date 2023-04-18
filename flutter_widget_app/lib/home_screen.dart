import 'package:flutter/material.dart';
import 'package:flutter_widget_app/char_model.dart';
import 'package:flutter_widget_app/detail_screen.dart';

class HomeScreen extends StatefulWidget{
  // const HomeScreen({Key? key, required this.query}) : super(key:key);
  const HomeScreen({Key? key}) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  double _charNameFontSizeState = 24;
  double _charDescFontSizeState = 14;
  final List<CharModel> charList = charModelList;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0,
        title: Row(
          children: [
            Expanded(
              flex: 4,
                child: Container(
                  // Add padding around the search bar
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(2, 3), // changes position of shadow
                      ),
                    ]
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  // Use a Material design search bar
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontFamily: 'Dongle',
                        fontWeight: FontWeight.normal,
                        height: 1,
                        fontSize: 24,
                      ),
                      hintText: 'Search character...',
                      // Add a clear button to the search bar
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear, color: Colors.black,),
                        onPressed: () => _searchController.clear(),
                      ),
                      // Add a search icon or button to the search bar
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.search, color: Colors.black,),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('You searched for ${_searchController.text}'),
                                );
                              });
                        },
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(20.0),
                      // ),
                    ),
                  ),
                )
            ),
            Container(
              width: 16,
              height: 30,
              color: Colors.transparent,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(2, 3), // changes position of shadow
                  ),
                ]
              ),
              width: 50,
              height: 50,
              child : ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('images/GenshinProfile.png'),
              )
            )
          ],
        )
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: charList.length,
          itemBuilder: (BuildContext context, int idx){
            final CharModel char = charList[idx];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Align(
                alignment: FractionalOffset.center,
                child: Container(  height: 185,   width: 375,   decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),   child: Stack(
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
                                SingleChildScrollView(
                                  child: Column(
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
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            fontSize: _charNameFontSizeState,
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
                                          style: TextStyle(
                                            height: 1,
                                            fontFamily: 'Dongle',
                                            fontWeight: FontWeight.normal,
                                            fontSize: _charDescFontSizeState,
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(charList[idx])));
                                          },
                                          child: const Text("Go to detail..."),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                    ),
                    Image.asset(char.charImgPath,width: 125, height: 185,),
                  ],
                )
                ),
              )
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.zoom_in),
            onPressed: () {
              setState(() {
                _charNameFontSizeState += 2;
                _charDescFontSizeState += 2;
              });
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.zoom_out),
            onPressed: () {
              setState(() {
                _charNameFontSizeState -= 2;
                _charDescFontSizeState -= 2;
              });
            },
          )
        ],
      )
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}