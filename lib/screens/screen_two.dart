// import 'package:custom_top_navigator/custom_scaffold.dart';
// import 'package:custom_top_navigator/custom_top_navigator.dart';
// import 'package:flutter/material.dart';
// class MyHomePage extends StatefulWidget {
//   MyHomePage(Key? key, this.title) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final List<Widget> _children = [
//     const Page1(),
//     const Page2(),
//     const Page3(),
//   ];
//   Widget _page = const Page1();
//   int _currentIndex = 0;
//
//   GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     bottomNavigationBar: BottomNavigationBar(
//   //       items: _items,
//   //       onTap: (index) {
//
//   //         navigatorKey.currentState.maybePop();
//   //         setState(() => _page = _children[index]);
//   //         _currentIndex = index;
//   //       },
//   //       currentIndex: _currentIndex,
//   //     ),
//   //     body: CustomNavigator(
//   //       navigatorKey: navigatorKey,
//   //       home: _page,
//   //       pageRoute: PageRoutes.materialPageRoute,
//   //     ),
//   //   );
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       scaffold: Scaffold(
//         bottomNavigationBar: BottomNavigationBar(items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.looks_one),
//             label:'Page1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.looks_two),
//             label: 'Page2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.looks_3),
//             label: 'Page3',
//           ),
//         ],
//         ),
//       ),
//       children: const <Widget>[
//         Page1(),
//         Page2(),
//         Page3(),
//       ],
//
//       onItemTap: (index) {},
//     );
//   }
// }
//
//
// class CustomNavigatorHomePage extends StatefulWidget {
//   const CustomNavigatorHomePage(Key key, this.title) : super(key: key);
//
//   final String title;
//
//   @override
//   _CustomNavigatorHomePageState createState() => _CustomNavigatorHomePageState();
// }
//
// class _CustomNavigatorHomePageState extends State<CustomNavigatorHomePage> {
//   final List<Widget> _children = [
//     const Page1(),
//     const Page2(),
//     const Page3(),
//   ];
//   Widget _page = const Page1();
//   int _currentIndex = 0;
//
//   GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: _items,
//         onTap: (index) {
//           navigatorKey.currentState?.maybePop();
//           setState(() => _page = _children[index]);
//           _currentIndex = index;
//         },
//         currentIndex: _currentIndex,
//       ),
//       body: CustomNavigator(
//         navigatorKey: navigatorKey,
//         home: _page,
//         pageRoute: PageRoutes.materialPageRoute,
//       ),
//     );
//   }
//   final _items = [
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.looks_one),
//       label:'Page1',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.looks_two),
//       label:'Page2',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.looks_3),
//       label:'Page3',
//     ),
//   ];
// }
//
//
//
// class Page1 extends StatefulWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   _Page1State createState() => _Page1State();
// }
//
// class _Page1State extends State<Page1>  with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return SafeArea(child: Scaffold(
//         appBar: AppBar(
//             title: const Text("Page 1"),
//             actions:<Widget>[
//               IconButton(icon: const Icon(Icons.ac_unit), onPressed: (){
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                         const ListViewPage()));
//
//               })
//             ]
//         ),
//         body: Align(
//             alignment: Alignment.center,
//             child: ElevatedButton(onPressed: (){
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) =>
//                       const ListViewPage()));
//             }, child: const Text("Switch Page - Subscribe")))
//     ));
//   }
//
//   @override
//   bool get wantKeepAlive => true;
// }
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//         appBar: AppBar(
//             title: const Text("Page 2"),
//             actions:<Widget>[
//               IconButton(icon: const Icon(Icons.ac_unit), onPressed: (){
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                         const Page2()));
//
//               })
//             ]
//         ),
//         body: Align(
//             alignment: Alignment.center,
//             child: ElevatedButton(onPressed: (){
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) =>
//                       const ListViewPage()));
//             }, child: const Text("Switch Page - Leave a Like")))
//     ));
//   }
// }
//
// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//         appBar: AppBar(
//             title: const Text("Page 3"),
//             actions:<Widget>[
//               IconButton(icon: const Icon(Icons.ac_unit), onPressed: (){
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                         const Page2()));
//
//               })
//             ]
//         ),
//         body: Align(
//             alignment: Alignment.center,
//             child: ElevatedButton(onPressed: (){
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) =>
//                       const ListViewPage()));
//             }, child: const Text("Switch Page - Comment")))
//     ));
//   }
// }
//
// class ListViewPage extends StatelessWidget {
//   const ListViewPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Infinite List"),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return ListTile(leading: Text("$index"), title: Text("Number $index"));
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(child: Text('Search'))
          ],
        ),
      ),
    );
  }
}
