//
//  Row.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-04.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation
import UIKit

public enum RowModel: Decodable {
    case textField(TextFieldRowModel)
    case image(ImageRowModel)
    case button(ButtonRowModel)

    enum CodingKeys: String, CodingKey {
        case type
    }

    public init(from decoder: Decoder) throws {
        do {
            let selfContainer = try decoder.singleValueContainer()
            let typeContainer = try decoder.container(keyedBy: CodingKeys.self)
            let type = try typeContainer.decode(String.self, forKey: .type)

            switch type {
            case "textField":
                self = .textField( try selfContainer.decode(TextFieldRowModel.self) )
            case "image":
                self = .image( try selfContainer.decode(ImageRowModel.self) )
            case "button":
                self = .button( try selfContainer.decode(ButtonRowModel.self) )
            default:
                throw fatalError("You done fucked up")
            }
        }
    }
}

public struct TextFieldRowModel: Decodable {
    let placeholder: String
    let styling: TextFieldStylingModel
    
    enum CodingKey: String {
        case type
        case placeholder
        case styling
    }
}

public struct ImageRowModel: Decodable {
    let imageURL: URL
    let styling: ImageStylingModel
    
    enum CodingKey: String {
        case type
        case imageURL
        case styling
    }
}

public struct ButtonRowModel: Decodable {
    let title: String
    let styling: StylingModel
    
    enum CodingKey: String {
        case type
        case title
        case styling
    }
}

