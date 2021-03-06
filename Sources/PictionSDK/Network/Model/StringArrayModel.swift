//
//  StringArrayModel.swift
//  PictionSDK
//
//  Created by jhseo on 16/09/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Mapper
import Foundation

public typealias StringArrayViewResponse = StringArrayModel

public struct StringArrayModel: Response {


    public init(map: Mapper) throws {

    }

    public func toJSONString() throws -> String {
        return try! toJSON(dict: self.toDict())
    }

    public func toDict() -> [String: Any?] {
        return [
            "list": self
        ]
    }
}

extension StringArrayModel {
    static func sampleData() -> [String: Any] {
        return [
            "list": ["", "", ""]
        ]
    }
}

