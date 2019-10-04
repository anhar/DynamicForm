//
//  SectionView.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @ObservedObject var section: SectionModel
    
    var body: some View {
        Section(header: Text(section.title)) {
            ForEach(section.items) { item in
                TextViewRow(item: item)
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static let usernameItem = ItemModel(placeholder: "Username")
    static let firstnameItem = ItemModel(placeholder: "Firstname")
    static let lastnameItem = ItemModel(placeholder: "Lastname")
    static let section = SectionModel(title: "Personal Information",
                                      items: [usernameItem, firstnameItem, lastnameItem])
    
    static var previews: some View {
        SectionView(section: section)
    }
}
