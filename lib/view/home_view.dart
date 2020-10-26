import 'package:flutter/material.dart';
import 'file:///D:/My%20Projects/Test%20Job/test_app/lib/color_bloc/bloc.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _colorBloc = ColorBloc();
    
    return StreamBuilder(
      stream: _colorBloc.color,
      initialData: Color(0xffffffff),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Scaffold(
          backgroundColor: snapshot.data,
          body: InkWell(
            onTap: (){
              _colorBloc.colorEventSink.add(ChangeColor());
            },
            onLongPress: (){
              _colorBloc.colorEventSink.add(ChangeColorToDefault());
            },
            child: Center(
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Hey",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 80,
                            height: 1.1,
                          ),
                        ),
                        Text(
                          'there',
                          style: TextStyle(
                            fontSize: 22,
                            height: 1.1,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:(25 / 4.5),bottom: (15 / 4.5)),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromRGBO(255, 41, 90, 1),
                              Color.fromRGBO(232, 91, 10, 1)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
