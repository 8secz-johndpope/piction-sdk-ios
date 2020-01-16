//
//  Search.swift
//  PictionSDK
//
//  Created by jhseo on 09/07/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Foundation

public final class Search {
    static let shared = Search()
    private init() {}

    public func projects(name: String, page: Int, size: Int, success successCompletion: @escaping SuccessClosure<PageViewResponse<ProjectModel>>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(SearchAPI.projects(name: name, page: page, size: size),
            success: { (response: PageViewResponse<ProjectModel>) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func taggingProjects(tag: String, page: Int, size: Int, success successCompletion: @escaping SuccessClosure<PageViewResponse<ProjectModel>>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(SearchAPI.taggingProjects(tag: tag, page: page, size: size),
            success: { (response: PageViewResponse<ProjectModel>) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func tag(tag: String, page: Int, size: Int, success successCompletion: @escaping SuccessClosure<PageViewResponse<TagModel>>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(SearchAPI.tag(tag: tag, page: page, size: size),
            success: { (response: PageViewResponse<TagModel>) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func writer(writer: String, page: Int, size: Int, success successCompletion: @escaping SuccessClosure<PageViewResponse<UserModel>>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(SearchAPI.writer(writer: writer, page: page, size: size),
            success: { (response: PageViewResponse<UserModel>) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }


}
