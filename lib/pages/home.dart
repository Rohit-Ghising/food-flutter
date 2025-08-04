import 'package:flutter/material.dart';
import 'package:food_delivery/widget/widget_support.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pizza=false,salad=false,burger=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         margin: EdgeInsets.only(top: 50.0,left:20.0,),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [


         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("Hello Motoo",style:AppWidget.boldTextFeildStyle()
             ),
             Container( margin: EdgeInsets.only(right: 20),
               decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
               padding: EdgeInsets.all(3),
               child: Icon(Icons.shopping_cart, color: Colors.white,),)
           ],
         ),
           SizedBox(height: 20.0,),
           Text("Delicious Food",style:AppWidget.HeadlineTextFeildStyle()
           ),
             Text("Discover and Get Great Food",style:AppWidget.LightTextFeildStyle()

             ),
             SizedBox(height: 20.0,),
             showItem(),
             SizedBox(height: 20.0,),

             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(children: [
                 Container(
                   margin: EdgeInsets.all(4),
                   child: Material(

                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(20),
                     child: Container(
                       padding: EdgeInsets.all(14),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start ,

                       children: [
                         Image.asset("images/salad.png",height: 150, width: 150, fit: BoxFit.cover,),
                         Text("Veggie Taco Hash", style: AppWidget.semiBoldTextFeildStyle(),
                         ),
                         SizedBox(height: 5.0),
                         Text("Fresh and Healthy", style: AppWidget.LightTextFeildStyle(),
                         ),
                         SizedBox(height: 5.0),
                         Text("\$25",style: AppWidget.semiBoldTextFeildStyle(),)
                       ],
                     ),
                                  ),
                   ),
                 ),
                 SizedBox(width: 15.0,),
                 Material(

                   elevation: 5.0,
                   borderRadius: BorderRadius.circular(20),
                   child: Container(
                     padding: EdgeInsets.all(14),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start ,

                       children: [
                         Image.asset("images/salad.png",height: 150, width: 150, fit: BoxFit.cover,),
                         Text("Veggie Taco Hash", style: AppWidget.semiBoldTextFeildStyle(),
                         ),
                         SizedBox(height: 5.0),
                         Text("Fresh and Healthy", style: AppWidget.LightTextFeildStyle(),
                         ),
                         SizedBox(height: 5.0),
                         Text("\$25",style: AppWidget.semiBoldTextFeildStyle(),)
                       ],
                     ),
                   ),
                 ),
                 SizedBox(width: 15.0,),
                 Material(

                   elevation: 5.0,
                   borderRadius: BorderRadius.circular(20),
                   child: Container(
                     padding: EdgeInsets.all(14),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start ,

                       children: [
                         Image.asset("images/salad.png",height: 150, width: 150, fit: BoxFit.cover,),
                         Text("Veggie Taco Hash", style: AppWidget.semiBoldTextFeildStyle(),
                         ),
                         SizedBox(height: 5.0),
                         Text("Fresh and Healthy", style: AppWidget.LightTextFeildStyle(),
                         ),
                         SizedBox(height: 5.0),
                         Text("\$25",style: AppWidget.semiBoldTextFeildStyle(),)
                       ],
                     ),
                   ),
                 )
               ],
               ),
             ),
             SizedBox(height: 30.0,),
             Container(
               margin: EdgeInsets.only(right: 20.0),
               child: Material(
                 elevation: 5.0,
                 borderRadius: BorderRadius.circular(20),
                 child: Container( padding: EdgeInsets.all(5),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/burger.png",height: 150,width: 150, fit: BoxFit.cover,),
                      SizedBox(width: 20.0,),
                      Column(
                        children: [
                          Container(
                            width:MediaQuery.of(context).size.width/2.2 ,
                              child: Text("Mediterreian Chick Pea Salad",style: AppWidget.semiBoldTextFeildStyle(),)),
                          SizedBox(height: 5.0,),
                          Container(
                              width:MediaQuery.of(context).size.width/2.2,
                              child: Text("Honey goot cheese",style: AppWidget.LightTextFeildStyle(),)),
                          SizedBox(height: 5.0,),
                          Container(
                              width:MediaQuery.of(context).size.width/2.2,
                              child: Text("\$30",style: AppWidget.semiBoldTextFeildStyle(),))
                        ],
                      )
                    ]
                   ),
                 ),
               ),
             ),


             






       ],
         ),
       ),
    );
  }
  Widget showItem(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            salad=true;
            pizza=false;
            burger=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color:salad?Colors.black :Colors.white,borderRadius: BorderRadius.circular(10), ),
              padding:EdgeInsets.all(8),

              child: Image.asset("images/salad.png",height: 50, width: 50, fit:BoxFit.cover ,color: salad?Colors.white:Colors.black,),
            ),
          ),
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding:EdgeInsets.all(8),

            child: Image.asset("images/salad.png",height: 50, width: 50, fit:BoxFit.cover ),
          ),
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding:EdgeInsets.all(8),

            child: Image.asset("images/burger.png",height: 50, width: 50, fit:BoxFit.cover ),
          ),
        ),
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding:EdgeInsets.all(8),

            child: Image.asset("images/pizza.webp",height: 50, width: 50, fit:BoxFit.cover ),
          ),
        ),
      ],
    );
  }
}
