//
//  Node.swift
//  LinkedListArray
//
//  Created by Mohamad Rahmani on 08.11.21.
//

import Foundation

extension LinkedListArray {
  final public class Node {
    public var value: Int
    public var next: Node?
    
    public init() { value = 0; next = nil; }
    public init(_ value: Int) {
      self.value = value
      next = nil
    }
    public init(_ value: Int, _ next: Node?) {
      self.value = value
      self.next = next
    }
  }
}

extension LinkedListArray.Node: Equatable {
  public static func == (lhs: LinkedListArray.Node, rhs: LinkedListArray.Node) -> Bool {
    lhs.value == rhs.value
  }
}

