import UIKit
import Foundation


// Create Status enumerations
enum TaskStatus {
case ready
case notReady
}



// Create Item straucture
struct Item {
    var item: String
    var status: TaskStatus
    
}


// Create List structure
struct List {
    var listTitle: String
    var items : [Item] = []


    
// Create Add Task
    mutating func addTask(item: Item) {
        self.items.append(item)
    }
    
    
// Create Read Task
    mutating func readTask() {
        for read in self.items {
            print("\(read.item) , \(read.status)")
        }
    }
    
// Create Update Task
    mutating func updateTaskStatus(index: Int, newStatus: TaskStatus) {
        if index < items.count {
            self.items[index].status = newStatus
        } else {
            print("out of range")
        }
        
    }
    
// Create Delete value
    mutating func removeTask(index: Int) {
        if index < items.count {
            self.items.remove(at: index)
            
        } else {
            print("out of range")
            
        }
    }
}


// Create class
class ToDoList {
    var list: List
    
    init(list: List) {
        self.list = list
    }
}


// Create objects
var bedTime = Item(item: "Bed Time at 10:30 PM", status: .ready )

var wakeUpTime = Item(item: "Wake up time at 5:00 AM", status: .ready)

var doingWalking = Item(item: "Doing walking at 6:00 AM", status: .notReady)

var goingToWork = Item(item: "Going to work at 7:30 AM", status: .notReady)

var list1 = List(listTitle: "Work in the first week")



// Add value
list1.addTask(item: bedTime)
list1.addTask(item: wakeUpTime)
list1.addTask(item: doingWalking)



// Read value
list1.readTask()


// update value
list1.updateTaskStatus(index: 3, newStatus: .ready)

list1.readTask()



// delete value
list1.removeTask(index: 0)

list1.readTask()
