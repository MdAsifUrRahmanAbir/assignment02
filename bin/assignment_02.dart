void main(List<String> arguments) {
  print('Call the method which you want to see!');
  number10();
}

///problem 1
void number01(){
/*
1.
Write a
dart program to create a new

list, add some elements (string), and print out the
collection.
 */


  List<String> list= ['name', 'uid', 'phone_number', 'bio'];
  for (var list in list) {
    print(list);
  }
}

/// problem 02
void number02(){
/*
2.
Write a
dart program to store five

student name in a list, now print the size of the list
then clear the list using

building method.
 */


  List<String> studentList= ['AAbir', 'Azad', 'Foysal', 'Rakib', 'Faisal'];
  for (var list in studentList) {  //printing name
    print(list);
  }
  print("Before clear length: ${studentList.length}");

  studentList.clear();    // clear and print
  print("After clear length: ${studentList.length}");
}

/// problem 03
void number03(){
  /*
3.
Make a
program to store the given

data to your list, [1,2,3], {‘id’:110,
‘name’:’your name’}, 35.2, [], {}, 1,

‘Hello flutter’, now print the size of your list.
Update at least two data,

remove at least one data, finally print your list.

 */

  List<dynamic> myList =[
    [1,2,3],
    {'id': '110', 'name':'Abir'},
    35.2,
    [],
    {},
    1,
    'Hello Flutter',
  ];

  print('Lenth is: ${myList.length}');    // print size

  //updating 2 data and removing 1 data
  myList.insert(3, ['index', 'element', 'system']);
  myList[4]= {
    'email': 'mdasifurrahmanabir@gmail.com',
    'github_id': 'MdAsifUrRahmanAbir',
  };
  myList.remove('Hello Flutter');
  for (var element in myList) {
    print(element);
  }
}

/// problem 04
void number04(){
/*
4.
Write a
program to convert string to

double, double to String, int to String, then
write a Heterogeneous list.
 */

  // string to double
  String s='34.4';
  double d= double.parse(s);
  print("String print $s Double print $d");

  // double to string
  double d2= 34.5;
  String s2= d2.toString();
  print("String print $s2 Double print $d2");

  // int to string
  int i= 34;
  String s3= i.toString();
  print("String print $s3 Integer print $i");

  // heterogeneous list : not same data type of elements
  List<dynamic> list=[
    1,
    '1',
    1.1,
    true
  ];
}

/// problem 05
void number05(){
/*
5.
Write a
program to generate runtime

error, handle your error using try catch then
notify the user.

a.
var a=double.parse(“dfsdf”);

b.var list=[];

c.print(list[0]);

d.int b=int.parse(“10.55”);
 */

  try{
    var a= double.parse('dfsdf');
    print("a done");
  }catch(e, l){
    print("a wrong\nError: $e \nL: $l");
  }

  try{
    var list=[];
    print(list[0]);
    print('b done');
  }catch(e, l){
    print("b wrong\nError: $e \nL: $l");
  }

  try{
    int b= int.parse('10.55');
    print("d done");
  }catch(e, l) {
    print("d wrong\nError: $e \nL: $l");
  }
}

/// problem 06
void number06(){  // consider as main method
/*
Write two-variable inside the main method assign the given values 83, 11 now create a
new method named is myNewMethod pass given values inside the new method
calculate the multiplication, now create another function named is myNewMethod2
to display the result of multiplication, pass the result of multiplication
inside the  myNewMethod2 and display it
 */
  var a= 83;
  var b= 11;
  myNewMethod(a, b);
}
void myNewMethod(int a, int b) {
  var mult= a*b;
  print(mult);
  myNewMethod2(mult);
}
void myNewMethod2(int mult) {
  print(mult);
}

/// problem 07
void number07(){
/*
Make a reusable method  and pass two values inside the method, calculate
division of two values, get the return value and store it on a new variable
inside the main method and print the new variable.
 */

  double returnValue= reUsableMethod(2, 7);
  print(returnValue);
}
double reUsableMethod(int i, int j) {
  return j/i;
}

/// problem 08
void number08(){
/*
Make
a program to store given lists [14,25,36], [“14”, “14”, ’14.25’] now create a
new list and insert given list to new list using  Spread operator don’t user var keyword to declare
the list name.
 */

  List list1= [14, 25, 36];
  List list2= ['14', '14', '14.25'];

  List list= [''];
  list = [...list1,...list2];
  for (var element in list) {
    print(element);
  }
}

/// problem 09
void number09(){
/*
What is argument, index of a list, and why use add and and All method in a list.
 */

  /// Argument:
      /*
        In Dart, when a function is invoked it may be provided with some information
        as per the function prototype is called as argument (parameter). The number
        of values passed and the data type of the value passed must match the number
        of parameters and the data type of the parameter defined during its declaration.
       */
  /// Index of a list:
      /*
        The logical representation of a list in Dart is given below −test_list− is
        the identifier that references the collection. The list contains in it the
        values 12, 13, and 14. The memory blocks holding these values are known as
        elements. Each element in the List is identified by a unique number called
        the index.
       */
  /// use of add() & addAll() in list
      /*
          add() method  is used to insert the specified value at the end of the list.
          It can add one element at a time and returns the modified list object.
            Example -
                void main() {
                    var odd_list = [1,3,5,7,9];
                    print(odd_list);
                    odd_list.add(11);
                    print(odd_list);
                }
                Output:

                [1, 3, 5, 7, 9]
                [1, 3, 5, 7, 9, 11]

          addAll() This method is used to insert the multiple values to the given list.
          Each value is separated by the commas and enclosed with a square bracket ([]).
            Example:
                void main() {
                  var odd_list = [1,3,5,7,9]
                  print(odd_list);
                  odd_list.addAll([11,13,14]);
                  print(odd_list);
                }
                Output:

                [1, 3, 5, 7, 9]
                [1, 3, 5, 7, 9, 11, 13, 14]
       */
  /// use of insert() & insertAll() in list
      /*
        The insert() method provides the facility to insert an element at specified
        index position. We can specify the index position for the value to be inserted
        in the list.
          Example:
              void main(){
                List lst = [3,4,2,5];
                print(lst);
                lst.insert(2,10);
                print(lst);
              }
              Output:
              [3, 4, 2, 5]
              [3, 4, 10, 2, 5]

        The insertAll() function is used to insert the multiple value at the specified
        index position. It accepts index position and list of values as an argument.
        Example:
             void main(){
              List lst = [3,4,2,5];
              print(lst);
              lst.insertAll(0,[6,7,10,9]);
              print(lst);
            }
            Output:

            [3, 4, 2, 5]
            [6, 7, 10, 9, 3, 4, 2, 5]
       */
}

/// problem 10
void number10(){
/*
Make a
program to use add, removeAt, addAll, clear and length in your program.
 */

  List list= [];
  list.add(1);
  print('add 1: $list');

  list.removeAt(0);
  print('removeAt 0: list');

  List add= [1, 2, 3, 4];
  list.addAll(add);
  list.addAll(['1', '2', 'ADD']);
  print('addAll: $list');

  list.clear();
  print('Clear: $list');

  print('Length: ${list.length}');
}