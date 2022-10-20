import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Practice',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_sharp,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Stack(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 16, 15, 5),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Positioned(
                  right: 20,
                  top: 18,
                  child: Icon(
                    Icons.circle,
                    color: Colors.deepOrange,
                    size: 10,
                  ))
            ],
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Hi Trojan B!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Explore Your  Favourite Snart Watches Here',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[300]),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15.0),
                              hintText: "Search ",
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.deepOrange,
                            child: Icon(Icons.display_settings),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Stack(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 5, 10),
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Explore Latest',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Smart Watch With Prices',
                              style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 15, 1),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Explore')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 25,
                    bottom: 10,
                    child: Image.asset(
                      'assets/watch-user.png',
                      width: 420,
                      height: 180,
                    ))
              ]),
              const ListTile(
                title: Text(
                  'The most searched watches',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      width: 160,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 140,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                   const Text('Apple Watch SE',
                                   style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                   ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Text('Ghc999.99'),
                                      Icon(Icons.favorite,
                                      color: Colors.deepOrange),
                                    ],
                                   )
                                  ],
                                )
                              )
                            ],
                          ),
                    ),
                    Positioned(
                        left: 40,
                        bottom: 100,
                        child: Image.asset(
                          'assets/watch1.png',
                          width: 120,
                          height: 120,
                        ))
                  ]),
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      width: 160,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 140,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                   const Text('Apple Watch SE',
                                   style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                   ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Text('Ghc999.99'),
                                      Icon(Icons.favorite_outline),
                                    ],
                                   )
                                  ],
                                )
                              )
                            ],
                          ),
                    ),
                    Positioned(
                        left: 5,
                        bottom: 50,
                        child: Image.asset(
                          'assets/watch2.png',
                          width: 200,
                          height: 225,
                        ))
                  ]),
                ],
              ),
              // end
              const ListTile(
                title: Text(
                  'We Highly Recommend These',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'View',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // next
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      width: 160,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 140,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                   const Text('Apple Watch SE',
                                   style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                   ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Text('Ghc999.99'),
                                      Icon(Icons.favorite_outline),
                                    ],
                                   )
                                  ],
                                )
                              )
                            ],
                          ),
                    ),
                    Positioned(
                        left: 40,
                        bottom: 100,
                        child: Image.asset(
                          'assets/watch3.png',
                          width: 120,
                          height: 120,
                        ))
                  ]),
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      width: 160,
                      height: 190,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                width: 140,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                   const Text('Apple Watch SE',
                                   style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                   ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Text('Ghc999.99'),
                                      Icon(Icons.favorite_outline),
                                    ],
                                   )
                                  ],
                                )
                              )
                            ],
                          ),
                    ),
                    Positioned(
                        left: 5,
                        bottom: 50,
                        child: Image.asset(
                          'assets/watch2.png',
                          width: 200,
                          height: 225,
                        ))
                  ]),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
