//
//  ImageViewRowView.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-12.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI

struct ImageViewRowView: View {
    @ObservedObject var row: ImageViewModel

    var body: some View {
        Text("This is an image")
    }
}

struct ImageViewRowView_Previews: PreviewProvider {
    static let backgroundColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let styling = ImageStylingModel(backgroundColor: backgroundColor, cornerRadius: 0.8)
    static let url = URL(string: "http://domain.com/image.jpg")!
    static let response = ImageRowModel(imageURL: url, styling: styling)
    static let row = ImageViewModel(response: response)

    static var previews: some View {
        ImageViewRowView(row: row)
    }
}
