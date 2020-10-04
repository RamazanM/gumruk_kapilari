import 'package:flutter/material.dart';
import 'showImage.dart';
class MainActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gümrük Kapıları")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MyButton("BG->TR",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowImage("http://www.trakyagumruk.gov.tr/canli_trakya_gtb/kapikule/kapikule_images/kapikule_kamera1/1.jpg")));
            }),
            MyButton("TR->BG",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowImage("http://www.trakyagumruk.gov.tr/canli_trakya_gtb/kapikule/kapikule_images/kapikule_kamera2/1.jpg")));
            }),
            MyButton("GR->TR",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowImage("http://www.trakyagumruk.gov.tr/canli_trakya_gtb/pazarkule/pazarkule_images/pazarkule_kamera2/1.jpg")));
            }),
            MyButton("TR->GR",() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowImage("http://www.trakyagumruk.gov.tr/canli_trakya_gtb/pazarkule/pazarkule_images/pazarkule_kamera1/1.jpg")));
            })
          ],
        ),
      ),
    );
  }
}


class MyButton extends StatelessWidget{
  Function _func;
  String _txt;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:_func ,
      child: Text(this._txt,style: TextStyle(fontSize: 42.0),),
    color:Colors.red ,);
  }

  MyButton(String text,Function function){
    this._func=function;
    this._txt=text;
  }

}