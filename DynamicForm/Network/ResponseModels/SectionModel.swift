//
//  SectionModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-07.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

public struct SectionModel: Decodable {
    let rows: [RowModel]
    let title: String
    
    enum CodingKey: String {
        case rows
        case title
    }
}
