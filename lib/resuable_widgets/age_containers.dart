import 'package:bmi_calculator/Global_variables/global_colors.dart';
import 'package:bmi_calculator/Global_variables/variables.dart';
import 'package:flutter/material.dart';
class AgeContainer extends StatefulWidget {
  const AgeContainer({super.key});

  @override
  State<AgeContainer> createState() => _AgeContainerState();
}

class _AgeContainerState extends State<AgeContainer> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                     width: 170,
                     height: 150,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyColor,
                     ),
                     child: Column(
                      children: [
                      const  Text('Age',style:   TextStyle(color: textColor,fontSize: 32),),
                         Text('$ageIncrement',style: const TextStyle(color: Colors.white,fontSize: 35),),
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
                                if(ageIncrement>0){
                                  ageIncrement--;
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
                               ageIncrement++;
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