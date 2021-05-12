import 'package:flutter/material.dart';

class LoginScrenn extends StatefulWidget {
  @override
  _LoginScrennState createState() => _LoginScrennState();
}

class _LoginScrennState extends State<LoginScrenn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          decoration:BoxDecoration(image: DecorationImage(
            image:AssetImage('images/background.jpg'),
            fit: BoxFit.cover
          ),
          )
        ),
        Center(
          child:Container(
            width: 300,
            height: 
            430,
            child: Card(
            elevation:4.4,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
         Container(
           child:Column(
             children:[
                Text('ຍີນດີຕ້ອນຮັບ',style: TextStyle(fontSize: 20),),
                SizedBox(height:20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'ບັນຊີຜູ້ໃຊ້',
                    border: OutlineInputBorder(

                    borderSide:BorderSide()
                  )),
                ),
                SizedBox(height:10),
                TextFormField(
                  obscureText: true,
                   decoration: InputDecoration(
                     hintText: 'ລະຫັດຜ່ານ',
                     border: OutlineInputBorder(
                    borderSide:BorderSide()
                  )),
                )
             ]
           )
         ),

         FlatButton(
           color: Colors.orange,
           onPressed: (){}, child: Text('ເຂົ້າສູ່ລະບົບ',style: TextStyle(color: Colors.white),)),

           OutlinedButton(
             style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
                ),
                onPressed: (){},
                                child: Row(
                mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              Image(
                image: AssetImage("images/facebook_logo.png"),
                height: 35.0,
              ),
               Padding(
                 padding: const EdgeInsets.only(left:10),
                 child: Text(
                    'ດຳເນີນຕໍ່ຜ່ານເຟດບຸກ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
               ),
          ]
             ),
           ),
          

           OutlinedButton(
             style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
                ),
                onPressed: (){},
                                child: Row(
                mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              Image(
                image: AssetImage("images/google_logo.png"),
                height: 35.0,
              ),
               Padding(
                 padding: const EdgeInsets.only(left:10),
                 child: Text(
                    'ດຳເນີນຕໍ່ຜ່ານຈີແມລ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
               ),
          ]
             ),
           ),
          FlatButton(
            
            onPressed: (){}, child: RichText(text: TextSpan(
            text:'',
            children:[
              TextSpan(text:'ຍັງບໍ່ມີບັນຊີ ?',style:TextStyle(color:Colors.black54)),
               TextSpan(text:'ລົງທະບຽນ',style:TextStyle(color:Colors.blue)),
            ]
          )))
          
        ],
                ),
              ),
            ),
          ),)
      )
      ]
    );
  }
}