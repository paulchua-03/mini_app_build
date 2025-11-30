//
//  ErrorHandler.swift
//  MiniAppBuild
//
//  Created by Paul Angelo Chua on 11/30/25.
//

import Foundation

enum ErrorHandler: Error {
    case invalidAPIUrl
    case invalidStatusCode
    case invalidResponse
}
