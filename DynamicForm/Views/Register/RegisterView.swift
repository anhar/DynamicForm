//
//  RegisterView.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel: RegisterViewModel
    
    var body: some View {
        NavigationView {
            Form {
                ForEach(viewModel.sections) { section in
                    SectionView(section: section)
                }
            }
        }
        .navigationBarTitle(viewModel.navigationTitle)
        .navigationBarHidden(false)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let viewModel = RegisterViewModel()

    static var previews: some View {
        RegisterView(viewModel: viewModel)
    }
}
