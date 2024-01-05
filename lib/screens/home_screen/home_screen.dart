import 'package:flutter/material.dart';
import 'package:mobile_ui/data/popular_product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> AllCategories = [
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Local-Maghi-Sarisha-Oil-300x300.jpg",
      'name': "Cooking"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/honey-nuts-300x300.png",
      'name': "Dry Fruits"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Gawa-Ghee2-1-1-300x300.jpg",
      'name': "Ghee (ঘি)"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Maccoffee-Gold-95-Gram-300x300.jpg",
      'name': "Ghee And Sharisha OIL"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/kalojira-honey-1-300x300.jpg",
      'name': "Honey (মধু)"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/tea-1-300x300.jpg",
      'name': "Grocery (বাজার)"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Nutt-1-300x300.jpg",
      'name': "Nuts & Seeds (বাদাম এবং বীজ)"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Olitalia-Extra-Virgin-Olive-Oil-1l-1-300x300.jpg",
      'name': "Organic Oil (অর্গানিক তেল)"
    },
    {
      'image':
          "https://ghorerbazarbd.com/wp-content/uploads/2022/07/Maccoffee-Gold-100-gram-1-300x300.jpg",
      'name': "Tea/Snacks (চা-নাশতা)"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: DrawerHeader(
          child: Column(
            children: [
              ListTile(
                title: Text('Home'),
              ),
              ListTile(
                title: Text('Image Upload'),
              ),
              ListTile(
                title: Text('Report Upload'),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://ghorerbazarbd.com/new/wp-content/uploads/2022/07/3087_1655633552.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Our Categories:',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AllCategories.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 150,
                              child: CircleAvatar(
                                backgroundColor: Colors.white70,
                                backgroundImage: NetworkImage(AllCategories[index]['image']),
                              ),
                            ),
                            Text(
                              AllCategories[index]['name'],
                              style: TextStyle(overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Our Popular Products:',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 330,
              child: ListView.builder(
                itemCount: LimitedPopularProduct.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 200,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Image.network(
                                    LimitedPopularProduct[index]['image']),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.redAccent,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                ],
                              ),
                            ),
                            Text(
                              LimitedPopularProduct[index]['name'],
                              style: TextStyle(
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "BDT 200",
                              style: TextStyle(fontSize: 16),
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
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                  'https://ghorerbazarbd.com/wp-content/uploads/2022/07/8110_1650228027.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hot Deals',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              height: 330,
              child: ListView.builder(
                itemCount: LimitedPopularProduct.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 200,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Image.network(
                                    LimitedPopularProduct[index]['image']),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.redAccent,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                ],
                              ),
                            ),
                            Text(
                              LimitedPopularProduct[index]['name'],
                              style: TextStyle(
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "BDT 200",
                              style: TextStyle(fontSize: 16),
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
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
