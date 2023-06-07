import 'package:flutter/material.dart';
import 'package:learn_to_earn/screens/screen_three.dart';
// import 'package:learn_to_earn/screens/screen_one.dart';
// import 'package:learn_to_earn/screens/screen_three.dart';
// import 'package:learn_to_earn/screens/screen_two.dart';
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   MainScreenState createState() => MainScreenState();
// }
//
// class MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;
//
//
//   final List<Widget> _pages = [
//     const Page1(),
//     const Page2(),
//     const Page3(),
//   ];
//
//   void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Persistent Bottom Nav Bar')),
//       body: Stack(
//         children: _pages
//             .asMap()
//             .map((index, page) => MapEntry(
//             index,
//             Offstage(
//               offstage: _currentIndex != index,
//               child: page,
//             )))
//             .values
//             .toList(),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTabTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
class CompanyStocks {
  String name;
  double price;

  CompanyStocks({required this.name,required this.price});
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  List stocksList = [
    CompanyStocks(name: "Facebook", price: 339.1),
    CompanyStocks(name: "A10 NETWORKS INC.", price: 10.34),
    CompanyStocks(name: "Intel Corp", price: 56.96),
    CompanyStocks(name: "HP Inc", price: 32.43),
    CompanyStocks(name: "Advanced Micro Devices Inc.", price: 77.44),
    CompanyStocks(name: "Apple Inc", price: 133.98),
    CompanyStocks(name: "Amazon.com, Inc.", price: 3505.44),
    CompanyStocks(name: "Microsoft Corporation", price: 265.51),
    CompanyStocks(name: "Facebook", price: 339.1),
    CompanyStocks(name: "A10 NETWORKS INC.", price: 10.34),
    CompanyStocks(name: "Intel Corp", price: 56.96),
    CompanyStocks(name: "HP Inc", price: 32.43),
    CompanyStocks(name: "Advanced Micro Devices Inc.", price: 77.44),
    CompanyStocks(name: "Apple Inc", price: 133.98),
    CompanyStocks(name: "Amazon.com, Inc.", price: 3505.44),
    CompanyStocks(name: "Microsoft Corporation", price: 265.51)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text("List View Builder"),
        ),
        body: ListView.builder(
          itemCount: stocksList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      const Page3()
                    ));
                  },
                  title: Text(
                    stocksList[index].name,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  leading: CircleAvatar(
                    child: Text(
                      stocksList[index].name[0],
                      style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Text("\$ ${stocksList[index].price}"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}