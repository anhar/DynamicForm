//
//  ColorModel.swift
//  DynamicForm
//
//  Created by Andreas Hård on 2019-10-11.
//  Copyright © 2019 Andreas Hard Consulting AB. All rights reserved.
//

import Foundation
import SwiftUI

public struct ColorModel: Decodable {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double

    enum CodingKey: String {
        case red
        case green
        case blue
        case alpha
    }

    func asColor() -> Color {
        return Color(red: red/255, green: green/255, blue: blue/255)
    }
}
