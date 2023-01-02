//
//  StringExtension.swift
//  Yummie
//
//  Created by Golyakovph on 01.01.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
