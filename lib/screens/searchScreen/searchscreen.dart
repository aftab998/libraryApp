import 'package:flutter/material.dart';
import 'package:libraryapp/screens/departments/department.dart';


class searchScreen extends StatefulWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {

  final searchcontroller =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Stack(

                alignment: Alignment.center,
                children: [
                  Text("SEARCH", style: TextStyle(fontSize: 34,color: Colors.purple,fontWeight: FontWeight.bold),),
                  Icon(Icons.search_rounded,size: 100,)
                ],

              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(

                      controller: searchcontroller,
                      validator: (value){},
                      keyboardType: TextInputType.text,

                      style:Theme.of(context).textTheme.bodyText2!.copyWith(height:0,fontSize: 19),
                      decoration: InputDecoration(

                        suffixIcon: Icon(Icons.search_outlined,color: Colors.black,),
                        hintText:"Search",
                        contentPadding: const EdgeInsets.all(5),
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

                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> department()));

                      },
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("search",style: TextStyle(color: Colors.white),)),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Lorem lpsum",style: TextStyle(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.bold),),
                  Text("AUTHOR",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 12,fontWeight: FontWeight.bold),),
                ],),
                subtitle: Text("Lorem lpsumis simply dummy text of the print and "
                    "stabdard dumy text ever since 1500,s when an "
                    "make a typa speceman book.",style: TextStyle(fontSize: 10),),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Lorem lpsum",style: TextStyle(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.bold),),
                  Text("AUTHOR",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 12,fontWeight: FontWeight.bold),),
                ],),
                subtitle: Text("Lorem lpsumis simply dummy text of the print and "
                    "stabdard dumy text ever since 1500,s when an "
                    "make a typa speceman book.",style: TextStyle(fontSize: 10),),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Lorem lpsum",style: TextStyle(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.bold),),
                  Text("AUTHOR",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 12,fontWeight: FontWeight.bold),),
                ],),
                subtitle: Text("Lorem lpsumis simply dummy text of the print and "
                    "stabdard dumy text ever since 1500,s when an "
                    "make a typa speceman book.",style: TextStyle(fontSize: 10),),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Lorem lpsum",style: TextStyle(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.bold),),
                  Text("AUTHOR",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 12,fontWeight: FontWeight.bold),),
                ],),
                subtitle: Text("Lorem lpsumis simply dummy text of the print and "
                    "stabdard dumy text ever since 1500,s when an "
                    "make a typa speceman book.",style: TextStyle(fontSize: 10),),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Lorem lpsum",style: TextStyle(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.bold),),
                  Text("AUTHOR",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 12,fontWeight: FontWeight.bold),),
                ],),
                subtitle: Text("Lorem lpsumis simply dummy text of the print and "
                    "stabdard dumy text ever since 1500,s when an "
                    "make a typa speceman book.",style: TextStyle(fontSize: 10),),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
