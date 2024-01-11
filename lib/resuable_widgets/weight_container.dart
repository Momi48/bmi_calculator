import 'package:bmi_calculator/Global_variables/global_colors.dart';
import 'package:bmi_calculator/Global_variables/variables.dart';
import 'package:flutter/material.dart';

class WeightContainer extends StatefulWidget {
  final  String title;
   
   WeightContainer({super.key,required this.title,});

  @override
  State<WeightContainer> createState() => _WeightContainerState();
}

class _WeightContainerState extends State<WeightContainer> {

  
  
  @override
  Widget build(BuildContext context) {
    return  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                     width: 170,
                     height: 150,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyColor,
                     ),
                     child: Column(
                      children: [
                        Text(widget.title,style: const  TextStyle(color: textColor,fontSize: 32),),
                         Text('$increment',style: const TextStyle(color: Colors.white,fontSize: 35),),
                         Row(
                          children: [
                           Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: containerColor,
                            shape: BoxShape.circle
                          ),
                          child: IconButton(
                            onPressed: (){
                               setState(() {
                                if(increment>0){
                                  increment--;
                                }
                              });
                          }, icon:const Icon(Icons.remove,size: 32,color: Colors.white,)),
                         ),
                           Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: containerColor,
                            shape: BoxShape.circle
                          ),
                          child: IconButton(
                            onPressed: (){
                               setState(() {
                                increment++;
                               });
                          }, icon:const Icon(Icons.add,size: 32,color: Colors.white,)),
                         )
                          ],
                         ),
                        
                      ],
                     ),
                   );
  }
}