
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockapp/provider/data_provider.dart';
import 'package:stockapp/widgets/stock_widget.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 90),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: CircleAvatar(
              child: Icon(Icons.menu),
              backgroundColor: Colors.black,
            ),
            actions: [
              CircleAvatar(
                child: Icon(Icons.person),
                radius: 20,
                backgroundColor: Colors.black,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 7,left: 17,right: 17),
        child: Consumer(
          builder: (context, ref, child){
            return ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF232526),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  width: double.infinity,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Better Way\nTo Invest",style: TextStyle(
                        color: Colors.white,
                        fontSize:27,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 5,
                      ),textAlign: TextAlign.center),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                            onPressed:(){},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "Invest Now",
                                style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                _buildPadding(label:'Popular Stocks'),
                StockWidget(isPopular: true),
                SizedBox(height: 17),
                _buildPadding(label: 'Following Stocks'),
                StockWidget(isPopular: false),
                SizedBox(height: 20)
              ],
            );
          },
        ),
      ),
    );
  }
  Padding _buildPadding({required String label}){
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(label, style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500
      ),),
    );
  }
}