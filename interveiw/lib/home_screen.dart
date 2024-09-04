import 'package:flutter/material.dart';
import 'package:interveiw/invocice_daetils.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 3),
            color: Colors.blue
          ),
            child: Center(
              child: Text(
                "Home page ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
              ),
            ),
      ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InvocieDeatils()));

            },
            color: Colors.blue,
              child: Text("Invocie Deatils",
              style: TextStyle(color: Colors.white,fontSize: 20,
              fontWeight: FontWeight.w500
              ),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){
            },
              color: Colors.blue,
              child: Text("Invocie List",
                style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
