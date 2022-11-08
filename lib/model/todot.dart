class Todo{
  String? id;
  String?  todoText;
  bool? isDone;
  

Todo({
  required this.id,
  required this.todoText,
  this.isDone=false,

});



 static List<Todo> TOdOList (){
  return[
Todo(id: '01', todoText: "Check your mail" , isDone: true),
Todo(id: '02', todoText: "Attend the meeting" , isDone: true),

  ];

 }
}