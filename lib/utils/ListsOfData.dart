import 'package:e_commerce/models/notificationModel.dart';
import 'package:flutter/material.dart';

List<String> sliderImages = [
  'assets/images/sliderImage/4.png',
  'assets/images/sliderImage/2.png',
  'assets/images/sliderImage/1.png',
  'assets/images/sliderImage/4.png',
  'assets/images/sliderImage/3.png',
  'assets/images/sliderImage/1.png',
];
List<String> productIcon1 = [
  'assets/images/productIcon/Group.png',
  'assets/images/productIcon/Tshirt.png',
  'assets/images/productIcon/woman tshirt.png',
  'assets/images/productIcon/man bag.png',
  'assets/images/productIcon/woman bag.png',
  'assets/images/productIcon/dress.png',
  'assets/images/productIcon/man shoes.png',
  'assets/images/productIcon/manPant.png',
  'assets/images/productIcon/woman pants.png',
  'assets/images/productIcon/short.png',
  'assets/images/productIcon/wonamSkert.png',
  'assets/images/productIcon/bikini.png',
];

final categoryName = [
  'Men shirt',
  'Men T-shirt',
  'Woman T-shirt',
  'Man Bad',
  'Woman Bag',
  'Dress',
  'Man Shoes',
  'Men\'s Trousers',
  'Women\'s Trousers',
  'Men\'s Shorts',
  'Skirt',
  'Bikini',
];

final productImage = [
  'assets/images/productImage/image 46.png',
  'assets/images/productImage/image 52.png',
  'assets/images/productImage/image 47.png',
  'assets/images/productImage/image 53.png',
  'assets/images/productImage/image 48.png',
  'assets/images/productImage/image 54.png',
  'assets/images/productImage/image 49.png',
  'assets/images/productImage/image 55.png',
];
///////////
final size = ['4', '6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5'];
final size1 = ['4', '4.5', '5', '5.5', '6', '6.5', '7', '7.5', '8'];
final size2 = ['5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5'];
final size3 = ['6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5'];
final size4 = ['5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9'];

/////////////////
final color = [
  Colors.black,
  Colors.white,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.red,
];
final color1 = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.deepOrange,
  Colors.yellow,
  Colors.black,
  Colors.white,
];
final color2 = [
  Colors.black,
  Colors.white,
  Colors.blue,
  Colors.deepOrange,
  Colors.yellow,
  Colors.green,
  Colors.red,
];
final color3 = [
  Colors.white,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.deepOrange,
  Colors.yellow,
  Colors.black,
];
final color4 = [
  Colors.yellow,
  Colors.black,
  Colors.white,
  Colors.blue,
  Colors.green,
  Colors.red,
];
///////////
final List<Map<String, dynamic>> listOfProducts = [
  {
    'title': 'FS - Nike Air Max 270 React...',
    'price': 100,
    'image': productImage[0],
  },
  {
    'title': 'FS - Nike Air Max 270 React...',
    'price': 200,
    'image': productImage[1],
  },
  {
    'title': 'FS - Nike Air Max 270 React...',
    'price': 250,
    'image': productImage[2],
  },
  {
    'title': 'FS - Nike Air Max 270 React...',
    'price': 300,
    'image': productImage[3],
  },
  {
    'title': 'FS - Nike Air Max 270 React...',
    'price': 100,
    'image': productImage[4],
  },
];
// final List<ProductModel> productList = [
//   ProductModel(
//     title: 'Nike Air Zoom Pegasus 36 Miami',
//     image: productImage[0],
//     price: 110,
//     size: size,
//     color: color,
//   ),
//   ProductModel(
//     title: 'FS - Nike Air Max 270 React...',
//     image: productImage[1],
//     price: 200,
//     color: color4,
//     size: size4,
//   ),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[2],
//       price: 310,
//       size: size3,
//       color: color3),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[3],
//       price: 140,
//       size: size2,
//       color: color2),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[4],
//       price: 300,
//       size: size1,
//       color: color1),
// ];
// final List<ProductModel> productList2 = [
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[5],
//       price: 110,
//       size: size,
//       color: color),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[6],
//       price: 100,
//       size: size2,
//       color: color2),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[7],
//       price: 210,
//       size: size4,
//       color: color4),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[0],
//       price: 240,
//       size: size3,
//       color: color3),
//   ProductModel(
//       title: 'FS - Nike Air Max 270 React...',
//       image: productImage[1],
//       price: 300,
//       size: size1,
//       color: color1),
// ];
// final List<IconModel> productIcon = [
//   IconModel(title: categoryName[0], image: productIcon1[0]),
//   IconModel(title: categoryName[1], image: productIcon1[1]),
//   IconModel(title: categoryName[2], image: productIcon1[2]),
//   IconModel(title: categoryName[3], image: productIcon1[3]),
//   IconModel(title: categoryName[4], image: productIcon1[4]),
//   IconModel(title: categoryName[5], image: productIcon1[5]),
//   IconModel(title: categoryName[6], image: productIcon1[6]),
//   IconModel(title: categoryName[7], image: productIcon1[7]),
// ];

final List<NotificationModel> notifiction = [
  NotificationModel(
      title: 'The Best Title',
      bodyText:
          'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
      time: 'April 30, 2014 1:01 PM'),
  NotificationModel(
      title: 'SUMMER OFFER 98% Cashback',
      bodyText:
          'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor',
      time: 'April 30, 2014 1:01 PM'),
  NotificationModel(
      title: 'Special Offer 25% OFF',
      bodyText:
          'Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo',
      time: 'April 30, 2014 1:01 PM'),
];

// final List<SizeModel> productSize = [
//   SizeModel(size: size[0]),
//   SizeModel(size: size[1]),
//   SizeModel(size: size[2]),
//   SizeModel(size: size[3]),
//   SizeModel(size: size[4]),
//   SizeModel(size: size[5]),
//   SizeModel(size: size[6]),
//   SizeModel(size: size[7]),
// ];
