//
//  CardModel.swift
//  Learn By Doing
//
//  Created by Zeki Baklan on 14.09.2023.
//

import Foundation
import SwiftUI

//    MARK: - CARD MODEL

struct Card : Identifiable {
    
    var id = UUID()
    var title : String
    var headline : String
    var imageName : String
    var callToAction : String
    var message : String
    var gradientColors : [Color]
    
}
