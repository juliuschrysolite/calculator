import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController num1Controller =TextEditingController();
  TextEditingController num2Controller =TextEditingController();
  double answer =0;
  add(){
    double num1 =double.parse(num1Controller.text);
    double num2=double.parse(num2Controller.text);
    setState(() {
      answer =num1+num2;
    });
  }
  subtract(){
    double num1 =double.parse(num1Controller.text);
    double num2=double.parse(num2Controller.text);
    setState(() {
      answer =num1-num2;
    });
  }
 
  multiply(){
    double num1 =double.parse(num1Controller.text);
    double num2=double.parse(num2Controller.text);
    setState(() {
      answer =num1*num2;
    });
  }
  
  divide(){
    double num1 =double.parse(num1Controller.text);
    double num2=double.parse(num2Controller.text);
    setState(() {
      answer =num1/num2;
    });
  }
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator App'),
      centerTitle: true,
      elevation: 5,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children:[
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                width: 150,
                child: TextField(
                  controller: num1Controller,
                  keyboardType:TextInputType.number,)),
                const SizedBox(width: 50,),
                  SizedBox(
                  height: 60,
                width: 150,
                child: TextField(
                  controller: num2Controller,
                  keyboardType:TextInputType.number,)),
                ],),
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.black,
                  child:  Center(child: Text('$answer',style: const TextStyle(color:  Colors.white,fontSize: 50),),),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child:  ElevatedButton(onPressed: (){
                    add();
                  },  child:  const Text('ADD +',style: TextStyle(fontSize: 25),),),),
                    const SizedBox(height:  20,),
                  SizedBox(
                  width: double.infinity,
                  height: 60,
                  child:  ElevatedButton(onPressed: (){
                    subtract();
                  },  child: const Text('SUBTRACT _',style: TextStyle(fontSize: 25),),),),
                  const SizedBox(height:  20,),
                  SizedBox(
                  width: double.infinity,
                  height: 60,
                  child:  ElevatedButton(onPressed: (){
                    multiply();
                  },  child: const Text('MULTIPLY *',style: TextStyle(fontSize: 25),),),),
                  const SizedBox(height:  20,),
                  SizedBox(
                  width: double.infinity,
                  height: 60,
                  child:  ElevatedButton(onPressed: (){
                    divide();
                  },  child: const Text('DIVIDE /',style: TextStyle(fontSize: 25),),),),
                  const SizedBox(height:  20,),
          ],
        ),
      ),);
  }
}