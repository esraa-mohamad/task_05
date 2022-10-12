import 'package:flutter/material.dart';
import 'package:task_05/componants/componants.dart';
import 'package:task_05/modules/product_details.dart';

class HomeScreen extends  StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var searchController=TextEditingController();

  List category=
      [
        'assets/images/men.png',
        'assets/images/woman.png',
        'assets/images/light.png',
        'assets/images/head.png',
        'assets/images/wireless.png',
      ];

  List name =
      [
        'Men',
        'Woman',
        'Devices',
        'Wireless',
        'Game',
      ];

  List sellingImage =
      [
        'assets/images/speaker.png',
        'assets/images/watch.png',
        'assets/images/tshirt.png',
      ];

  List sellingName1 =
      [
        'BeoPlay Speaker',
        'Wrist Watch',
        'T_shirt',
      ];

  List sellingName2=
  [
    'Big and high',
    'Waterproof',
    'Long Sleeve',
  ];

  List price=
  [
    '\$750',
    '\$550',
    '\$300',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[400],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    controller: searchController,
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>categories(
                          pathImage: category[index],
                          name: name[index]
                      ),
                      separatorBuilder: (context,index)=>const SizedBox(
                        width: 35,
                      ),
                      itemCount: category.length,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                   [
                    const Text(
                      'Best Selling',
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context)=>const ProductDetails(),
                            ));
                      },
                      child: const Text(
                        'See more',
                        style:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>selling(
                          pathImage: sellingImage[index],
                          name1: sellingName1[index],
                          name2: sellingName2[index],
                          price: price[index],
                      ),
                      separatorBuilder: (context,index)=>const SizedBox(
                        width: 25,
                      ),
                      itemCount: sellingImage.length,
                  ),
                ),
              ],
            ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            const [
              Text(
                'Explore',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
                  size: 20,
              ),
              Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
