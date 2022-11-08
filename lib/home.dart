import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/model/todot.dart';
import '../widgets/todo.dart';


class HomePage extends StatefulWidget {
    HomePage({super.key});

    

  final TodoList = Todothe.Dolist();  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBarD(),
body: Container(
  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  child: Column(children: [
    searchWidgetD(),

Expanded(child: ListView(
  children: [
    Container(
      margin: EdgeInsets.only(top: 50, bottom: 20),
      child:Text("All todaos", style: TextStyle(
        fontSize: 30,
        fontWeight:FontWeight.w500,
      ),),
    ),
    for(Todothe todo in Dolist)
  TODOLIST(todo: todo,),
  ],
),

)

  ]),
),

    );
  }

  AppBar AppBarD() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,

      iconTheme:IconThemeData(
        color: Colors.black,
      ) ,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu,
          color: tdBlack,
          size: 30,),
          Container(
            
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/image1.jpeg'),
            ),
          )
        ],
      ),

    );
  }
}

class searchWidgetD extends StatelessWidget {
  const searchWidgetD({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              
      ),
      child: TextFormField(decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5),
        prefixIcon: Icon(
          Icons.search,color: Colors.black, size: 20,
       
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: 20 , maxWidth: 25),
        border: InputBorder.none,
        hintText: "Search",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 20,
        )
      )),

    );
  }
}