//
//  ResponseModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-07.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

public struct ResponseModel: Decodable {
    let navigationTitle: String
    let sections: [SectionModel]
    
    enum CodingKey: String {
        case navigationTitle
        case sections
    }
}
