import 'package:flutter/material.dart';
import 'package:task_05/componants/componants.dart';

class ProductDetails extends  StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
             Stack(
               alignment: Alignment.center,
               children:
               [
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.grey[400],
                   ),
                   child: Image.asset('assets/images/sleev.png',
                     width: double.infinity,
                     height: 250,),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:
                     const [
                       Icon(
                         Icons.arrow_back_ios,
                         color: Colors.black,
                         size: 22,
                       ),
                       CircleAvatar(
                         radius: 20,
                         backgroundColor: Colors.white,
                         child: Icon(
                           Icons.star_border,
                           color: Colors.black,
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    const Text(
                      'Nike Dri-Flt Long Sleeve',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                       Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(
                             children:
                             const [
                               Text(
                                 'Size',
                                 style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.grey,
                                 ),
                               ),
                               SizedBox(
                                 width: 30,
                               ),
                               Text(
                                 'XL',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children:
                               [
                                const Text(
                                  'Color',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.blue.shade700,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'In actual fact, dri fit is a high-performance, microfiber, polyester fabric that moves sweat away from the body and to the fabric surface, where it evaporates. As a result, Dri-FIT keeps athletes dry and comfortable.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                 [
                  const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '\$1500',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[500],
                    ),
                  ),
                ],
              ),
              defaultButton(
                  width: 200,
                  backGround: Colors.green,
                  function: (){},
                  text: 'ADD',
                colorText: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
