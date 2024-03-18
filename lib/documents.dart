import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'style.dart';
import 'navbar.dart';


class MyDocuments extends StatefulWidget {
  const MyDocuments({super.key});

  @override
  State<MyDocuments> createState() => _MyDocumentsState();
}

class _MyDocumentsState extends State<MyDocuments> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery1 = MediaQuery.of(context);
    var names =['Aadhar Card' , 'Pan Card' , 'Passport' , 'Visa' , 'Tickets','Driving Licence','Voter Id'];
    return MaterialApp(
     home: Scaffold(
       drawer: NavBar(),
       appBar: AppBar(
         title : Text ('YATRA'),
       ),
       body :
       ListView.separated(itemBuilder: (context, index) {
         return ListTile(
           leading: Text('${index+1}',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black),),
           title: Text(names[index],style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black),),
          // subtitle: Text('Number') ,
           trailing:Icon(Icons.add_a_photo) ,
         );
       },
        itemCount: names.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context , index) {
        return const Divider(
        height: 20, thickness: 1,
        );
        },
      ),
     ),
    );
  }
}
