void main(){
  performTasks();
}

void performTasks() async{
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
   String result1 = 'task 1 data';
   print('task 1 complete');
}

Future<String> task2() async{
  Duration threeSec = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSec, (){
    result = 'task 2 data';
    print('task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result3 = 'task 3 data';
  print('task 3 complete with $task2Data');
}
