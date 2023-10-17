//
//  DoublyLinkedList.swift
//  DS+Algorithms+Swift
//
//  Created by kiranjith on 17/10/2023.
//

import Foundation

class Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.value == rhs.value
    }
    
    var value: Int
    var previous: Node?
    var next: Node?
    
    init(value: Int, previous: Node? = nil, next: Node? = nil) {
        self.value = value
        self.previous = previous
        self.next = next
    }
}

class DoublyLinkedList {
    var head: Node?
    var tail: Node?
    
    init(head: Node? = nil, tail: Node? = nil) {
        self.head = head
        self.tail = tail
    }
    
    func containsNodeWithValue(value: Int) -> Bool {
          // Write your code here.
          return false
    }

    func remove(node: Node) {
        // Write your code here.
    }

    func removeNodesWithValue(value: Int) {
        // Write your code here.
    }

    func insertBefore(node: Node, nodeToInsert: Node) {
        var current = head
        var nodePresentAt: Node? = nil
        if node == head {
            current = head
            current?.previous = node
            head = current?.previous
            return
        }
        while current?.next != nil {
            if current?.next == node {
                current = node
            } else if current?.next == nodeToInsert {
                if let next = current?.next {
                    nodePresentAt = next
                }
            }
        }
        while(current?.next != nil) {
                if current?.next == node {
                    if nodePresentAt != nil {
                        node.previous = nodePresentAt
                        nodePresentAt?.previous = current
                        nodePresentAt?.next = node
                        current?.next = nodePresentAt
                    } else {
                        current?.next = nodeToInsert
                        nodeToInsert.next = node
                        node.previous = nodeToInsert
                        nodeToInsert.previous = current
                    }
                  
                }
            current = current?.next
        }
    }

    func insertAfter(node: Node, nodeToInsert: Node) {
        // Write your code here.
    }
    
    private func listContainsNode(node: Node) -> Node? {
        let current = head
        while current?.next != nil {
            if current?.next == node {
                let current =  current?.next
                return current
            }
        }
        return nil
    }

    func setHead(node: Node) {
        let listContainsNode = listContainsNode(node: node)
        
        if listContainsNode != nil {
            let current = listContainsNode
            let previous = current?.previous
            let next = current?.next
            previous?.next = next
            next?.previous = previous
            self.head?.previous = current
            current?.next = self.head
            self.head = current
            
            
        } else {
            let current = head
            let next = current?.next
            current?.previous = node
            self.head = node
            self.head?.next = current
            current?.next = next
            current?.previous = node
            self.head?.previous = nil
        }
        
    }

    func setTail(node: Node) {
        // Write your code here.
    }

    func insertAtPosition(position: Int, nodeToInsert: Node) {
        // Write your code here.
    }
}
