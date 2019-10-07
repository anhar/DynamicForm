//
//  ButtonRowView.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-12.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI

struct ButtonRowView: View {
    @ObservedObject var row: ButtonViewModel

    var body: some View {
        Button(action: {
            // What to perform
        }) {
            Text(row.title)
            .padding()
            .foregroundColor(row.styling.textColor.asColor())
            .background(row.styling.backgroundColor.asColor())
            .opacity(row.styling.backgroundColor.alpha)
        }
        .cornerRadius(CGFloat(row.styling.cornerRadius ?? 0))
    }

}

struct ButtonRowView_Previews: PreviewProvider {
    static let textColor = ColorModel(red: 120,
                                      green: 120,
                                      blue: 120,
                                      alpha: 0.8)
    static let backgroundColor = ColorModel(red: 120,
                                            green: 120,
                                            blue: 120,
                                            alpha: 0.8)
    static let styling = StylingModel(textColor: textColor,
                                      backgroundColor: backgroundColor,
                                      cornerRadius: 0.8)
    static let response = ButtonRowModel(title: "Sign up",
                                         styling: styling)
    static let row = ButtonViewModel(response: response)

    static var previews: some View {
        ButtonRowView(row: row)
    }
}
