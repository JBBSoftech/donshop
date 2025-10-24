import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Generated E-commerce App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      useMaterial3: true,
    ),
    home: const HomePage(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.blue,
          child: Text(
            'mohan',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
                GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (context, index) => Card(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[300],
                        child: const Icon(Icons.image, size: 40),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('Product Name', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('$29.99'),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          Icon(Icons.star_border, color: Colors.amber, size: 14),
                          SizedBox(width: 4),
                          Text('4.0', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
                Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Products',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) => Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          color: Colors.grey[300],
                          child: const Icon(Icons.image, size: 40),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Product Name', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('$29.99'),
                              SizedBox(height: 8),
                              Text('Brand: Example Brand', style: TextStyle(fontSize: 10)),
                              Text('Weight: 500g', style: TextStyle(fontSize: 10)),
                              Text('Stock: In Stock', style: TextStyle(fontSize: 10)),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 30),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                ),
                                child: Text('Add to Cart', style: TextStyle(fontSize: 10)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
              ],
    ),
  );
}
