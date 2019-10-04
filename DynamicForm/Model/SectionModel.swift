//
//  SectionModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class SectionModel: ObservableObject, Identifiable {
    public let id = UUID()
    public let title: String
    @Published public var items: [ItemModel]
    
    init(title: String, items: [ItemModel]) {
        self.title = title
        self.items = items
    }
}
