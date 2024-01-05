import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_ui/screens/home_screen/home_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
                    style: TextStyle(fontSize: 18,),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://ghorerbazarbd.com/wp-content/uploads/2022/07/Local-Maghi-Sarisha-Oil.jpg',
                fit: BoxFit.fill,
                height: 370,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  color: Colors.grey[200],
                  height: 105,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.network(
                                    'https://ghorerbazarbd.com/wp-content/uploads/2022/07/Local-Maghi-Sarisha-Oil.jpg'),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  'Local Maghi Sarisha Oil/দেশি মাঘী সরিষার তেল (৫ লিটার)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text("(10 Reviews)"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Stock: 10",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    textAlign: TextAlign.justify,
                    "Lorem Ipsum, sometimes referred to as 'lipsum', is the placeholder text used in design when creating content. It helps designers plan out where the content will sit, without needing to wait for the content to be written and approved. It originally comes from a Latin text, but to today's reader, it's seen as gibberish.Lorem Ipsum, sometimes referred to as 'lipsum', is the placeholder text used in design when creating content. It helps designers plan out where the content will sit."),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "BDT 300",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_circle)),
                      Text('1'),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove_circle)),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    padding: EdgeInsets.all(5)),
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
                      'Add To Cart',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
