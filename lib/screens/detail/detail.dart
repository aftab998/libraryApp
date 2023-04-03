import 'package:flutter/material.dart';


class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("MY E-LIBRARY"),
        elevation: 0.0,
        backgroundColor: Colors.purple,
      ),

      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("computer science",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),),
                const SizedBox(height: 6,),
                Text("BOOKS AVAILABLE",style: TextStyle(color: Colors.amber.shade600, fontSize: 8, letterSpacing: 1.5),),
              ],
            ),

          ),

          const SizedBox(height:10,),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(height: 80, width: 80,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    const SizedBox(width:0.1,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lorem lpsum", style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                        Text("by john Doe", style: TextStyle(color: Colors.brown.shade100,fontSize: 10),)
                      ],
                    ),
                    const SizedBox(width: 28,),

                    Column(
                      children: [
                        Icon(Icons.more_horiz_rounded),
                        Text("BORROW", style: TextStyle(color: Colors.purple,fontSize: 8),)


                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(height: 80, width: 80,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    const SizedBox(width:0.1,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lorem lpsum", style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                        Text("by john Doe", style: TextStyle(color: Colors.brown.shade100,fontSize: 10),)
                      ],
                    ),
                    const SizedBox(width: 28,),

                    Column(
                      children: [
                        Icon(Icons.more_horiz_rounded),
                        Text("BORROW", style: TextStyle(color: Colors.purple,fontSize: 8),)


                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(height: 80, width: 80,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    const SizedBox(width:0.1,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lorem lpsum", style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                        Text("by john Doe", style: TextStyle(color: Colors.brown.shade100,fontSize: 10),)
                      ],
                    ),
                    const SizedBox(width: 28,),

                    Column(
                      children: [
                        Icon(Icons.more_horiz_rounded),
                        Text("BORROW", style: TextStyle(color: Colors.purple,fontSize: 8),)


                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(height: 80, width: 80,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    const SizedBox(width:0.1,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lorem lpsum", style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                        Text("by john Doe", style: TextStyle(color: Colors.brown.shade100,fontSize: 10),)
                      ],
                    ),
                    const SizedBox(width: 28,),

                    Column(
                      children: [
                        Icon(Icons.more_horiz_rounded),
                        Text("BORROW", style: TextStyle(color: Colors.purple,fontSize: 8),)


                      ],
                    )
                  ],
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}
