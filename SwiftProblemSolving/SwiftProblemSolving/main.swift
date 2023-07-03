//
// Created by Manajit Halder
// For Project SwiftProblemSolving on 11/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

// Find the smallest common number among 3 arrays
var a1 = [6, 7, 10, 25, 30, 63, 64]
var a2 = [0, 4, 5, 6, 7, 8, 50]
var a3 = [1, 3, 4, 6, 10, 14]

var result = findSmallestCommonNumber(arr1: a1, arr2: a2, arr3: a3)
print("Smallest Common Number: \(result)\n")

// Move all zeros to the begining of the array
var zeros = [1, 10, 20, 0, 59, 63, 0, 88, 0];
print("Before moving all 0's at the begining: \(zeros.description)")
moveAllZerosAtBegining(arr: &zeros)
print("After moving all 0's at the begining: \(zeros.description)\n")

// Reverse even nodes in a linked list
var numArr = [1, 10, 2, 9, 3, 8, 4, 7, 5, 6, 55]
print("List before revarsal: \(numArr)")
//reverseEvenNodes(arr: listElements)
var list = ListOperations(numberArray: numArr)
list.createList()
list.displayList()
var evenNodes = list.evenNodeArray()
list.mergeListWithArr()
list.displayList()
