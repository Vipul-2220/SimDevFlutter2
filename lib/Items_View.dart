// import 'package:flutter/material.dart';
// import 'package:sim_dev_task2/Items.dart';
// import 'package:sim_dev_task2/showItems.dart';
//
// class ItemsView extends StatefulWidget {
//   const ItemsView({Key? key}) : super(key: key);
//
//   @override
//   _ItemsViewState createState() => _ItemsViewState();
// }
//
// class _ItemsViewState extends State<ItemsView> {
//   List<Items> loadedProducts = [
//     Items(
//       itemName: 'Men\'s Jacket',
//       price: 4699,
//       originalPrice: 5699,
//       url: 'images/items/pumaHoodie1.jpg',
//       url1: 'images/items/pumaHoodie3.jpg',
//       url2: 'images/items/pumaHoodie4.jpg',
//       like: false,
//     ),
//     Items(
//       itemName: 'Louis Phillipe\n Men\'s Shirt',
//       price: 1899,
//       originalPrice: 2499,
//       url: 'images/items/menshirt.jpg',
//       url1: 'images/items/menshirt2.jpg',
//       url2: 'images/items/menshirt3.jpg',
//       like: false,
//     ),
//     Items(
//       itemName: 'Van Heusen\n Men\'s Chinos',
//       price: 1999,
//       originalPrice: 3599,
//       url: 'images/items/menchinos.jpg',
//       url1: 'images/items/menchinos2.jpg',
//       url2: 'images/items/menchinos3.jpg',
//       like: false,
//     ),
//     Items(
//       itemName: 'Women\'s Jacket',
//       price: 7699,
//       originalPrice: 11999,
//       url: 'images/items/womenjacket1.jpg',
//       url1: 'images/items/womenjacket2.jpg',
//       url2: 'images/items/womenjacket3.jpg',
//       like: false,
//     ),
//     Items(
//       itemName: 'Women\'s Shirt',
//       price: 1499,
//       originalPrice: 2899,
//       url: 'images/items/womenshirt.jpg',
//       url1: 'images/items/womenshirt2.jpg',
//       url2: 'images/items/womenshirt3.jpg',
//       like: false,
//     ),
//     Items(
//       itemName: 'Women\'s Jeans',
//       price: 2699,
//       originalPrice: 3599,
//       url: 'images/items/womenjeans.jpg',
//       url1: 'images/items/womenjeans2.jpg',
//       url2: 'images/items/womenjeans3.jpg',
//       like: false,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: loadedProducts.length,
//       scrollDirection: Axis.vertical,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 10,
//             mainAxisExtent: 10),
//         itemBuilder: (BuildContext context, int index) {
//           return showItems(
//               loadedProducts[index].itemName,
//               loadedProducts[index].price,
//               loadedProducts[index].originalPrice,
//               loadedProducts[index].url,
//               loadedProducts[index].url1,
//               loadedProducts[index].url2,
//               loadedProducts[index].like);
//         });
//   }
// }
