import 'package:flutter/material.dart';
import 'package:libraryapp/screens/addBook/addbook.dart';
import 'package:libraryapp/screens/components/textfied.dart';
import 'package:libraryapp/screens/signin/signin.dart';



class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(child: Text("SIGN UP", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold, color: Colors.purple),)),
              const SizedBox(height: 20,),
              InputTextField(myController: namecontroller, onValidator: (value){}, keyBoardType: TextInputType.text, obsureText: false, hint:"Name"),
              InputTextField(myController: emailcontroller, onValidator: (value){}, keyBoardType: TextInputType.emailAddress, obsureText: false, hint:"Email"),
              InputTextField(myController: mobilecontroller, onValidator: (value){}, keyBoardType: TextInputType.number, obsureText: false, hint:"Mobile"),
              InputTextField(myController: passwordcontroller, onValidator: (value){}, keyBoardType: TextInputType.text, obsureText: false, hint:"Password"),
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
                      child: const Center(child: Text("SIGN UP",style:TextStyle(color:Colors.white),),))
              ),
              const SizedBox(height: 4,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(fontSize: 12),),
                  const SizedBox(width: 2,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> signin()));

                    },
                      child: Text("Sign in.",style: TextStyle(color: Colors.purple,fontSize: 12),)),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
