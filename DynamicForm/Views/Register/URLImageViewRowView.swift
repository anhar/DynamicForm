//
//  URLImageViewRowView.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-12.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import SwiftUI
import Foundation

struct URLImageViewRowView: View {
    @ObservedObject var row: URLImageViewModel

    var body: some View {
        Image(uiImage: row.image ?? URLImageViewRowView.defaultImage!)
            .resizable()
            .scaledToFit()
    }

    static var defaultImage = UIImage(named: "DefaultImage")
}

struct ImageViewRowView_Previews: PreviewProvider {
    static let backgroundColor = ColorModel(red: 120, green: 120, blue: 120, alpha: 0.8)
    static let styling = ImageStylingModel(backgroundColor: backgroundColor, cornerRadius: 0.8)
    static let url = URL(string: "https://placekitten.com/g/1920/1080")!
    static let response = ImageRowModel(imageURL: url, styling: styling)
    static let row = URLImageViewModel(response: response)

    static var previews: some View {
        URLImageViewRowView(row: row)
    }
}
