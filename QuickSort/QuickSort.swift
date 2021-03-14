//
//  QuickSort.swift
//  QuickSort
//
//  Created by Uji Saori on 2021-03-14.
//

import Foundation

func quickSort<T: Comparable>(arr: inout [T], stIndex: Int, edIndex: Int) {
    if stIndex >= edIndex { return }
    
    let pivotIndex = pivot(arr: &arr, stIndex: stIndex, edIndex: edIndex)
    quickSort(arr: &arr, stIndex: stIndex, edIndex: pivotIndex - 1)
    quickSort(arr: &arr, stIndex: pivotIndex + 1, edIndex: edIndex)
}

func pivot<T: Comparable>(arr: inout [T], stIndex: Int, edIndex: Int) -> Int {
    var pivotIndex = stIndex
    for i in stIndex..<edIndex {
        if arr[i] < arr[edIndex] {
            arr.swapAt(pivotIndex, i)
            pivotIndex += 1
        }
    }
    arr.swapAt(pivotIndex, edIndex)
    return pivotIndex
}
