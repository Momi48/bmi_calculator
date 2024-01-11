import 'package:bmi_calculator/Global_variables/global_colors.dart';
import 'package:bmi_calculator/Global_variables/variables.dart';
import 'package:flutter/material.dart';


class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Your Result',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 40
          ),),
        
        backgroundColor: backgroundColor,
      ),
      body:  Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 8.0),
        child:  Column(
          children: [
            Card(
              color: greyColor,
              child: Column(
                children: [
              const    SizedBox(height: 50,),  
              Center(
                child: 
                Text(bmi <= 18.5 ? 'Underwieght' : bmi >18.5 && bmi <=24.9 ? 'Normal Weight ': bmi >25 && bmi <=29 ?'OverWeight ' : 'Obese(Too much)'  ,
                style: const TextStyle(
                  color: Colors.green,fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),
              ),
              ),
             const SizedBox(
                height: 50,
              ),
              Text(bmi.toStringAsFixed(2),
              style: const TextStyle(fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold
              ),
              ),
             const SizedBox(height: 70,),
              Text(bmi >25 ? 'Your have higher than normal\n body weight. Try to exercise more' : bmi <18.5 ? 'You weight is too low you need\n to eat alot  and exercise more ' : 'You have a perfect Weight Keep up ',
              style: const TextStyle(color: Colors.white,
              fontSize: 18
              ),
              textAlign: TextAlign.center,
              ),
            const  SizedBox(height: 50,),
                ],
              ),
            ),
           const SizedBox(height: 40,),
            Container(
              height: 60,
              width: 350,
              decoration:  BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.circular(13)
              ),
                 child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  
                  },
                  child:const Center(child:  Text('Re Calculate',
                  style: TextStyle(color: Colors.white,
                  fontSize: 30
                  ),
                  )
                  ),
                 )
            )
          ],
        )
        
        ),
        
      );
      
    
  }
}