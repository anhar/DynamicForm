//
//  TextFieldRowViewModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class TextFieldRowViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published public var placeholder: String
    @Published public var value: String = ""
    @Published public var styling: TextFieldStylingModel
    
    init(response: TextFieldRowModel) {
        self.placeholder = response.placeholder
        self.styling = response.styling
    }
}
