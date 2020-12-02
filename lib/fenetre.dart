import 'package:flutter/material.dart';

class Fenetre extends StatelessWidget
{
  List<Ranger> rangers;

  Fenetre()
  {

/*
    rangers.add(new Ranger(n1: '0',n2: '1',n3: '2',n4: '+',));
    rangers.add(new Ranger(n1: '3',n2: '4',n3: '5',n4: '-',));
    rangers.add(new Ranger(n1: '6',n2: '7',n3: '8',n4: 'x',));
*/
  }

  @override
  Widget build(BuildContext context) {
    print("creation");
    List<Ranger> rangers=new List<Ranger>(4);
    rangers[0]= new Ranger(n1: '1',n2: '2',n3: '3',n4: '+',);
    rangers[1]= new Ranger(n1: '4',n2: '5',n3: '6',n4: '-',);
    rangers[2]= new Ranger(n1: '7',n2: '8',n3: '9',n4: 'x',);
    rangers[3]= new Ranger(n1: '0',n2: ',',n3: '=',n4: '/',);
    print("fin de ....");
    return
      Container(
          alignment: Alignment.center,
          child:
          Column(
            children: <Widget>[
              Center(
                  child:
                  Container(
                    color: Colors.black,
                    width: 600,
                    height: 50,
                    child:
                    Center(child:Text(
                      "Ecran",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 30,color: Colors.yellowAccent),

                    ),),
                  )
              ),
              Center(
                  child: rangers[0]
              ),
              Center(
                  child: rangers[1]
              ),
              Center(
                  child: rangers[2]
              ),
              Center(
                  child: rangers[3]
              )
            ],
          ));
  }
}

class Ranger extends StatelessWidget
{
  String n1;
  String n2;
  String n3;
  String n4;
  double w;
  double h;
  double marge;
  double _size;
  Ranger({this.n1,this.n2,this.n3,this.n4}){
    this.w=100; this.h=80;this.marge=5; this._size=32;
  }
  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: <Widget>[
        Expanded(child: Center(child:
        Container(
          color: Colors.orangeAccent,
          margin: EdgeInsets.all(this.marge),
          width: this.w,
          height: this.h,
          child:
          Center(
            child:Text(this.n1,textDirection: TextDirection.ltr,style: TextStyle(fontSize: this._size),),
          ),
        )
        )
        ),
        Expanded(child: Center(child:
        Container(
          color: Colors.blueAccent,
          margin: EdgeInsets.all(this.marge),
          width: this.w,
          height: this.h,
          child:
          Center(
            child:Text(this.n2,textDirection: TextDirection.ltr,style: TextStyle(fontSize: this._size),),
          ),
        )
        )
        ),
        Expanded(child: Center(child:
        Container(
          color: Colors.orangeAccent,
          margin: EdgeInsets.all(this.marge),
          width: this.w,
          height: this.h,
          child:
          Center(
            child:Text(this.n3,textDirection: TextDirection.ltr,style: TextStyle(fontSize: this._size),),
          ),
        )
        )
        ),
        Expanded(child: Center(child:
        Container(
          color: Colors.blueAccent,
          margin: EdgeInsets.all(this.marge),
          width: this.w,
          height: this.h,
          child:
          Center(
            child:Text(this.n4,textDirection: TextDirection.ltr,style: TextStyle(fontSize: this._size),),
          ),
        )
        )
        ),
      ],
    );
  }
}
