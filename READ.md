Todo List 
In the project, I used object-oriented programming in swift  (object and class) to build the application. Object-oriented programming can be defined as  a computer programming model that organizes software design around data, or objects, rather than functions and logic. An object can be defined as a data field that has unique attributes and behavior.

in order to facilitate the project, I created a number of structs :
 - item struct :
It contains the variables related to the action or event that we want to save, and the properties of the struct are:

- Title: Contains the name of the action or event
- Status: Contains the name of the event state (if it has been - completed  it will be true and if it has not it will be false)


- List struct
It is a struct to store a number of actions in an array (In fact, it contains a number of struct of type "item")  and each action group has a title , and the variables in this struct : 
- title : It is the address of the array that contains the actions
- items : It is an array containing a number of variables of item 
 
The list struct contains many functions  adding  and deleting  :
- createItem : to add item to list 
- updateItem func : to change the name of the event or action
- deleteItem func : To delete item in a specific index number
- readItem func : prints the details of the action  its title, status and id

The main class in the project is
ToDoList and inside the class I created a variable of type [List] , It means that the clan will contain all the actions that will be added .

In order to add or delete, i created an object from the class and the user will able to access to the method inside it .

I hope to be able to develop the project .
