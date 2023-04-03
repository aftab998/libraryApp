import 'package:flutter/material.dart';
import 'package:libraryapp/screens/detail/detail.dart';

class department extends StatefulWidget {
  const department({Key? key}) : super(key: key);

  @override
  State<department> createState() => _departmentState();
}

class _departmentState extends State<department> {


  final List<String> a= [
    "math",
    "cs",
    "physics",
    "biology",
    "urdu",
    "chemistry",
    "zoology",
    "botany"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("MY E-LIBRARY"),
        elevation: 0.0,
        backgroundColor: Colors.purple,
      ),
      
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Stack(
                alignment:Alignment(0,15),

                children: [
                  Container(
                    height: 85,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(60))
                    ),

                  ),
                  Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                        color:
                    Colors.white), child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                        Text("FIRSTNAME LASTNAME", style: TextStyle(color: Colors.purple, fontSize: 12),),
                        Text("DEPARTMENT NAME", style: TextStyle(color: Colors.black, fontSize: 8, fontWeight: FontWeight.w600),),

                        Row(
                          children: [
                            Container(

                              padding: EdgeInsets.all(6),
                              height: 24,
                              width: 80,
                              decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(4)),
                              child: Center(child: Text("TODOLIST",  style: TextStyle(color: Colors.white, fontSize: 10,),)),
                            ),
                            const SizedBox(width: 8,),
                            Text("EDIT PROFILE", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500 ),),

                          ],
                        )

                      ],),

                      trailing: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                      ),

                    ),
                  )
                ],
              ),
            ),
          ),


          SizedBox(height: 35,),

          Expanded(
            flex: 5,
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(8),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,

            children: List.generate(a.length, (index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detail()));

                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        ),
                        Text(a[index]),
                      ],
                    ),
                  ),
                );
            }),

          ),
              ))





        ]
      ),
    );
  }
}
