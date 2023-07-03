//
// Created by Manajit Halder
// For Project SwiftProblemSolving on 11/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

func findSmallestCommonNumber(arr1: [Int], arr2: [Int], arr3: [Int]) -> Int {
    var i = 0, j = 0, k = 0
    
    while (i < arr1.count && j < arr2.count && k < arr3.count) {
        if arr1[i] == arr2[j] && arr1[i] == arr3[k] {
            return arr1[i]
        }
        if arr1[i] < arr2[j] || arr1[i] < arr3[k] {
            i += 1
        }
        if arr2[j] < arr1[i] || arr2[j] < arr3[k] {
            j += 1
        }
        if arr3[k] < arr1[i] || arr3[k] < arr2[j] {
            k += 1
        }
    }
    
    return 0
}

func moveAllZerosAtBegining(arr: inout [Int]) {
    var reader = arr.count - 1
    var writer = arr.count - 1
    
    if arr.count <= 1 {
        return
    }
    
    while (reader != -1) {
        if arr[reader] != 0 && arr[writer] == 0 {
            (arr[reader], arr[writer]) = (arr[writer], arr[reader])
//            print("exchanged")
        }
        
        if arr[reader] == 0 {
            reader -= 1
        }
        
        if arr[writer] != 0 {
            writer -= 1
        }
        
//        print(arr.description, reader, writer)
    }
}

