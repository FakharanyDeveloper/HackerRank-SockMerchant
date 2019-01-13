//
//  main.swift
//  HackerRank-SockMerchant
//
//  Created by khaled Elfakharany on 13/01/2019.
//  Copyright © 2019 khaled Elfakharany. All rights reserved.
//

import Foundation

// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var arr = ar
    arr.sort()
    removeOccur(arr: &arr)
    return  (ar.count - arr.count) / 2
}

func removeOccur(arr: inout [Int]) {
    for i in 0..<arr.count {
        if i < arr.count - 1 && arr[i] == arr[i + 1]{
            arr.remove(at: i + 1)
            arr.remove(at: i)
            removeOccur(arr: &arr)
        }
    }
}
print("input")
let number = Int(readLine(strippingNewline: true)!)!

let ar = readLine()?.components(separatedBy: " ").map {Int($0)!}

print(sockMerchant(n: number, ar: ar!))



