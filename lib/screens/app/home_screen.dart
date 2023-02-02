import 'package:flutter/material.dart';

import '../../widgets/container_image_widget.dart';
import '../../widgets/container_small_image_widget.dart';
import '../../widgets/drawar_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFECB7BF),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      drawer: const DrawarWidget(),
      body: Column(
        children: [
//********************************************************************************************************************
          const ListTile(
            title: Text(
              'Checkout Our Demos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon((Icons.arrow_forward_ios), color: Colors.grey),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ContainerImageWidget(
                    imgURL: 'assets/img6.jpg',
                    text: 'How to Add lightning effect in photos'),
              ],
            ),
          ),
//********************************************************************************************************************
          const SizedBox(height: 7),
          const ListTile(
            title: Text(
              'Our Free Courses',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon((Icons.arrow_forward_ios), color: Colors.grey),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: const EdgeInsets.all(7),
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              shrinkWrap: true,
              children: [
                ContainerSmallImageWidget(
                    imgURL: 'assets/imgt.jpg', text: 'Computer science'),
              ],
            ),
          ),
//********************************************************************************************************************
          const SizedBox(height: 7),
//********************************************************************************************************************
          const ListTile(
            title: Text(
              'Checkout Paid Demos',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon((Icons.arrow_forward_ios), color: Colors.grey),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: const EdgeInsets.all(7),
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              shrinkWrap: true,
              children: [
                ContainerSmallImageWidget(
                    imgURL: 'assets/imgt.jpg', text: 'Computer science'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
