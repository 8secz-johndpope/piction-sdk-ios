//
//  MoyaResponseExtension.swift
//  PictionSDK
//
//  Created by jhseo on 23/05/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Foundation
import Mapper
import Moya
import Moya_ModelMapper

public typealias ResponseData = Moya.Response

public extension Moya.Response {
    func filterStatusCode() throws  {
        guard 200 ... 399 ~= self.statusCode else {
            let errorItem = try self.map(to: ErrorModel.self)

            print(errorItem)

            switch self.statusCode {
            case 400:
                throw ErrorType.badRequest(errorItem)
            case 401:
                throw ErrorType.unauthorized(errorItem)
            case 403:
                throw ErrorType.forbidden(errorItem)
            case 404:
                throw ErrorType.notFound(errorItem)
//            case 413:
//                throw ErrorType.payloadTooLarge(self)
            case 500:
                throw ErrorType.internalServerError(errorItem)
//            case 504:
//                throw ErrorType.gatewayTimeout(self)
            default:
                throw ErrorType.unknown(self)
            }
        }
    }
}
