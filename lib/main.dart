  import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      );
    }
  }


  class MyHomePage extends StatelessWidget {
    const MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: DefaultTabController(
          length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Tabs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                bottom: const TabBar(
                  indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.chat),
                      ),
                      Tab(
                        icon: Icon(Icons.update_sharp),
                      ),
                      Tab(
                        icon: Icon(Icons.groups_3),
                      ), 
                      Tab(
                        icon: Icon(Icons.call),
                      )
                    ]
                ),
              ),
              drawer: Drawer(
                child: Column(
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                          color: Colors.green
                      ),
                      child: UserAccountsDrawerHeader(
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.all(Radius.circular(21.0))
                          ),
                          currentAccountPicture: CircleAvatar(
                            child: Text("A",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),
                          ),
                          currentAccountPictureSize: Size.square(40),
                          accountName: Text("Aniket Pawar",style: TextStyle(fontWeight: FontWeight.bold),),
                          accountEmail: Text("2253011@ritindia.edu")
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text("Profile"),
                            onTap: (){},
                          ),
                          ListTile(
                            leading: Icon(Icons.groups_3),
                            title: Text("New Community"),
                            onTap: (){},
                          ),
                          ListTile(
                            leading: Icon(Icons.settings),
                            title: Text("Settings"),
                            onTap: (){},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                      onTap: (){

                      },
                    )
                  ],
                ),

              ),
              body: TabBarView(
                children: [
                  Center(child: Text("Chats",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)),
                  Center(child: Text("Updates",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)),
                  Center(child: Text("Community",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)),
                  Center(child: Text("Calls",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),))
                ],
              ),
            ),
        ),
      );
    }
  }
