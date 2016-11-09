//
//  StoreTasks.swift
//  taskPenguin
//
//  Created by Joshua Hudson on 11/9/16.
//  Copyright © 2016 ParaniodPenguinProductions. All rights reserved.
//

import UIKit

var storeTask: TaskManager = TaskManager()

struct storedTask {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class StoreTask: NSObject {
    
    var tasks = [storedTask]()
    
    func addTask(name: String, desc: String) {
        tasks.append(storedTask(name: name, desc: desc))

    }
}
