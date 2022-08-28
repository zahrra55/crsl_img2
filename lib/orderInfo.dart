import 'package:flutter/material.dart';
class burgers extends StatefulWidget {

  final String photo;
  final String name;
  int price;
  burgers({
    required this.photo,
    required this.name,
    required this.price,
});
  @override
  State<burgers> createState() => _burgersState();
}
int n=1;

class _burgersState extends State<burgers> {
  @override
  Widget build(BuildContext context) {

    int i=0;
    List<int> numbers = [2];
    int price=4000;
    numbers[i]=price;
    i++;
    int p=numbers[0];


    return Scaffold(
      body:
      Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20,top: 30,bottom: 30),
              margin: EdgeInsets.only(top: 160),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Burgers',style: TextStyle(color: Colors.red,fontSize: 20),),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.bike_scooter_outlined,color: Colors.black,size: 18,),
                              Text(' Delivery Price: 3.000 IQD',style: TextStyle(fontSize: 13),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,color: Colors.black,size: 18,),
                              Text(' Andalus Square',style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.tag_faces,color: Colors.black,size: 17,),
                              Text(' Excellent',style: TextStyle(fontSize: 13),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.home_mini_rounded,color: Colors.black,size: 18,),
                              Text(' Minimum Order:5000 IQD',style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.access_time,color: Colors.black,size: 17,),
                      Text(' Expected delivery time 15 minutes to an hour',style: TextStyle(fontSize: 13),),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text(widget.name,style: TextStyle(color: Colors.red,fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(top: 12,bottom: 5,left: 12,right: 12),
                    height: 70,
                    margin: EdgeInsets.only(right: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Additions',style: TextStyle(color: Colors.red,fontSize: 16),),
                              SizedBox(height: 10,),
                              Text('optinal',style: TextStyle(color: Colors.grey,fontSize: 14),)
                            ],
                          ),
                        Image.asset('images/arrowUp.png',width: 28,height: 28,)
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Special nstructions',style: TextStyle(color: Colors.black,fontSize: 15),),
                  SizedBox(height: 25,),
                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 12,right: 12),
                    height: 50,
                    margin: EdgeInsets.only(right: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:Center(
                      child: TextField (
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
                            hintText: 'Any spcial notes for this dish...'
                        ),
                      ),
                    )
                  ),
                  SizedBox(height: 25,),

                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          GestureDetector(
                            onTap:    (){
                              setState(() {
                                n++;
                                  widget.price=widget.price+p;
                              });
                            },
                            child: Container(width: 40,height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Icon(Icons.add),
                            ),
                          ),
                          GestureDetector(
                            child: Container(width: 80,height: 40,
                              margin: EdgeInsets.only(left: 30,right: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text('$n',
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap:    (){
                              setState(() {
                                if(n!=0){
                                  n--;
                                  widget.price=widget.price-p;}
                              });
                            },
                            child: Container(width: 40,height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Center(child: Icon(Icons.minimize)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Center(
                    child: Text('${widget.price} IQD',style: TextStyle(
                      color: Colors.red,

                    ),
                    ),
                  ),
                  SizedBox(height: 65,),
                  Center(
                    child: GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red.withOpacity(0.9),
                        ),
                        child: Center(child: Text('Add to cart',style: TextStyle(
                          color: Colors.white,

                        ),)),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              width: 40,height: 40,
              margin: EdgeInsets.only(top: 45,right:MediaQuery.of(context).size.width-70,left: 16 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Icon(Icons.arrow_back_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
