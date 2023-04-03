import 'package:flutter/material.dart';
import 'package:libraryapp/screens/components/textfied.dart';
import 'package:libraryapp/screens/searchScreen/searchscreen.dart';
import 'package:libraryapp/screens/signin/signin.dart';



class addbook extends StatefulWidget {
  const addbook({Key? key}) : super(key: key);

  @override
  State<addbook> createState() => _addbookState();
}

class _addbookState extends State<addbook> {

  final bookcontroller = TextEditingController();
  final authorcontroller = TextEditingController();
  final yearcontroller = TextEditingController();


  static const menuitems = <String>[
    'Computer science',
    'Physcis',
    'Maths',
    'English'
  ];

  String? selectedval;







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(child: Text("ADD BOOK", style: TextStyle(fontSize:18,fontWeight: FontWeight.bold, color: Colors.purple),)),
              const SizedBox(height: 20,),
              InputTextField(myController: bookcontroller, onValidator: (value){}, keyBoardType: TextInputType.text, obsureText: false, hint:"Book Name/Title"),
              InputTextField(myController: authorcontroller, onValidator: (value){}, keyBoardType: TextInputType.text, obsureText: false, hint:"Author Name"),
              InputTextField(myController: yearcontroller, onValidator: (value){}, keyBoardType: TextInputType.number, obsureText: false, hint:"Year"),

              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 5),
                child: DropdownButtonFormField(

                  hint: Text("Department"),

                    decoration:  InputDecoration(
                      contentPadding: const EdgeInsets.all(12),

                      hintStyle:Theme.of(context).textTheme.bodyText2!.copyWith(height:0,color:Colors.black38.withOpacity(0.8),),
                      border:  const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple,),
                        borderRadius:BorderRadius.all(Radius.circular(100)),
                      ),
                      focusedBorder: const  OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple,),
                          borderRadius:BorderRadius.all(Radius.circular(100))
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red,),
                          borderRadius:BorderRadius.all(Radius.circular(100))
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,),
                          borderRadius:BorderRadius.all(Radius.circular(100))
                      ),
                    ),

                    value: selectedval,
                    items: menuitems.map(
                            (e)=>DropdownMenuItem(child: Text(e),value: e,)
                    ).toList(),
                    onChanged: (val){
                      setState(() {
                        selectedval= val as String;
                      });
                    }
                ),
              ),



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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> searchScreen()));

                      },
                      child: const Center(child: Text("SUBMIT/SAVE",style:TextStyle(color:Colors.white),),))
              ),



            ],
          ),
        ),
      ),
    );
  }
}
