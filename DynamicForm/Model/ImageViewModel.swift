//
//  ImageViewModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-12.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

class ImageViewModel: ObservableObject, Identifiable {
    public let id = UUID()
    @Published public var imageURL: URL
    @Published public var styling: ImageStylingModel

    init(response: ImageRowModel) {
        self.imageURL = response.imageURL
        self.styling = response.styling
    }
}
