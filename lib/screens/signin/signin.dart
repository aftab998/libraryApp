import 'package:flutter/material.dart';
import 'package:libraryapp/screens/addBook/addbook.dart';
import 'package:libraryapp/screens/signup/signup.dart';

import '../components/textfied.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {

  final namecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("LOGIN", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold, color: Colors.purple),),
            const SizedBox(height: 20,),
            InputTextField(myController: namecontroller, onValidator: (value){}, keyBoardType: TextInputType.text, obsureText: false, hint:"Name"),
            InputTextField(myController: passwordcontroller, onValidator: (value){}, keyBoardType: TextInputType.text, obsureText: true, hint:"Password"),
            const SizedBox(height: 20,),

            Container(
                height:50,
                width:double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.purple
                ),

                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> addbook()));

                    },
                    child: const Center(child: Text("LOGIN",style:TextStyle(color:Colors.white),),))
            ),
            const SizedBox(height: 4,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create new account?",style: TextStyle(fontSize: 12),),
                const SizedBox(width: 2,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> signup()));

                    },
                    child: Text("Sign up.",style: TextStyle(color: Colors.purple,fontSize: 12),)),
              ],
            )


          ],
        ),
      ),
    );
  }
}
