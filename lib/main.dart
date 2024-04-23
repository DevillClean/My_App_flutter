import 'package:flutter/material.dart';

void main() {
  runApp(const HairStylist());
}

class HairStylist extends StatelessWidget {
  const HairStylist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 242, 233),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // как называеться параметр так и называеться настройка
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Hair Stylist', 
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                 ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 220,
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(40),
                         color: Colors.white,
                       ),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const SizedBox(height: 5),
                         const Icon(
                            Icons.face_retouching_natural,
                            size: 100,
                           ),
                         const Text(
                            'Anna Ray',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                         Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ],
                            ),
                         const Text(
                          '5 years experience',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){},
                              icon: const Icon(
                              Icons.phone,
                              size: 20,
                              color: Color.fromARGB(255, 85, 58, 0),
                              ),
                            ),
                            IconButton(onPressed: (){},
                              icon: Icon(
                              Icons.email,
                              size: 20,
                              color: Color.fromARGB(255, 85, 58, 0),
                              ),
                            ),
                          ],
                         ),
                        ],
                       ),
                     ),
                    Container(
                      width: 150,
                      height: 220,
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(40),
                         color: Colors.white,
                       ),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const SizedBox(height: 5),
                         const Icon(
                            Icons.face_outlined,
                            size: 100,
                           ),
                         const Text(
                            'George Sebo',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                         Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Color.fromARGB(255, 58, 58, 57),
                                  size: 20,
                                ),
                              ],
                            ),
                         const Text(
                          '4 years experience',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                         ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){},
                              icon: const Icon(
                              Icons.phone,
                              size: 20,
                              color: Color.fromARGB(255, 85, 58, 0),
                              ),
                            ),
                            IconButton(onPressed: (){},
                              icon: Icon(
                              Icons.email,
                              size: 20,
                              color: Color.fromARGB(255, 85, 58, 0),
                              ),
                            ),
                          ],
                         ),
                        ],
                       ),
                     ),
                   ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Schedule",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sept, 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                     padding: const EdgeInsets.all(3.0),
                     child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: const Color.fromARGB(255, 142, 131, 131),
                         ),
                         padding: const EdgeInsets.symmetric(
                           vertical: 12,
                           horizontal: 18,
                         ),
                         child: Column(
                           children: const [
                             Text(
                               '11',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                             Text('s'),
                           ],
                         ),
                       ),
                    ),
                    Stack(
                      children: [
                       Padding(padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 65, 32, 32),
                           ),
                           padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 18,
                           ),
                           child: Column(
                            children: const [
                              Text(
                                '11',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                's',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Icon(
                                Icons.alarm,
                                color: Colors.white,
                                size: 14,
                              ),
                            ],
                           ),
                         ),
                       ),
                       Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                         ),
                       ),
                     ],
                    ),
                    Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 142, 131, 131),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 18,
                        ),
                        child: Column(
                          children: const [
                            Text(
                              '11',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('s'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 142, 131, 131),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 18,
                        ),
                        child: Column(
                          children: const [
                            Text(
                              '11',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('s'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 142, 131, 131),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 18,
                        ),
                        child: Column(
                          children: const [
                            Text(
                              '11',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('s'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text(
                  'Available Slots',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 57, 22, 22),
                      ),
                      child: const Center(
                        child: Text(
                          "9am-10am",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 142, 131, 131),
                      ),
                      child: const Center(child: Text('9am-10am')),
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 142, 131, 131),
                      ),
                      child: const Center(child: Text('9am-10am')),
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 142, 131, 131),
                      ),
                      child: const Center(child: Text('9am-10am')),
                    ),
                  ],
                ),              
              ],
            ),
          )
        ),
      )
    );
  }
}

