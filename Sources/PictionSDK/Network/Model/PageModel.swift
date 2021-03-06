//
//  PageModel.swift
//  PictionSDK
//
//  Created by jhseo on 13/06/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Mapper

public typealias PageViewResponse = PageModel

public struct PageModel<T: Response>: Response {
    public let content: [T]?
    public let empty: Bool?
    public let first: Bool?
    public let last: Bool?
    public let number: Int?
    public let numberOfElements: Int?
    public let pageable: PageableModel?
    public let size: Int?
    public let sort: SortModel?
    public let totalElements: Int?
    public let totalPages: Int?

    public init(map: Mapper) throws {
        content = map.optionalFrom("content")
        empty = map.optionalFrom("empty")
        first = map.optionalFrom("first")
        last = map.optionalFrom("last")
        number = map.optionalFrom("number")
        numberOfElements = map.optionalFrom("numberOfElements")
        pageable = map.optionalFrom("pageable")
        size = map.optionalFrom("size")
        sort = map.optionalFrom("sort")
        totalElements = map.optionalFrom("totalElements")
        totalPages = map.optionalFrom("totalPages")
    }

    public func toJSONString() throws -> String {
        return try! toJSON(dict: self.toDict())
    }

    public func toDict() -> [String: Any?] {
        return [
            "content": content?.compactMap({ $0.toDict() }),
            "empty": empty,
            "first": first,
            "last": last,
            "number": number,
            "numberOfElements": numberOfElements,
            "pageable": pageable?.toDict(),
            "size": size,
            "sort": sort?.toDict(),
            "totalElements": totalElements,
            "totalPages": totalPages,
        ]
    }
}

extension PageModel {
    static func sampleData() -> [String: Any] {
        return [
            "content": [],
            "empty": "empty",
            "first": "first",
            "last": "last",
            "number": "number",
            "numberOfElements": "numberOfElements",
            "pageable": PageableModel.sampleData(),
            "size": "size",
            "sort": SortModel.sampleData(),
            "totalElements": "totalElements",
            "totalPages": "totalPages"
        ]
    }
}

public struct PageableModel: Response {
    public let offset: Int?
    public let pageNumber: Int?
    public let pageSize: Int?
    public let paged: Bool?
    public let sort: SortModel?
    public let unpaged: Bool?

    public init(map: Mapper) throws {
        offset = map.optionalFrom("offset")
        pageNumber = map.optionalFrom("pageNumber")
        pageSize = map.optionalFrom("pageSize")
        paged = map.optionalFrom("paged")
        sort = map.optionalFrom("sort")
        unpaged = map.optionalFrom("unpaged")
    }

    public func toDict() -> [String: Any?] {
        return [
            "offset": offset,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "paged": paged,
            "sort": sort?.toDict(),
            "unpaged": unpaged
        ]
    }
}

extension PageableModel {
    static func sampleData() -> [String: Any] {
        return [
            "offset": 0,
            "pageNumber": 0,
            "pageSize": 10,
            "paged": true,
            "sort": SortModel.sampleData(),
            "unpaged": false
        ]
    }
}

public struct SortModel: Mappable {
    public let empty: Bool?
    public let sorted: Bool?
    public let unsorted: Bool?

    public init(map: Mapper) throws {
        empty = map.optionalFrom("empty")
        sorted = map.optionalFrom("sorted")
        unsorted = map.optionalFrom("unsorted")
    }

    public func toDict() -> [String: Any?] {
        return [
            "empty": empty,
            "sorted": sorted,
            "unsorted": unsorted
        ]
    }
}

extension SortModel {
    static func sampleData() -> [String: Any] {
        return [
            "empty": true,
            "sorted": false,
            "unsorted": true
        ]
    }
}
