//
//  LinkedList.swift
//  NKLinkedList
//
//  Created by Mykola Kibysh on 6/23/17.
//

import Foundation

public struct LinkedList<T> {
    
    
    fileprivate struct Node {
        var val: T
        
    }
    
    fileprivate var root: Node?
}
/*
extension LinkedList: Sequence {
    
}
*/
