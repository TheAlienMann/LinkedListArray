//
//  LinkedList.swift
//  LinkedListArray
//
//  Created by Mohamad Rahmani on 08.11.21.
//

import Foundation

public extension LinkedListArray {
  struct LinkedList {
    public var head: Node?
    public var tail: Node?

    public var isEmpty: Bool {
      head == nil
    }

    public init() {}

    public mutating func push(_ value: Int) {
      head = Node(value, head)
      if tail == nil {
        tail = head
      }
    }

    public mutating func append(_ value: Int) {
      guard !isEmpty else { push(value); return }
      tail!.next = Node(value)
      tail = tail!.next
    }

    public mutating func insert(_ value: Int, after node: Node) -> Node {
      guard tail !== node else {
        append(value)
        return tail!
      }
      node.next = Node(value, node.next)
      return node.next!
    }

    public func node(at index: Int) -> Node? {
      var currentNode = head
      var currentIndex = 0
      while currentIndex < index, currentNode != nil {
        currentNode = currentNode!.next
        currentIndex += 1
      }
      return currentNode
    }
  }
}

public extension LinkedListArray.LinkedList {
  init(array: [Int]) {
    self.init()

    array.forEach { append($0) }
  }
}

extension LinkedListArray.LinkedList: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: Int...) {
    self.init()

    elements.forEach { append($0) }
  }
}
