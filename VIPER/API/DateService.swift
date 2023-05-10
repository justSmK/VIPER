//
//  DateService.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(Date())
        }
    }
}
