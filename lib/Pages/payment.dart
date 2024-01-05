import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payments",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    //child: SizedBox(height: 20,),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Transaction limit",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "A free limit up to which you will recieve the online payments directly in your bank",
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: LinearProgressIndicator(
                            value: 0.3,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,left: 10),
                              child: Text(
                                "36,,668 left out of ₹50,000",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 199),
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Increase Limit")),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //set1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Default Method",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Online Payment"),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        )
                      ],
                    ),
                  ],
                ),
                
                SizedBox(
                  height: 20,
                ),
                //set2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Profile",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bank Account"),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
                ,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Payments overview",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        Text("Lifetime"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ],
                    )
                  ],
                ),
                // SizedBox(
                //   height: 30,
                
                // ),r
                //buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 111, 0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AMOUNT ON HOLD",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:100),
                              child: Text(
                                "₹0",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 64, 234, 70),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AMOUNT RECIEVED",
                              style: TextStyle(color: Colors.white),
                              
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Text(
                                "₹50,000",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Transaction',style: TextStyle(fontSize: 19),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 29,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 226, 221, 221)),
                    child:Center(child: Text('On hold',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)) ,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                       height: 29,
                      width: 110,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue),
                    child:Center(child: Text('Payouts(15)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)) ,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                       height: 29,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 226, 221, 221)),
                    child:Center(child: Text('Refunds',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)) ,
                    ),
                  ],),
                ),
                SizedBox(height: 10,),
      
      //////////////////////////////////////////////////////////////////////////
      ///
      
             SingleChildScrollView(
                  child: Column(children: [
                    Column(
                      children: [
                        //tile1
                        ListTile(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail(),));
                          },
                          leading: Image.network(
                              "https://tse1.mm.bing.net/th?id=OIP.HrKio-BONFmgE2oMyzFmfwHaEK&pid=Api&P=0&h=180"),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("controller"),
                              Text("16GB/1TB SSD,RTX 2080ti"),
                              Text("₹1,05,000"),
                            ],
                          ),
                          //trailing:Text(''),
                        ),
                        Divider(color: const Color.fromARGB(255, 47, 48, 52),),
                        SizedBox(
                          height: 20,
                        ),
                
                        //tile2
                        ListTile(
                          leading: Image.network(
                              "https://i.pinimg.com/originals/2f/04/d9/2f04d906c75dfec101f5e3a33f83d584.png"),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Acer Nitro 5"),
                              Text("8GB/1TB SSD,RTX 1650ti"),
                              Text("₹85,000"),
                            ],
                          ),
                          // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
                        ),
                          Divider(color: const Color.fromARGB(255, 47, 48, 52),),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: Image.network(
                              "https://i.pinimg.com/originals/ff/8d/f7/ff8df77c82c2aed752efa11f277284c3.jpg"),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Acer Nitro 5"),
                              Text("8GB/1TB SSD,RTX 1650ti"),
                              Text("₹85,000"),
                            ],
                          ),
                          // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
                        )
                      ],
                    )
                  ]),
                ),
              
                ],
            ),
          ),
          //  padding: const EdgeInsets.all(20.0),
        ),
      ),

    );
  }
}
