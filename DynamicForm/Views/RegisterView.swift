//
//  RegisterView.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-09-29.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI

public struct RegisterView: View {
    @ObservedObject var viewModel: RegisterViewModel
    
    public var body: some View {
        NavigationView {
            Form {
                ForEach(viewModel.sections) { section in
                    Section(header: Text(section.title)) { // Type of expression is ambiguous without more context
                        ForEach(section.items) { item in
                            TextField(item.placeholder, text: item.value)
                            .font(.body)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(viewModel.navigationBarTitle)
        .navigationBarHidden(false)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let viewModel = RegisterViewModel()
    
    static var previews: some View {
        RegisterView(viewModel: viewModel)
    }
}
