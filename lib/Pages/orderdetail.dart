import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(

      //appbar
      appBar: AppBar(centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Order #1688068`",
        style: TextStyle(color: Colors.white),
        ),
         ),

      //body
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("May 31, 05:42 PM"),
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.blue,),
                         Text("delivered"),
                         SizedBox(height:40),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1 item"),
                  Row(
                    children: [
                     Icon(Icons.receipt,color: Color.fromARGB(255, 1, 69, 100),),
                     Text("RECEIPT",style: TextStyle(color: Color.fromARGB(255, 1, 69, 100)),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.network("https://tse1.mm.bing.net/th?id=OIP.52S-J00jaSlwVOSvxVqfowHaFj&pid=Api&P=0&h=180",
                                height:70 ,),SizedBox(height: 20,)
                            //Text("data")
                          ],
                        ),SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("controller",
                              style: TextStyle(fontWeight: FontWeight.w600,fontSize:17 ),),
                            Text("16GB/1TB SSD"),
                            Text("1 unit"),
                            SizedBox(height: 20,)
                          ],
                        ),
                        SizedBox(width: 50,),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("₹1,05,000"),
                            ],
                          ),
                        ),
                      ],  
                    ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide() )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Item total"),
                        Text("Delivery"),
                        Text("Grand Total",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                        SizedBox(height: 10,)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("₹1,05,000"),
                        Text("FREE",style: TextStyle(color: Colors.green),),
                        Text("₹1,05,000"),
                        SizedBox(height: 20,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CUSTOMER DETAILS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.green,)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("krishnapriya mp",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      Text("+98951670534"),
                      SizedBox(height: 5,),
                      Text("Address",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      Text("banglore,"),
                      Text("srinivas pg"),
                      SizedBox(height: 5,),
                      Text("City",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      Text("HSR,Bengaluru-560121"),

                    ],
                  ),
                ],
              )
          ],
        ),
      )

    );
  }
}