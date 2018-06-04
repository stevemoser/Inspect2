
import XCTest
@testable import Inspect2

class Inspect2Tests: XCTestCase {
    
    let jsonEncoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        return encoder
    }()
    
    let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()

    func testInvalidFormElements() {
        
        XCTAssertTrue(true)
    }

    
}
