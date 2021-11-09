import XCTest

#if !canImport(ObjectiveC)
  public func allTests() -> [XCTestCaseEntry] {
    [
      testCase(LinkedListArrayTests.allTests),
    ]
  }
#endif
