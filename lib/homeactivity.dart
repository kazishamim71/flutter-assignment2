import 'package:flutter/material.dart';


class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  MySnackBar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am email", context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: (){MySnackBar("I am Home", context);}, icon: Icon(Icons.home)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  currentAccountPicture: Image.network("https://e7.pngegg.com/pngimages/1019/288/png-clipart-google-adwords-google-logo-behavioral-retargeting-google-search-engine-optimization-company.png"),
                  currentAccountPictureSize: Size(100, 100),
                  accountName: Text('Kazi Shamim'),
                  accountEmail: Text('info@kazishamim.com'),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){MySnackBar("This is Home", context);},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),

            ),
          ],

        ),
      ),
      body:

      /*Center(
        child: Text("Hello Flutter App Developer",
          style: TextStyle(fontSize: 30,
              color: Colors.black),),

        //color: Color.fromARGB(255, 25, 178, 178)
      )*/
      Column(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child:
              Text("Hello Flutter",
              style: TextStyle(fontSize: 30),
            ),


            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),

          ),
          Container(
            height: 100, width: 250,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            color: Colors.red,
            child: Text("Hello another child"),

          ),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.contact_phone),label: 'Contact'),
      ],
      onTap: (int index){
          if(index==0){
            MySnackBar("This is my home", context);

          }else if(index==1){
            MySnackBar("This is my profile", context);
          }else if(index==2){
            MySnackBar("This is my contact", context);
          }
      },
      ),
    );
  }
}