//
// Created by Manajit Halder
// For Project SwiftProblemSolving on 13/12/22
// Using Swift 5.0 on MacOS 12.4
// 

// INCOMPLETE

import Foundation

// List Node
class List {
    var value: Int
    var link: List?
    
    init() {
        value = 0
        link = nil
    }
}

// List operations to add element to the end of the array and disply list elements.
struct ListOperations {
    var head: List?
    var numberArray: [Int]

    //MARK: - List Operations
    mutating func prepend(data: Int) {
        let list = List()
        list.value = data
        list.link = head
        head = list
    }

    mutating func append(data: Int) {
        let node = List()
        node.value = data
        node.link = nil
        
        if head == nil {
            head = node
        } else {
            var temp = head
            while temp?.link != nil {
                temp = temp?.link
            }
            temp?.link = node
        }
    }

    //MARK: - Create list from number array and Display methods
    mutating func createList() {
        for element in numberArray {
            append(data: element)
        }
    }
    
    func displayList() {
        var temp = head
        print("List Elements are: ", terminator: "")
        while temp != nil {
            print(temp?.value ?? 0, terminator: " ")
            temp = temp?.link
        }
        print("\n")
    }
    
    //MARK: - Reverse linked list
    mutating func reverseList() {
        var temp = head
        var reversedList: List?
        var next: List?
        
        while temp != nil {
            
        }
    }
    
    //MARK: - Create an array from even nodes of the list
    mutating func evenNodeArray() -> [Int] {
        var evenNodeArr = [Int]()
        var temp = head
        while temp != nil && temp?.link != nil {
            temp = temp?.link
            evenNodeArr.append(temp?.value ?? 0)
            temp = temp?.link
        }
        
        return evenNodeArr
    }
    
    mutating func mergeListWithArr() {
        var temp = head
        let nodeArr = evenNodeArray()
        var index = nodeArr.count - 1
        
        while temp != nil && temp?.link != nil {
            temp = temp?.link
            if index >= 0 {
                temp?.value = nodeArr[index]
                index -= 1
            }
            temp = temp?.link
        }
    }
    
}

// Reverse even nodes in a linked list




//func reverseEvenNodes(arr: [Int]) -> [Int] {
//
//}
