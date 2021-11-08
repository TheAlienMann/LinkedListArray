import XCTest
@testable import LinkedListArray

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
    XCTAssertEqual(1 + 2, 3)
  }
  
  static var allTests = [
    ("testExample", testExample),
  ]
}
