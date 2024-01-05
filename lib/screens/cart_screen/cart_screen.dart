import 'package:flutter/material.dart';
import 'package:mobile_ui/screens/home_screen/home_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text(
                "Abhishek Mishra",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ), //Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            selected: _selectedIndex == 0,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: const Text('Categories'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.branding_watermark),
            title: const Text('Brand'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: const Text('Cart'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () {},
          ),
          Container(height: 2, color: Colors.grey[300]),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Account'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: () {},
          ),
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 500,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      tileColor: Colors.grey[200],
                      iconColor: Colors.black87,
                      leading: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.white70,
                          backgroundImage: NetworkImage(
                              "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Local-Maghi-Sarisha-Oil-300x300.jpg"),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text('দেশি মাঘী সরিষার তেল (৫ লিটার)'),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('(৫ লিটার)'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Price: BDT 1234',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Total: BDT 1234',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(1),
                                icon: Icon(Icons.remove_circle),
                              ),
                              Text('1'),
                              IconButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(1),
                                icon: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            Text(
              "Total BDT 200",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87, padding: EdgeInsets.all(5)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.add_circle,
                      size: 18,
                    ),
                  ),
                  Text(
                    'Checkout',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
