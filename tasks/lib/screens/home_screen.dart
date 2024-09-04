import 'package:flutter/material.dart';
import 'package:tasks/screens/inveice_deatils.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.6,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2),
                color: Colors.blue,
              ),
              child: Center(
                child: Text("Home Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),

                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => InvecieDeatils()));
              },
              child: Container(
                height: 57,
                width: MediaQuery.of(context).size.width*0.6,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("Invecie Deatils",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                height: 57,
                width: MediaQuery.of(context).size.width*0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("ؤ Deatils",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
