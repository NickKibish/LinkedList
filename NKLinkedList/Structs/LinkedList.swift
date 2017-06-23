//
//  LinkedList.swift
//  NKLinkedList
//
//  Created by Mykola Kibysh on 6/23/17.
//

import Foundation

public struct LinkedList<T> {
    public struct LinkedListIterator: IteratorProtocol {
        var node: Node?
        mutating public func next() -> Node? {
            return node?.next
        }
    }
    
    public class Node {
        var value: T
        var next: Node?
        weak var previous: Node?
        
        init(value: T) {
            self.value = value
        }
    }
    
    fileprivate var root: Node?
}

// MARK: - Public Properties
extension LinkedList {
    public var isEmpty: Bool {
        return root == nil
    }
    
    public var head: Node? {
        return root
    }
    
    public var tail: Node? {
        if var node = root {
            while case let next? = node.next {
                node = next
            }
            return node
        }
        return nil
    }
    
    public var count: Int {
        if var node = root {
            var c = 1
            while case let next? = node.next {
                node = next
                c += 1
            }
            return c
        }
        return 0
    }
}

// MARK: - Public Methods
extension LinkedList {
    mutating public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = tail {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            root = newNode
        }
    }
    
    mutating public func removeAll() {
        root = nil
    }
}

extension LinkedList: Sequence {
    public func makeIterator() -> LinkedListIterator {
        return LinkedListIterator(node: root)
    }
}

