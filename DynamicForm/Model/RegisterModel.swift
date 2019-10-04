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
    @Published public var sections: [SectionModel]
    
    init() {
        self.navigationTitle = "Register"
        var sections: [SectionModel] = []
        let domainCell: ItemModel = ItemModel(placeholder: "Domain")
        let domainSection: SectionModel = SectionModel(title: "Server Information", items: [domainCell])
        sections.append(domainSection)
        
        let usernameCell: ItemModel = ItemModel(placeholder: "Username")
        let firstNameCell: ItemModel = ItemModel(placeholder: "Firstname")
        let lastNameCell: ItemModel = ItemModel(placeholder: "Lastname")
        let emailCell: ItemModel = ItemModel(placeholder: "Email address")
        let personalSection: SectionModel = SectionModel(title: "Personal Information", items: [usernameCell, firstNameCell, lastNameCell, emailCell])
        sections.append(personalSection)
        
        let passwordCell = ItemModel(placeholder: "Password")
        let confirmPassword: ItemModel = ItemModel(placeholder: "Confirm password")
        let passwordSection: SectionModel = SectionModel(title: "Password", items: [passwordCell, confirmPassword])
        sections.append(passwordSection)
        self.sections = sections
    }
}
