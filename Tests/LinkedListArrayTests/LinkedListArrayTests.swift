@testable import LinkedListArray
import XCTest

final class LinkedListArrayTests: XCTestCase {
  var sut: LinkedListArray!

  override func setUp() {
    super.setUp()
    sut = LinkedListArray()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testExample() {
    let head: LinkedListArray.LinkedList = [1, 2, 3, 4]
    XCTAssertEqual(head.node(at: 0)!.value, 1)
  }
  
  func testExample2() {
    let head: LinkedListArray.LinkedList = ["h", "e", "l", "l", "o"]
    XCTAssertEqual(head.node(at: 0)!.value, "h")
  }

  static var allTests = [
    ("testExample", testExample),
  ]
}
