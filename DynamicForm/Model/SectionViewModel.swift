//
//  SectionViewModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class SectionViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    public let title: String
    @Published public var rows: [RowViewModel]
    
    init(response: SectionModel) {
        self.title = response.title
        self.rows = response.rows.map { row -> RowViewModel in
            RowViewModel.init(response: row)
        }
    }
}
