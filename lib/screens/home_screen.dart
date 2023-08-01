import 'package:flutter/material.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Auth com laravel'),
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                    SizedBox(height: 10,),
                   const  Text('Abel Tequerro', style: TextStyle(fontSize: 18,   color: Colors.white),),
                    const Text('abeltequerro@gmail.com', style: TextStyle(fontSize: 18, color: Colors.white),),
                  ],
                ),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),

            //Login e Logout
            ListTile(
              title: const Text('Login'),
              leading: const Icon(Icons.login),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScrenn(),),
                );
              },
            ),

            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
