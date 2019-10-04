//
//  ItemModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class ItemModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published public var placeholder: String
    @Published public var value: String = ""
    
    init(placeholder: String) {
        self.placeholder = placeholder
    }
}

