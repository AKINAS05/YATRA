import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yatra/app_styles.dart';
import 'style.dart';
class ThickContainer extends StatelessWidget{
  const ThickContainer({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return  Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5,color: Colors.white),
      ),
    );
  }
}
class TicketView extends StatelessWidget {
  const TicketView({Key?key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    var mediaQuery1 = MediaQuery.of(context);
    return SizedBox(
      width: mediaQuery1.size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft:  Radius.circular(21),
                    topRight:Radius.circular(21), ),
              ),

              padding: const EdgeInsets.all(16) ,
              child: Column(
                children: [
                 Row(
                   children: [
                     Text("Delhi",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                    Expanded(child: Container(),),
                     ThickContainer(),
                    Expanded(child: Stack(
                      children: [
                        SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                         return  Flex(
                           direction: Axis.horizontal,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           mainAxisSize: MainAxisSize.max,
                           children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                             width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                             color : Colors.white,
                           ),),
                           )),

                         );
                        },
                        ),
                      ),
                       Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: Colors.white,),),),
                      ],
                    ),),


                     ThickContainer(),
                     const Spacer(),
                     Text("Mumbai",style: Styles.headlinestyle3.copyWith(color: Colors.white),),

                   ],
                 ) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     SizedBox(
                       width: 100, child: Text("Delhi",style: Styles.headlinestyle4.copyWith(color: Colors.white),),
                     ),
                      Text("5H 20M",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100, child: Text("Mumbai",style: Styles.headlinestyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color :const  Color(0xFFF37B67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 30,
                    child: DecoratedBox(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only( topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                      
                    )),
                  ),
                  Expanded(
                    child : Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context,BoxConstraints constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>
                                  SizedBox(
                                    width: 5, height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))
                          );
                        }
                      ),
                    ),
                  ),
                    SizedBox(
                      height: 20,
                      width: 30,
                      child: DecoratedBox(decoration: BoxDecoration(
                        borderRadius: BorderRadius.only( topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),

                      )),
                    ),


                ],
              ),
            ),
            Container(
              color :const  Color(0xFFF37B67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 30,
                    child: DecoratedBox(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only( topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),

                    )),
                  ),
                  Expanded(
                    child : Padding(
                      padding: const EdgeInsets.all(27.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 30,
                    child: DecoratedBox(decoration: BoxDecoration(
                      borderRadius: BorderRadius.only( topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),

                    )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("14 Oct",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                          SizedBox(height: mediaQuery1.size.height*0.02,),
                          Text("Date",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                        ],

                      ),
                      SizedBox(
                        width: mediaQuery1.size.width*0.18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("8:00 am",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                          SizedBox(height: mediaQuery1.size.height*0.02,),
                          Text("Departure time",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                        ],

                      ),
                      SizedBox(
                        width: mediaQuery1.size.width*0.18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("26",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                          SizedBox(height: mediaQuery1.size.height*0.02,),
                          Text("Number",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
                        ],

                      ),
                     // SizedBox(height: mediaQuery1.size.height*0.2,),
                    ],
                  ),



                ],
              ),

            /*  decoration: BoxDecoration(
                color :const  Color(0xFFF37B67),
                borderRadius: const BorderRadius.only(bottomLeft:  Radius.circular(21),
                  bottomRight:Radius.circular(21), ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                ],
              ),*/
            ),
          ],
        ),
      ),
    );
  }
}
