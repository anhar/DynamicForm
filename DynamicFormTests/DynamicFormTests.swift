//
//  DynamicFormTests.swift
//  DynamicFormTests
//
//  Created by Andreas Hård on 2019-10-06.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import XCTest
@testable import DynamicForm

class DynamicFormTests: XCTestCase {
    
    func testJSONResponse() {
        let json = """
        {
            "navigationTitle": "Sign up",
            "sections": [{
                "title": "Sign up",
                "rows": [
                    {
                        "type": "image",
                        "imageURL": "https://domain.com/image.jpg",
                        "styling": {
                            "backgroundColor": {
                                "red": 235,
                                "green": 235,
                                "blue": 235,
                                "alpha": 0.8
                            },
                            "cornerRadius": 10
                        }
                    },
                    {
                        "type": "textField",
                        "placeholder": "Username",
                        "styling": {
                            "textColor":  {
                                "red": 18,
                                "green": 201,
                                "blue": 230,
                                "alpha": 1.0
                            },
                            "backgroundColor": {
                                "red": 235,
                                "green": 235,
                                "blue": 235,
                                "alpha": 0.8
                            },
                            "cornerRadius": 5
                        }
                    },
                    {
                        "type": "textField",
                        "placeholder": "password",
                        "styling": {
                            "textColor":  {
                                "red": 18,
                                "green": 201,
                                "blue": 230,
                                "alpha": 1.0
                            },
                            "backgroundColor": {
                                "red": 235,
                                "green": 235,
                                "blue": 235,
                                "alpha": 0.8
                            },
                            "cornerRadius": 5
                        }
                    },
                    {
                        "type": "textField",
                        "placeholder": "confirmPassword",
                        "styling": {
                            "textColor":  {
                                "red": 18,
                                "green": 201,
                                "blue": 230,
                                "alpha": 1.0
                            },
                            "backgroundColor": {
                                "red": 235,
                                "green": 235,
                                "blue": 235,
                                "alpha": 0.8
                            },
                            "cornerRadius": 5
                        }
                    },
                    {
                        "type": "button",
                        "title": "Register!",
                        "styling": {
                            "textColor":  {
                                "red": 255,
                                "green": 255,
                                "blue": 255,
                                "alpha": 0.6
                            },
                            "backgroundColor": {
                                "red": 18,
                                "green": 201,
                                "blue": 230,
                                "alpha": 1.0
                            },
                            "cornerRadius": 10
                        }
                    }
                ]
            }]
        }
        """
        guard let data = json.data(using: .utf8) else {
            XCTFail()
            return
        }
        let decoder = JSONDecoder()
        
        do {
            _ = try decoder.decode(ResponseModel.self, from: data)
            XCTAssertTrue(true)
        } catch {
            print("Failed to parse JSON with error: \(error.localizedDescription)")
            XCTFail()
        }
    }
}
