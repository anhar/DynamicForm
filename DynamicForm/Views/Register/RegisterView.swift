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
    static let textColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let placeholderTextColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let backgroundColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let styling = TextFieldStylingModel(textColor: textColor,
                                               placeholderTextColor: placeholderTextColor,
                                               backgroundColor: backgroundColor,
                                               cornerRadius:  0.8)

    static let usernameRow = RowModel.textField(TextFieldRowModel(placeholder: "Username",
                                                                  styling: styling))
    static let firstnameRow = RowModel.textField(TextFieldRowModel(placeholder: "Firstname",
                                                                   styling: styling))
    static let lastnameRow = RowModel.textField(TextFieldRowModel(placeholder: "Lastname",
                                                                  styling: styling))
    static let section = SectionModel(rows: [usernameRow, firstnameRow, lastnameRow],
                                      title: "Personal Information")
    static let response = ResponseModel(navigationTitle: "Sign up",
                                        sections: [section])
    static let viewModel = RegisterViewModel(response: response)

    static var previews: some View {
        RegisterView(viewModel: viewModel)
    }
}
