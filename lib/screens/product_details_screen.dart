import 'package:final_project_flutter/screens/cart_product_screen.dart';
import 'package:final_project_flutter/screens/cart_screen.dart';
import 'package:final_project_flutter/screens/products_screen.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Products(),
                )),
            color: Colors.black,
          ),
          title: const Text(
            'Product Detail',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFFF19DBA),
          //FFE7789E
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartProduct(),
                  )),
              color: Colors.black,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: const Carousel());
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    "assets/imglist2.jpg",
    "assets/imglist4.jpg",
    "assets/imglist5.jpg",
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: 300,
          // MediaQuery.of(context).size.width,
          height: 300,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                bool active = pagePosition == activePage;
                return slider(images, pagePosition, active);
              }),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage)),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 15),
          child: Text(
            " The Earth Ceramic Coffee Mug ",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            " 280 Kwd ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFFC68418)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 15, bottom: 15),
          child: SizedBox(
              height: 50,
              width: 50,
              child: Row(children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon((Icons.indeterminate_check_box_outlined),
                        color: Colors.grey)),
                const Text(" 0 "),
                IconButton(
                    onPressed: () {},
                    icon: const Icon((Icons.add_box_outlined),
                        color: Colors.grey)),
              ])),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(" About product ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
          child: Text(
              "A product can be a service or an item. \nIt can be physical or in virtualor cyber form. \nEvery product is made at a cost and each is sold at a price. \nThe price that can be charged depends on the market,\nthe quality,\nthe marketing and the segment that is targeted ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey.withOpacity(0.9))),
        ),
        Center(
          child: Container(
            width: 350,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFF19DBA),
            ),
            child: TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(),
                  )),
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: const Color(0XFFF19DBA),
              ),
              child: const Text(
                ' ADD TO CART ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      // print(pagePosition);
      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Image.asset("$pagePosition"),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
