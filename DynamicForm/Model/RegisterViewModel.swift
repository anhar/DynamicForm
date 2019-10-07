//
//  RegisterViewModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-09-29.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published public var navigationTitle: String
    @Published public var sections: [SectionViewModel]
    
    init(response: ResponseModel) {
        self.navigationTitle = response.navigationTitle
        self.sections = response.sections.map { section -> SectionViewModel in
            return SectionViewModel(response: section)
        }
    }
}
