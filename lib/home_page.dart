import 'package:crsl_img/orderInfo.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);
  final String photo='';
  final String name='';
  final int price= 0;
  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.notifications_outlined,color: Colors.black,size: 35,),
        title: Row(
          children: [
            SizedBox(width: 40,),
            Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black,size: 35,),
            Text('Hay Al Alam Baghdad',style: TextStyle(color: Colors.black,fontSize: 15),),
          ],
        ),
        actions: [
        Icon(Icons.search_rounded,color: Colors.black,size: 35,),

        ],
        elevation: 0,
      ),
      body: Center(
        child:
       ListView(
         scrollDirection: Axis.vertical,
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               Container(
                 margin: EdgeInsets.only(bottom: 15),
                 width: MediaQuery.of(context).size.width,
                 height: 112,
                 child: ListView(
                   scrollDirection: Axis.horizontal,

                   children: [
                     FoodTypes('images/Seafood-platter.jpg','Sea Food'),
                     FoodTypes('images/dessert.jpg','dessert'),
                     FoodTypes('images/vegetables_detailfeature.jpg','Vegetabls'),
                     FoodTypes('images/paleo-meat-array.png','Meat'),
                   ],
                 ),
               ),
               Row(
                 children: [
                   SizedBox(width: 15,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Nearest restrusnts',style: TextStyle(color: Colors.red),),
                     ],
                   ),
                 ],
               ),
               Container(
                 width: 144,
                 height: 2,
                 color: Colors.red,
                 margin: EdgeInsets.only(top: 3,bottom: 5),
               ),
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 149,
                 child: ListView(
                   scrollDirection: Axis.horizontal,

                   children: [
                     restrunt('images/meat.jpg','Meat with mousli dough'),
                     restrunt('images/kabab.jpg','Baghdad Juili Grill'),
                     restrunt('images/meat.jpg','Meat with mousli dough'),
                   ],
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(top: 15),
                 width: MediaQuery.of(context).size.width,
                 height: 45,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     Container(
                       width: 78,
                       height: 40,
                       margin: EdgeInsets.only(left: 10,top: 10,right: 0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.red,
                       ),
                       child: Center(
                         child: Row(
                           children: [
                             SizedBox(width: 8,),
                             Icon(Icons.home_outlined,color: Colors.white,size: 20,),
                             SizedBox(width: 3,),
                             Text('Home',style: TextStyle(color: Colors.white,fontSize: 13),),
                           ],
                         ),
                       ),


                     ),
                     Container(
                       width: 136,
                       height: 40,
                       margin: EdgeInsets.only(left: 10,top: 10,right: 0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.grey.withOpacity(0.2),
                       ),
                       child: Center(
                         child: Row(
                           children: [
                             SizedBox(width: 8,),
                             Icon(Icons.wallet,color: Colors.grey,size: 20,),
                             SizedBox(width: 3,),
                             Text('Supports wallet',style: TextStyle(color: Colors.grey,fontSize: 13),),
                           ],
                         ),
                       ),


                     ),
                     Container(
                       width: 116,
                       height: 40,
                       margin: EdgeInsets.only(left: 10,top: 10,right: 0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.grey.withOpacity(0.2),
                       ),
                       child: Center(
                         child: Row(
                           children: [
                             SizedBox(width: 8,),
                             Icon(Icons.card_giftcard,color: Colors.grey,size: 20,),
                             SizedBox(width: 3,),
                             Text('Free delevary',style: TextStyle(color: Colors.grey,fontSize: 13),),
                           ],
                         ),
                       ),


                     ),
                     Container(
                       width: 96,
                       height: 40,
                       margin: EdgeInsets.only(left: 10,top: 10,right: 0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.grey.withOpacity(0.2),
                       ),
                       child: Center(
                         child: Row(
                           children: [
                             SizedBox(width: 8,),
                             Icon(Icons.star_border_rounded,color: Colors.grey,size: 20,),
                             SizedBox(width: 3,),
                             Text('Exclusive',style: TextStyle(color: Colors.grey,fontSize: 13),),
                           ],
                         ),
                       ),


                     ),
                     Container(
                       width: 70,
                       height: 40,
                       margin: EdgeInsets.only(left: 10,top: 10,right: 0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.grey.withOpacity(0.2),
                       ),
                       child: Center(
                         child: Row(
                           children: [
                             SizedBox(width: 8,),
                             Icon(Icons.home_work_outlined,color: Colors.grey,size: 20,),
                             SizedBox(width: 3,),
                             Text('New',style: TextStyle(color: Colors.grey,fontSize: 13),),
                           ],
                         ),
                       ),


                     ),
                   ],
                 ),
               ),
               meal('images/burger.jpg','Fire Fire',4000),
               meal('images/shawarma.jpg','Al_kass ',5000),
             ],
           ),
         ],
       ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home,color: Colors.red,size: 30,),
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.wallet),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(Icons.receipt_long),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon:Icon(Icons.account_circle_outlined),
            ),
          ]),
    );
  }
  Container FoodTypes(String img,String title){
    return Container(
      margin: EdgeInsets.only(left: 7,right: 4,top: 7),
      padding: EdgeInsets.all(5),
      width: 100,height: 100,

        child:  Column(
          children: [
            Container(
              width: 80,height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  )
              ),

            ),
             Text(title,style:TextStyle(fontSize: 14) ,),

          ],
        ),
    );
  }
  Container restrunt(String photo,String name){
    return Container(
      margin: EdgeInsets.only(left: 7,right: 4,top: 7),
      padding: EdgeInsets.only(left: 15,top: 7),
      width: 300,height: 130,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 270,height: 100,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(photo),
                  fit: BoxFit.fill,
                )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,left: 10),
                  width: 30,height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.9),
                  ),
                  child: Icon(Icons.bike_scooter_outlined,color: Colors.red,size: 20,),
                )
              ],
            ),
          ),
          Text(name,style:TextStyle(fontSize: 16,color: Colors.red) ,),
        ],
      ),
    );
  }
  Container meal(String photo,String name,int price){
    return Container(
      margin: EdgeInsets.only(left: 5,right: 4,top: 7),
      padding: EdgeInsets.only(left: 15,top: 7),
      width: 400,height: 244,

      child:  Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 400,height: 160,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(photo),
                  fit: BoxFit.fill,
                )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,left: 10),
                  width: 30,height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.9),
                  ),
                  child: Icon(Icons.bike_scooter_outlined,color: Colors.red,size: 20,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,left: 5),
                  width: 90,height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white.withOpacity(0.9),
                  ),
                  child:  Center(child: Text('Promo code',style: TextStyle(color: Colors.red,fontSize: 14),),),
                )
              ],
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context)=>burgers(photo: photo, price: price,name: name,)));
                        },
                          child: Text(name,
                            style:TextStyle(fontSize: 18,color: Colors.red) ,)),
                      SizedBox(width: 205,),
                      Text('Minimum Price:''$price',style:TextStyle(fontSize: 10,color: Colors.black) ,),
                    ],
                  ),
                  SizedBox(height:5,),
                  Row(
                    children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.black,size: 20,),
                        SizedBox(width: 3,),
                        Text('Sadiya',style: TextStyle(color: Colors.black,fontSize: 12),),
                      ],
                    ),
                      SizedBox(width: 45,),
                    Row(
                      children: [
                        Icon(Icons.face_unlock_sharp,color: Colors.black,size: 20,),
                        SizedBox(width: 3,),
                        Text('Very Good',style: TextStyle(color: Colors.black,fontSize: 12),),
                      ],
                    ),
                      SizedBox(width: 45,),
                    Row(
                      children: [
                        Icon(Icons.bike_scooter_outlined,color: Colors.black,size: 20,),
                        SizedBox(width: 3,),
                        Text('Delevry Price: 4000IQD',style: TextStyle(color: Colors.black,fontSize: 12),),
                        SizedBox(width: 7,),
                      ],
                    ),
                  ],),
                ],
              ),


            ],
          ),
        ],
      ),
    );
  }
}
