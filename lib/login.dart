
import 'package:crsl_img/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController PhoneNumber=TextEditingController();
  TextEditingController UserName=TextEditingController();
  TextEditingController Code=TextEditingController();
  bool isShow =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Center(
                  child: Container(
                width: 210,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Talabatey.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              )),

              SizedBox(height: 80,),
              TextField(
                controller: UserName,
                maxLength: 15,
                maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 0, color: Colors.grey.withOpacity(0.1)),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.8), fontSize: 12),
                    border: InputBorder.none,
                    hintText: 'Name'),
                style: TextStyle(color: Colors.black54),
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: PhoneNumber,
                maxLength: 11,
                maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,

                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 0, color: Colors.grey.withOpacity(0.1)),
                    ),

                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.8), fontSize: 12),
                    border: InputBorder.none,
                    hintText: 'Phone Number'),
                style: TextStyle(color: Colors.black54),
                keyboardType: TextInputType.number,
              ),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text('If you have a referral code ,',style: TextStyle(color: Colors.red),),
                  GestureDetector(
                    onTap: (){
                      isShow=true;
                    },
                    child:
                        Text('click here ',style: TextStyle(color: Colors.red),),
                     ),
                  Icon(Icons.arrow_drop_down,color: Colors.red,size: 18,),


                  //Icon(Icons.arrow_right,color: Colors.red,size: 18,))
                ],
              ),
              SizedBox(
                height: 20,
              ),
             if(isShow==true)
               ...[
                 TextField(
                   controller: Code,
                   decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(
                             width: 0, color: Colors.grey.withOpacity(0.1)),
                       ),

                       filled: true,
                       fillColor: Colors.grey.withOpacity(0.2),
                       hintStyle: TextStyle(
                           color: Colors.grey.withOpacity(0.8), fontSize: 12),
                       border: InputBorder.none,
                       hintText: 'Referral Code'),
                   style: TextStyle(color: Colors.black54),
                   keyboardType: TextInputType.number,
                 ),
               ],
              SizedBox(height: 60,),
              GestureDetector(
                onTap: (){
                  print('clicked');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 9,
                        spreadRadius: 0.2,
                        color: Colors.grey.withOpacity(0.9),
                      )
                    ],
                    color: Colors.red.shade600,
                  ),
                  child: Center(
                    child: Text('Next',style: TextStyle(color: Colors.white),),
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
