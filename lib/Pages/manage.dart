import 'package:flutter/material.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  State<ManagePage> createState() => _ManagePage();
}

class _ManagePage extends State<ManagePage> {
  List<Icon> icons = [
    Icon(
      Icons.volume_mute_rounded,
      size: 40,
      color: Colors.white,
    ),
    Icon(Icons.currency_rupee, size: 40, color: Colors.white),
    Icon(Icons.percent_outlined, size: 40, color: Colors.white),
    Icon(Icons.group_outlined, size: 40, color: Colors.white),
    Icon(Icons.qr_code_2_outlined, size: 40, color: Colors.white),
    Icon(Icons.payment_outlined, size: 40, color: Colors.white),
    Icon(Icons.qr_code_2_outlined, size: 40, color: Colors.white),
  ];

  List<Color> colors1 = [
    Color.fromARGB(255, 236, 94, 6),
    Color.fromARGB(171, 43, 215, 20),
    Color.fromARGB(255, 9, 215, 67),
    Color.fromARGB(151, 8, 156, 176),
    const Color.fromARGB(255, 17, 115, 195),
    Color.fromARGB(255, 14, 97, 199),
    const Color.fromARGB(255, 68, 68, 67)
  ];
  List<Color> colors2 = [
    Color.fromARGB(255, 255, 255, 255),
     Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 255, 255, 255),
     Color.fromARGB(255, 255, 255, 255),
     Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 9, 215, 67),
  ];

  List<String> names1 = [
    '''Marketing 
Designs''',
    '''Online 
Payments''',
    '''Discount 
Coupons''',
    '''My 
Customer''',
    '''Store QR 
Code''',
    '''Extra 
Charges''',
    '''Order 
Form'''
  ];

  List<String> names2 = [
    ''' 
''',
    ''' 
''',
    ''' 
''',
    ''' 
''',
    '''  
''',
    ''' 
''',
    '''New
'''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: const Text(
          "Manage Store",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),

      //gridview
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 3)),
            itemBuilder: (context, index) {
              return GridTile(
                  child: Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          children: [
                            //box 1
                            Align(
                             
                              child: Container(
                                
                              decoration: BoxDecoration(
                              color: colors1[index],
                              borderRadius: BorderRadius.circular(5),
                              ),
                                width: 45,
                                height: 35,
                                child: Center(
                                  child: icons[index],
                                ),
                              ),
                            ),
                            //box2
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                            color:  colors2[index],
                            borderRadius: BorderRadius.circular(5),
                            ),
                              width: 40,
                              height: 20,
                              child: Center(
                                child: Text(names2[index],style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(names1[index]),
                    ],
                  ),
                ),
              ));
            }),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
