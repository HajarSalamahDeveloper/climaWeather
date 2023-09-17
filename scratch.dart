void main() {
  performTasks();
}

void performTasks() async {
  task1();
  //print(task2());
  String re2 = await task2();
  task3(re2);
}

void task1() {
  //String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  String result = 'non';

  Duration threeSeconds = const Duration(seconds: 3);
  //sleep(threeSeconds);
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Result) {
  //String result = 'task 3 data';
  print('Task 3 complete with $task2Result');
}
