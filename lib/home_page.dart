import 'package:crsl_img/login.dart';
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
  final List types = [
    {
      'photo':'images/Seafood-platter.jpg',
      'name':'Sea food',
    },
    {
      'photo':'images/dessert.jpg',
      'name':'Dessert',
    },
    {
      'photo':'images/vegetables_detailfeature.jpg',
      'name':'Vegetables',
    },
    {
      'photo':'images/paleo-meat-array.png',
      'name':'Meat',
    },
  ];
  final List restrunts = [
    {
      'photo':'images/meat.jpg',
      'name':'Meat with mousil dough',
    },
    {
      'photo':'images/kabab.jpg',
      'name':'Baghdad Juuili Grill',
    },
    {
      'photo':'images/meat.jpg',
      'name':'Meat with mousil dough',
    },
  ];
  final List typeLine = [
    {
      'icon':Icon(Icons.home_outlined,color: Colors.grey,size: 20,),
      'name':'Home',
    },
    {
      'icon':Icon(Icons.wallet,color: Colors.grey,size: 20,),
      'name':'Wallet',
    },
    {
      'icon':Icon(Icons.card_giftcard,color: Colors.grey,size: 20,),
      'name':'delivery',
    },
    {
      'icon':Icon(Icons.star_border_rounded,color: Colors.grey,size: 20,),
      'name':'Exclusive',
    },
    {
      'icon':Icon(Icons.maps_home_work_outlined,color: Colors.grey,size: 20,),
      'name':'New',
    },
  ];
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
            ListView.builder(itemCount: 1, itemBuilder: (BuildContext context,index){
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 112,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:types.length,
                      itemBuilder: (BuildContext context,index){
                        return
                          Container(
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
                                        image: AssetImage(types[index]['photo']),
                                        fit: BoxFit.cover,
                                      )
                                  ),

                                ),
                                Text(types[index]['name'],style:TextStyle(fontSize: 14) ,),
                              ],
                            ),
                          );
                      },
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
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:restrunts.length,
                      itemBuilder: (BuildContext context,index){
                        return
                          Container(
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
                                        image: AssetImage(restrunts[index]['photo']),
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
                                Text(restrunts[index]['name'],style:TextStyle(fontSize: 16,color: Colors.red) ,),
                              ],
                            ),
                          );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:typeLine.length,
                      itemBuilder: (BuildContext context,index){
                        return
                          Container(
                            width: 88,
                            height: 45,
                            margin: EdgeInsets.only(left: 7,top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  typeLine[index]['icon'],
                                  SizedBox(width: 3,),
                                  Text(typeLine[index]['name'],style: TextStyle(color: Colors.grey,fontSize: 13),),
                                ],
                              ),
                            ),


                          );

                      },
                    ),
                  ),
                  meal('images/burger.jpg','Fire Fire',4000),
                  meal('images/shawarma.jpg','Al_kass ',5000),
                ],
              );
            }),

      ),
      bottomNavigationBar: BottomNavigationBar(
          //fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
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
              icon:GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => loginpage()));
                },
                child: Icon(Icons.account_circle_outlined),
              )
            ),
          ]),
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
