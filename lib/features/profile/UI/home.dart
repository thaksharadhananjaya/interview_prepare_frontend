import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                buildHomeTitle(),
                const SizedBox(
                  height: 32,
                ),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(77, 214, 210, 210),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextFormField(
                        decoration: const InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ))),
                buildCategoryList(),
              ],
            ),
          ),
        ));
  }

  SizedBox buildCategoryList() {
    return SizedBox(
      width: 300,
      height: 200,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.95,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) =>
              buildCategoryButton()),
    );
  }

  Column buildCategoryButton() {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.red,
          child: Image.network(
            'https://dl.dropboxusercontent.com/scl/fi/1yrwv8l4u7pzra7c6nuqp/accounting.png?dl=0&rlkey=a19c57kqzkxtsqvlt5eix3ox6',
            width: 30,
            height: 30,
          ),
        ),
        const Text('Accounting')
      ],
    );
  }

  Row buildHomeTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg',
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Hi, Thakshara!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Icon(
          Icons.notifications,
          color: Colors.blue,
          size: 40,
        )
      ],
    );
  }
}
