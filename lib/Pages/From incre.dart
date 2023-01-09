import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';


class FromIncre extends StatefulWidget {
  const FromIncre({Key? key}) : super(key: key);

  @override
  State<FromIncre> createState() => _FromIncreState();
}

class _FromIncreState extends State<FromIncre> {

List<String> images=[
  "assets/images/food1.jpg",
  "assets/images/food2.jpg",
  "assets/images/food3.jpg",
  "assets/images/food4.jpg",
  "assets/images/food5.jpeg",
  "assets/images/food6.jpg",
  "assets/images/food7.jpg",
  "assets/images/food8.jpg",
  "assets/images/food9.jpg",
  "assets/images/food10.jpg"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              children: [
                Container(

                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_back)),
                      SizedBox(width: MediaQuery.of(context).size.width/15,),
                      Text(
                        'From your ingredients ',
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
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // color: Colors.red,
                        border: Border.all(color: Color(0xFFFF6B00)),

                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: TextFormField(

                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),

                              prefixIcon: Icon(Icons.search),
                              labelText: "Serach Recipes, Cuisines, Diets,"
                              ,labelStyle: TextStyle(
                              fontFamily: "Montserrat.ttf",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9F9F9F)
                          )
                          ),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28,
                  top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Yours delish',
                        style: TextStyle(

                          fontSize:15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13,left: 18),
                  child: SizedBox(
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 18,
                          mainAxisSpacing: 21,

                        childAspectRatio: MediaQuery.of(context).size.width/3/
                            (MediaQuery.of(context).size.width/3 ),

                      ),
                      itemBuilder: (BuildContext context, int index){
                        return SizedBox(

                            child: Container(


                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25,top: 3),
                                    child: Text(
                                      'North indian ',
                                      style: TextStyle(
                                          fontSize:10,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Montserrat-Light.ttf",
                                          color: Color(0xFF2B2B2B)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25,top: 3),
                                    child: Stack(
                                      children:[
                                        Container(
                                        height: 100,
                                        width: 124,
                                          child: Image.asset(images[index],
                                            fit: BoxFit.cover,),
                                      ),
                                        Positioned(
                                          right: 5,
                                          bottom: 5,
                                          child: FavoriteButton(
                                            iconSize: 30,

                                            valueChanged: (_isFavorite) {
                                            print('Is Favorite $_isFavorite)');
                                          },
                            ),
                                        )


                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25,),
                                    child: SizedBox(
                                      width: 124,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 7,
                                            width: 7,
                                            child: Image.asset(
                                              index%3==0
                                              ? "assets/icons/vegandnonveg/veg.png"
                                              : "assets/icons/vegandnonveg/nonveg.png"
                                            ,fit: BoxFit.fill,
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
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25,top: 3),
                                    child: SizedBox(
                                      width: 125,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          width: 77,
                                          child:   Text(
                                            "Pinto posole\nwith out ginger",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11,
                                              fontFamily: 'Montserrat-Bold.ttf',
                                              color: Color(0xFF2D2D2D),

                                            ),
                                          ),

                                          ),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}

