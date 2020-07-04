import 'package:card_app/Model.dart';
import 'package:card_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Furniture App',
              home: MainPage(),
            );
          },
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Order List",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          height:SizeConfig.heightMultiplier*100,
          width: SizeConfig.widthMultiplier*100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(margin:EdgeInsets.only(left: 10,top: 35),child: Icon(Icons.arrow_back)),
              Container(margin:EdgeInsets.only(left: 20,top: 38),child: Text('Current Orders',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold) ,)),
              Expanded(child:Container(margin:EdgeInsets.only(top: 20),child: ListItem(),),
              ),
            ],

          ),
        ),
      )),
    );
  }
}

class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<Demo> _productlist=[

    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'ABC Department',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: true,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'ABC Department',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
    Demo(productName:'New Mini Mart',time:'15-Mar-2020 - 13.48.15',paymentMethod: 'COD',status: false,price: '200 USD',picture:'https://i.pinimg.com/236x/68/58/56/6858569f998963ab408fd65e83639b7a.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Container(
          width: SizeConfig.widthMultiplier*100,

          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(_productlist[index].time),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: SizeConfig.textMultiplier*5.7034,
                                height: 50.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(_productlist[index].picture, fit: BoxFit.cover,),
                                ),
                              ),

                              SizedBox(width: 10.0,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    _productlist[index].productName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10.0,),
                                  Row(
                                    children: <Widget>[
                                      Text("Total order value:", style: TextStyle(color: Colors.grey),),
                                      SizedBox(width: 5.0,),
                                      Text(_productlist[index].price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("Payment method:", style: TextStyle(color: Colors.grey),),
                                      SizedBox(width: 5.0,),
                                      Text(_productlist[index].paymentMethod, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            // In Progress button
                            SizedBox(
                              width: 140.0,
                              child: FlatButton(
                                onPressed: () {},
                                color: _productlist[index].status ? Colors.green : Colors.amber,
                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Text(_productlist[index].status ?"Order Ready":"In Progress", style: TextStyle(color: Colors.white,),),
                              ),
                            ),
                            // View Order List button
                            SizedBox(
                              width: 140.0,
                              child: FlatButton(
                                onPressed: () {},
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Text("View Order List", style: TextStyle(color: Colors.white,),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
          ),
        ),
    );
  }
}

