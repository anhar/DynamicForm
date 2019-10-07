//
//  ButtonViewModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-12.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class ButtonViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published public var title: String
    @Published public var styling: StylingModel

    init(response: ButtonRowModel) {
        self.title = response.title
        self.styling = response.styling
    }
}
