import 'package:flutter/material.dart';
class InvocieDeatils extends StatefulWidget {
  const InvocieDeatils({super.key});

  @override
  State<InvocieDeatils> createState() => _InvocieDeatilsState();
}

class _InvocieDeatilsState extends State<InvocieDeatils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Invocie Deatils Page",
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
          fontSize: 20
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height*0.6,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 3)
            ),
            child: Column(

              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Text("productName",
                      style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.56,
height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2)
                          )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Text("unitNo",
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.56,
                      height: 35,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)
                            )
                        ), items: [], onChanged: ( value) {  },
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Text("price",
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.56,
                      height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Text("total",
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.56,
                      height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Text("quantity",
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.56,
                      height: 35,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Text("expiryTime",
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.56,
                      height: 35,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2)
                            )
                        ), items: [], onChanged: ( value) {  },
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(onPressed: (){},
                      color: Colors.blue,
                      child: Text("new",
                        style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    MaterialButton(onPressed: (){},
                      color: Colors.blue,
                      child: Text("save",
                        style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    MaterialButton(onPressed: (){},
                      color: Colors.blue,
                      child: Text("back",
                        style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    MaterialButton(onPressed: (){},
                      color: Colors.red,
                      child: Text("delet",
                        style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
