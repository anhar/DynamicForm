//
//  StylingModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-07.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation

public struct TextFieldStylingModel: Decodable {
    let textColor: ColorModel
    let placeholderTextColor: ColorModel
    let backgroundColor: ColorModel
    let cornerRadius: Float?
    
    enum CodingKey: String {
        case textColor
        case backgroundColor
        case cornerRadius
    }
}

public struct StylingModel: Decodable {
    let textColor: ColorModel
    let backgroundColor: ColorModel
    let cornerRadius: Float?
    
    enum CodingKey: String {
        case textColor
        case backgroundColor
        case cornerRadius
    }
}

public struct ImageStylingModel: Decodable {
    let backgroundColor: ColorModel
    let cornerRadius: Float?

    enum CodingKey: String {
        case textColor
        case backgroundColor
        case cornerRadius
    }
}
