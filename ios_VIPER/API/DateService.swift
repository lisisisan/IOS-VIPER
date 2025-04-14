//
//  DateService.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import Foundation

class DateService {
     func getDate(complation: @escaping (Date) -> Void) {
         // задержка
         DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
             complation(Date())
         }
    }
}
