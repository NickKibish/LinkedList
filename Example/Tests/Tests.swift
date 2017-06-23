import UIKit
import XCTest
import NKLinkedList

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInsertion() {
        var list = LinkedList<Int>()
        list.append(value: 0)
        list.append(value: 1)
        list.append(value: )
        
        XCTAssertEqual(list.head, 0)
        XCTAssertEqual(list.tail, <#T##expression2: Equatable##Equatable#>)
    }
    
}
