import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:interview/database/sql_db.dart';

class InvoiceDetailsPage extends StatefulWidget {
  InvoiceDetailsPage({super.key});

  @override
  State<InvoiceDetailsPage> createState() => _InvoiceDetailsPageState();
}

class _InvoiceDetailsPageState extends State<InvoiceDetailsPage> {
  SqlDb dbHelper = SqlDb();
  TextEditingController productName = TextEditingController();

  TextEditingController price = TextEditingController();

  TextEditingController unitNo = TextEditingController();

  TextEditingController quantity = TextEditingController();

  TextEditingController total = TextEditingController();
  double totalData = 0.0;

  TextEditingController expiryDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Invoice Details Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FutureBuilder(
                      future: dbHelper.getInvoiceDetail(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // if (snapshot.data!.isEmpty) {
                          //   SizedBox(
                          //     height: MediaQuery.of(context).size.height * 0.5,
                          //     width: MediaQuery.of(context).size.width * 0.9,
                          //     child: Center(
                          //       child: ElevatedButton(
                          //         onPressed: () async{
                          //           final result = await dbHelper.insertInvoiceDetail({
                          //             "lineNo": 1,
                          //             "productName":"Mahmoud",
                          //             "UnitNo": 50,
                          //             "price":60.25,
                          //             "quantity": 7,
                          //             "total": 421.75,
                          //             "expiryDate": DateTime.now().toUtc()
                          //           });
                          //           print("Success: =============  $result  ========================");
                          //         },
                          //         style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                          //         child: const Text("add data"),
                          //       ),
                          //     ),
                          //   );
                          // }
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                productName.text =
                                snapshot.data![index]["productName"];
                                price.text = snapshot.data![index]["price"].toString();
                                quantity.text = snapshot.data![index]["quantity"].toString();
                                totalData = double.parse(price.text) *
                                    double.parse(quantity.text);
                                total.text = totalData.toString();
                                unitNo.text = snapshot.data![index]["UnitNo"].toString();
                                expiryDate.text = snapshot.data![index]["expiryDate"].toString();

                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    //Product Name
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.26,
                                          child: const Text(
                                            "Product Name",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.58,
                                          height: 35,
                                          child: TextFormField(
                                            controller: productName,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    //Unit No
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.23,
                                          child: const Text(
                                            "Unit No.",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.58,
                                          height: 35,
                                          child: TextFormField(
                                            controller: unitNo,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.23,
                                          child: const Text(
                                            "Price",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.58,
                                          height: 35,
                                          child: TextFormField(
                                            controller: price,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.23,
                                          child: const Text(
                                            "Quantity",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.58,
                                          height: 35,
                                          child: TextFormField(
                                            controller: quantity,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.23,
                                          child: const Text(
                                            "Total",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.58,
                                          height: 35,
                                          child: TextFormField(
                                            controller: total,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.23,
                                          child: const Text(
                                            "Expiry Date",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width *
                                              0.58,
                                          height: 35,
                                          child: TextFormField(
                                            controller: expiryDate,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),

                                  ],
                                );
                              },
                            ),
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      }),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)))),
                        child: const Text(
                          "New",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)))),
                        child: const Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)))),
                        child: const Text(
                          "Back",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15)))),
                        child: const Text(
                          "Delete",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
