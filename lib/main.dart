import 'package:flutter/material.dart';
void main() => runApp(const LoveLifeApp());
class LoveLifeApp extends StatelessWidget {
  const LoveLifeApp({super.key});
  @override Widget build(BuildContext context) => MaterialApp(title: 'LOVE Life', debugShowCheckedModeBanner: false, theme: ThemeData.dark(useMaterial3:true).copyWith(scaffoldBackgroundColor: const Color(0xFF101020), colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF2385), brightness: Brightness.dark)), home: const LoveHome());
}
class LoveHome extends StatefulWidget { const LoveHome({super.key}); @override State<LoveHome> createState()=>_LoveHomeState(); }
class _LoveHomeState extends State<LoveHome> {
  int tab=0;
  final titles=['Discover Live','Video & Audio Live','Social Games','Gifts & Wallet','Profile'];
  final options=[['Riya • LIVE','Nisha • LIVE','Pooja • LIVE','Kavya • LIVE'],['Video Live Rooms','Audio Live Rooms','Request to Speak'],['Lucky Spin','Ludo-style Game','Fruit Match'],['Gift Store','Coin Packages','Transactions'],['My Profile','Agent Panel','Admin Panel','Super Admin Panel']];
  void preview(String title) => showDialog<void>(context: context, builder:(context)=>AlertDialog(title:Text(title),content:const Text('UI placeholder only. Backend and SDK will be added later.'),actions:[TextButton(onPressed:()=>Navigator.pop(context),child:const Text('Close'))]));
  @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('💗 LOVE Life'),actions:[IconButton(onPressed:()=>preview('Search'),icon:const Icon(Icons.search))]),body:ListView(padding:const EdgeInsets.all(16),children:[Text(titles[tab],style:const TextStyle(fontSize:26,fontWeight:FontWeight.bold)),const SizedBox(height:8),const Text('Phase 1 • Design prototype, not a real live session',style:TextStyle(color:Colors.white60)),const SizedBox(height:20),...options[tab].map((item)=>Card(child:ListTile(contentPadding:const EdgeInsets.all(18),leading:const CircleAvatar(backgroundColor:Color(0xFFFF2385),child:Icon(Icons.favorite)),title:Text(item),trailing:const Icon(Icons.arrow_forward_ios),onTap:()=>preview(item))))]),bottomNavigationBar:NavigationBar(selectedIndex:tab,onDestinationSelected:(n)=>setState(()=>tab=n),destinations:const [NavigationDestination(icon:Icon(Icons.home),label:'Home'),NavigationDestination(icon:Icon(Icons.videocam),label:'Live'),NavigationDestination(icon:Icon(Icons.sports_esports),label:'Games'),NavigationDestination(icon:Icon(Icons.wallet),label:'Wallet'),NavigationDestination(icon:Icon(Icons.person),label:'Profile')]));
}
