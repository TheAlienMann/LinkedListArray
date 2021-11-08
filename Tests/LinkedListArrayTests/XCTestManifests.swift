import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LinkedListArrayTests.allTests),
    ]
}
#endif
