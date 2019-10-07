//
//  RowViewModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-12.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

enum RowViewModel: Identifiable {
    var id: ObjectIdentifier {
        switch self {
        case .textField(let model):
            return model.id
        case .image(let model):
            return model.id
        case .button(let model):
            return model.id
        }
    }

    case textField(TextFieldRowViewModel)
    case image(ImageViewModel)
    case button(ButtonViewModel)

    init(response: RowModel) {
        switch response {
        case .textField(let model):
            let viewModel = TextFieldRowViewModel(response: model)
            self = .textField(viewModel)
        case .image(let model):
            let viewModel = ImageViewModel(response: model)
            self = .image(viewModel)
        case .button(let model):
            let viewModel = ButtonViewModel(response: model)
            self = .button(viewModel)
        }
    }
}
