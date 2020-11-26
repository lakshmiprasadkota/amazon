
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 1,
          child: Scaffold(
               appBar: AppBar(
                 backgroundColor: Color(0xFF8eddda),
                 leading: Icon(Icons.menu ,size: 33, color: Colors.black,),
                 title: Image.asset("assests/images/3.png" , height: 50, width: 120,),
                 actions: [
                   Icon(Icons.mic_none , size: 30, color: Colors.black,),

                   SizedBox(width: 8, ),
                   Icon(Icons.shopping_cart , size: 30,color: Colors.black, ), SizedBox(width: 10,),
                 ],
                 bottom: TabBar(
                   tabs: [
                     TextField(
                       decoration: InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         prefixIcon: Icon(Icons.search ,size: 30, color: Colors.black,) ,
                         suffixIcon: Icon(Icons.camera_alt , size: 30, color: Colors.black,),
                         hintText: 'Search ',

                         enabledBorder: OutlineInputBorder(

                           borderRadius: BorderRadius.all(Radius.circular(5.0)),
                           borderSide: BorderSide(color: Colors.black26),

                         ),
                         isDense: true,
                       ),

                     ),
                   ],
                 ),

               ),
              body: TabBarView(
                children: [
                  BodyClass(),

                ],
              )

          ),
        )
    );
  }
}
class BodyClass extends StatelessWidget {
  List <IconData> image = [ Icons.surround_sound , Icons.settings_remote_sharp ,Icons.library_books_sharp,Icons.play_circle_outline_rounded,
    Icons.headset_mic_sharp, Icons.phonelink_sharp ,Icons.watch_sharp  ,Icons.shop,
    Icons.surround_sound , Icons.settings_remote_sharp ,Icons.library_books_sharp,Icons.play_circle_outline_rounded,
    Icons.surround_sound , Icons.settings_remote_sharp ,Icons.library_books_sharp,Icons.play_circle_outline_rounded,];
  List <String> Title = ["Echo & Alexa" , "Fire TVStick" , "Kindle E-Readers & eBooks" , "Amazon Prime Video"
  , "Mobile,Computers " , "Tv,Aplliances ,Electronics" ,"Men's Fashion " , "Women's fashion" ,
        "Echo & Alexa" , "Fire TVStick" , "Kindle E-Readers & eBooks" , "Amazon Prime Video",
    "Echo & Alexa" , "Fire TVStick" , "Kindle E-Readers & eBooks" , "Amazon Prime Video"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [


            ListView.builder(
              shrinkWrap: true,
              itemCount: image.length,
            itemBuilder: (context , index){
             return   ExploreItems(img: image[index],
             title: Title[index],);
            })

          ],
        ),
      ),
    );
  }
}

class ExploreItems extends StatefulWidget {
  ExploreItems({
   this.img , this.title
});
  final IconData img ; final  String title;
  @override
  _ExploreItemsState createState() => _ExploreItemsState();
}

class _ExploreItemsState extends State<ExploreItems> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child:
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(widget.img, size: 30,) , SizedBox(width: 10,),
                        Text(widget.title , style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  Container(child:
                    Icon(Icons.add),)
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              )

            ],
          ),
        ),

      ),
    );
  }
}


