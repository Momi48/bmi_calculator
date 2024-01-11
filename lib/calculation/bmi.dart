import 'package:bmi_calculator/Global_variables/variables.dart';
import 'package:bmi_calculator/calculation/result.dart';
import 'package:bmi_calculator/resuable_widgets/age_containers.dart';
import 'package:bmi_calculator/resuable_widgets/gender_containers.dart';
import 'package:bmi_calculator/Global_variables/global_colors.dart';
import 'package:bmi_calculator/resuable_widgets/weight_container.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int ageIncrement = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    String title = index == 0 ? 'Male' : 'Female';
                    IconData icon = index == 0
                        ? Icons.male_outlined
                        : Icons.female_outlined;

                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: GenderContainer(
                            title: title,
                            icons: icon,
                            color:
                                selected == index ? purpleColor : greyColor));
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              color: greyColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '$current cm',
                      style: const TextStyle(fontSize: 45, color: Colors.white),
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                          trackHeight: 2,
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 0.0)),
                      child: Slider(
                        activeColor: purpleColor,

                        value: current,
                        //callback function
                        onChanged: (value) {
                          setState(() {});

                          current = double.parse(value.toStringAsFixed(2));
                          
                        },

                        min: 0.0,
                        max: 500.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             Row(
              children: [
                WeightContainer(
                  title: 'Weight',
                 
                ),
              const  AgeContainer(),
             const   SizedBox(
                  width: 20,
                ),
                
              ],
            ),
           const SizedBox(
              height: 30,
            ),
           
            Center(
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(12),
                  color: purpleColor,
                ),
                child: GestureDetector(
                  child: const Center(child:  Text('Calculate',style: TextStyle(fontSize: 35,color: Colors.white),)),
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Result()));
                    calculationResult();
                    });
                  }
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
