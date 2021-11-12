//
//  Node.swift
//  LinkedListArray
//
//  Created by Mohamad Rahmani on 08.11.21.
//

import Foundation

extension LinkedListArray {
  open class Node<T> {
    public var value: T
    public var next: Node?

    public init(_ value: T) {
      self.value = value
      next = nil
    }

    public init(_ value: T, _ next: Node?) {
      self.value = value
      self.next = next
    }
  }
}

extension LinkedListArray.Node: Equatable where T: Equatable {
  public static func == (lhs: LinkedListArray.Node<T>, rhs: LinkedListArray.Node<T>) -> Bool {
    lhs.value == rhs.value
  }
}
