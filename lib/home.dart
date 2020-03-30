import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=>new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29D091),
        currentIndex:_bottomNavIndex,
        onTap: (int index){
          setState(() {
            _bottomNavIndex=index;
          });
        },
        items:[
          new BottomNavigationBarItem(
              title:new Text(''),
              icon: new Icon(Icons.home)),

          new BottomNavigationBarItem(
              title:new Text(''),
              icon: new Icon(Icons.local_offer)),

          new BottomNavigationBarItem(
              title:new Text(''),
              icon: new Icon(Icons.message)),

          new BottomNavigationBarItem(
              title:new Text(''),
              icon: new Icon(Icons.notifications))

        ],
      ),
      appBar:new AppBar(
        backgroundColor:Colors.transparent,
        elevation:0.0,
        iconTheme: new IconThemeData(color:Color(0xFF18D191)),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      //color:const Color(0xFF00FF00),
      child :new ListView(
        //color:const Color(0xFF00FF00),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: new Container(
              //  color:const Color(0xFF00FF00),
                child: new Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        new Text("Explore",style:new TextStyle(fontSize:30.0),textAlign: TextAlign.left,),
                      ],
                    ),

                    new SizedBox(
                      height: 10.0,
                    ),

                    Row(
                      children: <Widget>[
                        new Expanded(
                            child :Padding(
                              padding: const EdgeInsets.only(right:5.0),
                              child: new Container(
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(5.0),
                                    color: Color(0xFFFD7384)

                                ),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Icon(Icons.drive_eta,color: Colors.white,),
                                    new Text("Motor",style: new TextStyle(color:Colors.white),),
                                  ],
                                ),
                              ),
                            )
                        ),
                        new Expanded(
                            child :Padding(
                              padding: const EdgeInsets.only(bottom:2.5,right: 2.5),
                              child: new Container(
                                  height: 100.0,
                                  child: Column(
                                      children:<Widget>[
                                        Expanded(
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                                color:Color(0xFF28D093),
                                                borderRadius: new BorderRadius.circular(5.0)
                                            ),
                                            child: new Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(right:8.0),
                                                  child: new Icon(Icons.local_offer,color: Colors.white,),
                                                ),
                                                new Text('Classified',style: new TextStyle(color:Colors.white),)

                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top:2.5,right: 2.5),
                                            child: new Container(
                                              decoration: new BoxDecoration(
                                                  color:Color(0xFFFC784D),
                                                  borderRadius: new BorderRadius.circular(5.0)
                                              ),
                                              child: new Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                     Padding(
                                                    padding: const EdgeInsets.only(right:8.0),
                                                    child: new Icon(Icons.beenhere,color: Colors.white,),
                                                  ),
                                                  new Text('Service',style: new TextStyle(color:Colors.white),)

                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                  )
                              ),
                            )
                        ),
                        new Expanded(
                            child :new Container(
                                height: 100.0,
                                child: Column(
                                    children:<Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:2.5,bottom: 2.5),
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                                color:Color(0xFF53CED8),
                                                borderRadius: new BorderRadius.circular(5.0)
                                            ),
                                            child: new Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(right:8.0),
                                                  child: new Icon(Icons.account_balance,color: Colors.white,),
                                                ),
                                                new Text('Properties',style: new TextStyle(color:Colors.white),)

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:2.5,left:2.5),
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                                color:Color(0xFFF1BD69),
                                                borderRadius: new BorderRadius.circular(5.0)
                                            ),
                                            child: new Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(right:8.0),
                                                  child: new Icon(Icons.art_track,color: Colors.white,),
                                                ),
                                                new Text('Jobs',style: new TextStyle(color:Colors.white),)

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]
                                )
                            )
                        ),
                      ],
                    ),

                    new SizedBox(
                      height: 10.0,
                    ),

                    Row(
                      children:<Widget>[
                        new Expanded(
                            child:new Text("Popular Trending",style:new TextStyle(fontSize:18.0))
                        ),//Expanded
                        new Expanded(
                            child:new Text("View All",style:new TextStyle(color:Color(0xFF28D093)),textAlign:TextAlign.end,)
                        ),
                      ],
                    ),

                    new SizedBox(
                      height: 10.0,
                    ),

                    Row(
                      children:<Widget>[
                        new Expanded(
                          child:Container(
                            height:150.0,

                            child:new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image:new NetworkImage("http://s3.amazonaws.com/digitaltrends-uploads-prod/2016/11/Sony-PlayStation-4-Pro-0010.jpg"),
                                          fit:BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Play Station",style:new TextStyle(fontSize:16.0),textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),

                        new SizedBox(
                          width:5.0,
                        ),

                        new Expanded(
                          child:Container(
                            height:150.0,

                            child:new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image:new NetworkImage("http://www.hnosvalle.es/wp-content/uploads/2018/05/herrmanos-valle-joyeria6.jpg"),
                                          fit:BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Jewellery and Watches",style:new TextStyle(fontSize:16.0),textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),

                        new SizedBox(
                          width:5.0,
                        ),

                        new Expanded(
                          child:Container(
                            height:150.0,

                            child:new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image:new NetworkImage("https://www.tds-office.com/wp-content/uploads/2018/10/office-electronics-printers-copiers.jpg"),
                                          fit:BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Electronics",style:new TextStyle(fontSize:16.0),textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children:<Widget>[
                        new Expanded(
                            child:new Text("Featured Ads",style:new TextStyle(fontSize:18.0))
                        ),//Expanded
                        new Expanded(
                            child:new Text("View All",style:new TextStyle(color:Color(0xFF28D093)),textAlign:TextAlign.end,)
                        ),
                      ],
                    ),

                    new SizedBox(
                      height: 10.0,
                    ),

                    Row(
                      children:<Widget>[
                        new Expanded(
                          child:Container(
                            height:150.0,

                            child:new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image:new NetworkImage("https://www.seminovoscarros.com.br/wp-content/uploads/2016/11/seminovos-3-.jpg"),
                                          fit:BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Motor",style:new TextStyle(fontSize:16.0),textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),

                        new SizedBox(
                          width:5.0,
                        ),

                        new Expanded(
                          child:Container(
                            height:150.0,

                            child:new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image:new NetworkImage("https://www.rcboe.org/cms/lib010/GA01903614/Centricity/Domain/82/jobs.jpg"),
                                          fit:BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Jobs",style:new TextStyle(fontSize:16.0),textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),

                        new SizedBox(
                          width:5.0,
                        ),

                        new Expanded(
                          child:Container(
                            height:150.0,

                            child:new Column(
                              children: <Widget>[
                                new Container(
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.circular(5.0),
                                      image: new DecorationImage(
                                          image:new NetworkImage("https://storage.googleapis.com/daily-wp-uploads/1/2015/01/CES-Gadgets.jpg"),
                                          fit:BoxFit.cover
                                      )
                                  ),
                                ),
                                new Text("Electronics",style:new TextStyle(fontSize:16.0),textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}