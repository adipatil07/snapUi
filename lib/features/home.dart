import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  int _selectedIndex = 0;

  void onTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
        
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Center(
                child: Column(
                  children: [
                    Text("My Profile",style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),),
                    SizedBox(height: 20,),
        
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(210, 213, 214, 100),
                          shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/images/user.png",width: 180,height: 180,fit: BoxFit.cover)
                    ),
                    SizedBox(height: 20,),
                    Text("Username",style: TextStyle(fontSize: 20),),
        
                    Text("Vishwakarma Institute of Information Technology")
                  ],
                ),
              ),
        
        
              SizedBox(height: 30,),
              Text("Analytics",style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),),
              Container(
        
                decoration: BoxDecoration(
                  color: Color.fromRGBO(210, 213, 214, 100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
        
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
        
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        width: MediaQuery.sizeOf(context).width/4,
        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("2903",style: TextStyle(color: Theme.of(context).primaryColor),),
                            Text("Impressions",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        width: MediaQuery.sizeOf(context).width/4,
        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("2903",style: TextStyle(color: Theme.of(context).primaryColor),),
                            Text("Posts",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        width: MediaQuery.sizeOf(context).width/4,
        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("2903",style: TextStyle(color: Theme.of(context).primaryColor),),
                            Text("Likes",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Terms and Conditions",style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              Text("Privacy Policy",style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              Text("Data Safety",style: TextStyle(fontSize: 16),),
              SizedBox(height: 10,),
              Text("Delete My Account",style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              Center(
                  child: TextButton(
                      onPressed: (){},
                      child: Text("Log Out",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),)
                  )
              )
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_rounded),label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ' '),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: onTapped,
        backgroundColor: Color.fromRGBO(210, 213, 214, 100),

      ),
    );
  }

}