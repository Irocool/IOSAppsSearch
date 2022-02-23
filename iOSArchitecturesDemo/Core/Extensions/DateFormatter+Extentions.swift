//
//  DateFormatter+Extentions.swift
//  iOSArchitecturesDemo
//
//  Created by Irina Kuligina on 23.02.2022.
//

import Foundation

extension DateFormatter {
    static var shared: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        
        return formatter
    }()
}
