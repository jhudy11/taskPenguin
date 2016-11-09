//
//  TaskManager.swift
//  taskPenguin
//
//  Created by Joshua Hudson on 11/8/16.
//  Copyright © 2016 ParaniodPenguinProductions. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
}
