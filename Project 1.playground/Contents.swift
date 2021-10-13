import UIKit
import Foundation
//// TO DO:
///1. git init
///2. add git ignore
///3. git add .
///4. git commit -m "MEEEEESSSSSAAAAAG"
///5. FIX DELETE ERROR (OUT OF RANGE)
///6. git add .
///7. git commit -m "Handle Delete Error"
///8. DEVELOP UPDATE FUN
///
///




// Creat enumerations
enum TaskStatus {
case completed
case incompleted
}



// Creat straucture
struct Item {
    var item: String
    var status: TaskStatus
    
}


// Creat structure
struct List {
    var listTitle: String
    var items : [Item] = []


    
// Creat read task
    mutating func addTask(item: Item) {
        self.items.append(item)
    }
    
    
// Creat read Task
    mutating func readTask() {
        for read in self.items {
            print(read.item)
        }
    }
    
// ubdate task
  mutating func updateTask(index: Int) {
      
    }
    
// delete value
    mutating func removeTask(index: Int) {
        if index < items.count {
            self.items.remove(at: index)
            
        } else {
            print("out of range")
            
        }
    }
}


// Creat class
class ToDoList {
    var list: List
    
    init(list: List) {
        self.list = list
    }
}


// Create an object
var Terminal = Item(item: "Terminal in Tuwaiq 1000", status: .incompleted )

var swift = Item(item: "Swift in Tuwaiq 1000", status: .completed)

var ios = Item(item: "IOS in Tuwaiq 1000", status: .incompleted)

var list1 = List(listTitle: "Work in the first week")




list1.addTask(item: Terminal)
list1.addTask(item: swift)
list1.addTask(item: ios)
list1.readTask()



// update value




// delete value
list1.removeTask(index: 0)
list1.readTask()

