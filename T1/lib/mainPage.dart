// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:t1/Page2.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List imageList = [
    'assets/itr.jpeg',
    'assets/izt.jpg',
    'assets/ko.jpg',
    'assets/usa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('랜드마크'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: <Widget>[
          _buildTop(),
          _buildMiddle(),
          SizedBox(
            height: 30,
          ),
          _buildBottom(),
        ],

      ),
    );
  }
  Widget _buildTop(){
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: '검색어를 입력해 주세요',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
  Widget _buildBottom(){
    return
      Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  sliderWridget(),
                  sliderIndicator(),
                ],
              ),
            )
          ],
        );
  }

  Widget sliderWridget(){
    return CarouselSlider(
      carouselController: _controller,
      items: imageList.map(
            (imgLink) {
          return Builder(
            builder: (context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imgLink,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }
  Widget sliderIndicator(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12,
              height: 12,
              margin:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape:  BoxShape.circle,
                color:
                  Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMiddle(){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                    icon :Icon(Icons.location_on),
                      color: Colors.blue,
                      iconSize: 35.0,
                      onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Page2())
                      );
                      },
                ),
                Text('아시아')
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon :Icon(Icons.location_on),
                  color: Colors.blue,
                  iconSize: 35.0,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2())
                    );
                  },
                ),
                Text('남아메리카')
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon :Icon(Icons.location_on),
                  color: Colors.blue,
                  iconSize: 35.0,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2())
                    );
                  },
                ),
                Text('북아메리카')
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  icon :Icon(Icons.location_on),
                  color: Colors.blue,
                  iconSize: 35.0,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2())
                    );
                  },
                ),
                Text('유럽')
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon :Icon(Icons.location_on),
                  color: Colors.blue,
                  iconSize: 35.0,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2())
                    );
                  },
                ),
                Text('아프리카')
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon :Icon(Icons.location_on),
                  color: Colors.blue,
                  iconSize: 35.0,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page2())
                    );
                  },
                ),
                Text('오세아니아')
              ],
            ),
          ],
        ),
      ],
    );
  }

}




