import 'package:flutter/material.dart';



class ArticleOne extends StatefulWidget {
  const ArticleOne({Key? key}) : super(key: key);

  @override
  State<ArticleOne> createState() => _ArticleOneState();
}

class _ArticleOneState extends State<ArticleOne> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected=false;
    bool selected =false;
    int counter =0;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_back)),
                      SizedBox(width: MediaQuery.of(context).size.width/6,),
                      Text(
                        'Sheet pan sweet sour\nchicken',

                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat.ttf",
                            color: Color(0xFF2B2B2B)
                        ),
                      )
                    ],
                  ),
                ),
            SizedBox(
              width: 337,
              height: 76,
                 child: Stack(
                   children: [
                        Positioned(
                          top:6,
                          child: Container(
                           height: 70,
                           width: 337,
                           decoration: BoxDecoration(
                               border: Border.all(color: Color(0xFFFF6B00)),
                               borderRadius: BorderRadius.circular(20)
                           ),

                           child: Container(
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 16,bottom: 6),
                                   child: SizedBox(
                                       height: 47,
                                       width: 47,
                                       child: CircleAvatar()),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 12),
                                   child: Container(

                                     height: 36,
                                     width: 85,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           'Elsa jack',
                                           style: TextStyle(
                                               fontSize:13,
                                               fontWeight: FontWeight.w600,
                                               fontFamily: "Montserrat.ttf",
                                               color: Color(0xFF2D2D2D)
                                           ),
                                         ),
                                         SizedBox(height: 2,),
                                         Text(
                                           '8523 followers',
                                           style: TextStyle(
                                               fontSize:10,
                                               fontWeight: FontWeight.w600,
                                               fontFamily: "Montserrat.ttf",
                                               color: Color(0xFF8C8C8C)
                                           ),

                                         )
                                       ],
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 79,bottom: 5),
                                   child: Container(
                                       height: 30,
                                       width: 86,
                                       decoration: BoxDecoration(

                                       ),
                                       child: ElevatedButton(
                                           style: ButtonStyle(
                                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                   RoundedRectangleBorder(
                                                       borderRadius: BorderRadius.circular(18.0),
                                                       side: BorderSide(color: Colors.red)
                                                   )
                                               )
                                           ),
                                           onPressed: (){setState(() {
                                             setState(() {
                                               _isSelected= !_isSelected;
                                               print("hai");
                                             });
                                           });},
                                           child: Text(
                                             _isSelected==true
                                                 ? "Followed"
                                                 : "Follow",
                                             style: TextStyle(
                                                 fontSize:10,
                                                 fontWeight: FontWeight.w600,
                                                 fontFamily: "Montserrat-Light.ttf",
                                                 color: Color(0xFF000000)
                                             ),
                                           )
                                       )
                                   ),
                                 )
                               ],
                             ),
                           ),
                       ),
                        ),
                     Positioned(
                       left: 36,

                       child: Container(
                         width: 56,
                         height: 12,
                         color: Colors.white,
                         child: Center(
                           child:Text(
                             'Recipe From',
                             style: TextStyle(
                                 fontSize:9,
                                 fontWeight: FontWeight.w600,
                                 fontFamily: "Montserrat-Light.ttf",
                                 color: Color(0xFFF86804)
                             ),
                           )
                         ),
                       ),
                     ),

                   ],
                 ),
               ),
                Text(
                  'south indian item',
                  style: TextStyle(
                      fontSize:9,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat-Light.ttf",
                      color: Color(0xFF000000)
                  ),
                ),
                Container(
                  height: 237,
                  width: 327,
                  color: Colors.yellow,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
      'Sheet pan sweet  sour chicken\n dinner|breakfast |lunch',
                      style: TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat.ttf",
                          color: Color(0xFF2B2B2B)
                      ),
                    ),
                    Container(
                      height: 9,
                      width: 24,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xFFFF6B00),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(2))
                      ),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:  6,
                              width: 6,
                              child: Image.asset("assets/icons/vegandnonveg/star.png")),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 7,
                              fontFamily: 'Montserrat-Light.ttf',
                              color: Color(0xFF2D2D2D),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  '#southinianfood #inidanfood #sourchicken',
                  style: TextStyle(
                      fontSize:12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat-Light.ttf",
                      color: Color(0xFF025AAB),
                  ),
                ),
                Container(
                  height: 70,
                  width: 316,
                  color: Color(0xFFFFF7F2),
                  child: Row(
                    children: [
                      Container(
                        width: 63,
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    selected= !selected;
                                  });
                                }, icon: Icon(
                                selected==true
                                ? Icons.thumb_up
                                    :Icons.thumb_up_off_alt
                            )),
                            Text(
                              'Like',
                              style: TextStyle(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat-Light.ttf",
                                  color: Color(0xFF2B2B2B)
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 63,

                        child: Column(
                          children: [
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    selected= !selected;
                                  });
                                }, icon: Icon(
                                selected==true
                                    ? Icons.thumb_down_alt
                                    :Icons.thumb_down_off_alt
                            )),
                            Text(
                              'Dislike',
                              style: TextStyle(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat-Light.ttf",
                                  color: Color(0xFF2B2B2B)
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 63,

                        child: Column(
                          children: [
                            IconButton(
                                onPressed: (){}, icon: Icon(
                                Icons.reply

                            )),
                            Text(
                              'Share',
                              style: TextStyle(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat-Light.ttf",
                                  color: Color(0xFF2B2B2B)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 63,

                        child: Column(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(
                                 Icons.vertical_align_bottom

                            )),
                            Text(
                              'Download',
                              style: TextStyle(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat-Light.ttf",
                                  color: Color(0xFF2B2B2B)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 63,

                        child: Column(
                          children: [
                            IconButton(
                                onPressed: (){
                                  setState(() {
                                    selected= !selected;
                                  });
                                }, icon: Icon(
                                selected==true
                                    ? Icons.turned_in
                                    :Icons.turned_in_not
                            )),
                            Text(
                              'save',
                              style: TextStyle(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat-Regular.ttf",
                                  color: Color(0xFF2B2B2B)
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 1.5),
                    insets: EdgeInsets.symmetric(horizontal: 50)
                  ),
                    tabs: [
                      Text(
                        'ingredients',
                        style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat-Medium.ttf",
                            color: Color(0xFF1A1A1A)
                        ),
                      ),
                      Text(
                        'Directions',
                        style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat-Medium.ttf",
                            color: Color(0xFF1A1A1A)
                        ),
                      ),
                      Text(
                        'Directions',
                        style: TextStyle(
                            fontSize:14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat-Medium.ttf",
                            color: Color(0xFF1A1A1A)
                        ),
                      )
                    ]),
                TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                    children:[
                      Ingredientspage(),
                     Directionspage(),
                      Reviewpage()
                    ]
                //
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Ingredientspage extends StatefulWidget {
  const Ingredientspage({Key? key}) : super(key: key);

  @override
  State<Ingredientspage> createState() => _IngredientspageState();
}

class _IngredientspageState extends State<Ingredientspage> {
  @override
  Widget build(BuildContext context) {
    int _counter =0;
    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }
    void _decrementCounter() {
      setState(() {
        _counter--;
      });
    }
    return
     Column(
      children: [
        Container(
          height: 40,
          width: 200,
          color:  Colors.grey,
          child: Row(
            children: [
              Text(
                'Servig Adjust',
                style: TextStyle(
                    fontSize:12,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat.ttf",
                    color: Color(0xFF494949)
                ),
              ),
              IconButton(
                  onPressed: (){
                    _decrementCounter();
                  },
                  icon: Icon(Icons.remove)),

              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFFFF6B00)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    '$_counter',
                    style: TextStyle(
                        fontSize:12,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat.ttf",
                        color: Color(0xFF6A6767)
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: (){
                    _incrementCounter();

                  },
                  icon: Icon(Icons.add)),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: contents.length,
              itemBuilder: ( context , i ) {
              return ListTile(
                  leading: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xFFFF6B00),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(2))
                  ),
                  child: Center(
                    child: Text(
                      contents[i].index.toString(),
                      style: TextStyle(
                          fontSize:8,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat.ttf",
                          color: Color(0xFF6A6767)
                      ),
                    )),

                ),
                title: Text(
                  contents[i].details,
                  style: TextStyle(
                      fontSize:11,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat-SemiBold.ttf",
                      color: Color(0xFF2B2B2B)
                  ),
                )
              );
              }
          ),
        )
    
      ],
    );
  }
}


class Ingredientsdetails{
  late int index;
  late String details;
  Ingredientsdetails({required this.index, required this.details});


}
List<Ingredientsdetails> contents=[
  Ingredientsdetails(
      index: 1,
      details: "4 breast half, bone and skin removed (blank)s skinless, boneless chicken breast halves"),
  Ingredientsdetails(
      index: 2,
      details: "1 teaspoon all-purpose flour"),
  Ingredientsdetails(
      index: 3,
      details: "2 cups chicken stock"),
  Ingredientsdetails(
      index: 4, details: "2 tablespoons paprika"),
  Ingredientsdetails(
      index: 5,
      details: "1½ tablespoons vegetable oil"),
  Ingredientsdetails(
      index: 6,
      details: "1 cup chopped onion"),
  Ingredientsdetails(
      index: 7,
      details: "1½ tablespoons butter"),
  Ingredientsdetails(
      index: 8, details: "container sour cream"),
  Ingredientsdetails(
      index: 9,
      details: "½ teaspoon salt 1 (8 ounce) ")
];


class Reviewpage extends StatelessWidget {
  const Reviewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [

        Expanded(
        child: ListView.builder(
        itemCount: contents.length,
        itemBuilder: ( context , i ) {
      return ListTile(
          leading: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFFF6B00),
                ),
                borderRadius: BorderRadius.all(Radius.circular(2))
            ),
            child: Center(
                child: Text(
                  contents[i].index.toString(),
                  style: TextStyle(
                      fontSize:8,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat.ttf",
                      color: Color(0xFF6A6767)
                  ),
                )),

          ),
          title: Text(
            contents[i].details,
            style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.w400,
                fontFamily: "Montserrat-SemiBold.ttf",
                color: Color(0xFF2B2B2B)
            ),
          )
      );
    }
    ),
    )

    ],
    );
  }
}


class Directionspage extends StatelessWidget {
  const Directionspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [

        Expanded(
        child: ListView.builder(
        itemCount: contents.length,
        itemBuilder: ( context , i ) {
      return ListTile(
          leading: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFFF6B00),
                ),
                borderRadius: BorderRadius.all(Radius.circular(2))
            ),
            child: Center(
                child: Text(
                  contents[i].index.toString(),
                  style: TextStyle(
                      fontSize:8,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat.ttf",
                      color: Color(0xFF6A6767)
                  ),
                )),

          ),
          title: Text(
            contents[i].details,
            style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.w400,
                fontFamily: "Montserrat-SemiBold.ttf",
                color: Color(0xFF2B2B2B)
            ),
          )
      );
    }
    ),
    )

    ],
    );
  }
}
