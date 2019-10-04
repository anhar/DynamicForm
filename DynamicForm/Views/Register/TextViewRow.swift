//
//  TextViewRow.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI

struct TextViewRow: View {
    @ObservedObject var item: ItemModel
    
    var body: some View {
        TextField(item.placeholder, text: $item.value)
            .font(.body)
    }
}

struct TextViewRow_Previews: PreviewProvider {
    static let item = ItemModel(placeholder: "Username")
    
    static var previews: some View {
        TextViewRow(item: item)
    }
}
