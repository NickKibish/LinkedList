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
        list.append(value: 2)
        
        XCTAssertEqual(list.head, 0)
        XCTAssertEqual(list.tail, 2)
        XCTAssertEqual(list.count, 3)
    }
    
    func testDeletion() {
        var list = LinkedList<Int>()
        list.append(value: 0)
        list.append(value: 1)
        list.append(value: 2)
        
        XCTAssertEqual(list.count, 3)
        list.removeLast()
        XCTAssertEqual(list.count, 2)
        XCTAssertEqual(list.tail, 1)
        XCTAssertEqual(list.head, 0)
        
        list.removeFirst()
        XCTAssertEqual(list.count, 1)
        XCTAssertEqual(list.tail, 1)
        XCTAssertEqual(list.head, 1)
        
        list.removeFirst()
        XCTAssertEqual(list.count, 0)
        XCTAssertNil(list.head)
        XCTAssertNil(list.tail)
    }
    
    func testSequence() {
        var list = LinkedList<Int>()
        list.append(value: 0)
        list.append(value: 1)
        list.append(value: 2)
        
        var arr = [Int]()
        for val in list {
            arr.append(val)
            assert(arr.count <= 3)
        }
        
        XCTAssertEqual(arr, [0, 1, 2])
    }
    
    func testInsertionToBegin() {
        var list = LinkedList<Int>()
        list.insertToBegin(value: 0)
        list.insertToBegin(value: 1)
        list.insertToBegin(value: 2)
        
        var arr = [Int]()
        for val in list {
            arr.append(val)
            assert(arr.count <= 3)
        }
        
        XCTAssertEqual(arr, [2, 1, 0])
    }
}
