//
//  Posts.swift
//  PictionSDK
//
//  Created by jhseo on 13/06/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Foundation
import UIKit

public final class Posts {
    static let shared = Posts()
    private init() {}

    public func all(uri: String, isRequiredFanPass: Bool?, page: Int, size: Int, success successCompletion: ((PageViewResponse<PostModel>) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.all(uri: uri, isRequiredFanPass: isRequiredFanPass, page: page, size: size),
            success: { (response: PageViewResponse<PostModel>) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func create(uri: String, title: String, content: String, cover: String?, seriesId: Int?, fanPassId: Int?, status: String, publishedAt: Int64,  success successCompletion: ((PostViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.create(uri: uri, title: title, content: content, cover: cover, seriesId: seriesId, fanPassId: fanPassId, status: status, publishedAt: publishedAt),
            success: { (response: PostViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func get(uri: String, postId: Int, success successCompletion: ((PostViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.get(uri: uri, postId: postId),
            success: { (response: PostViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func update(uri: String, postId: Int, title: String, content: String, cover: String?, seriesId: Int?, fanPassId: Int?, status: String, publishedAt: Int64, success successCompletion: ((PostViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.update(uri: uri, postId: postId, title: title, content: content, cover: cover, seriesId: seriesId, fanPassId: fanPassId, status: status, publishedAt: publishedAt),
            success: { (response: PostViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func delete(uri: String, postId: Int, success successCompletion: ((DefaultViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.delete(uri: uri, postId: postId),
            success: { (response: DefaultViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func content(uri: String, postId: Int, success successCompletion: ((ContentViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.content(uri: uri, postId: postId),
            success: { (response: ContentViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func isLike(uri: String, postId: Int, success successCompletion: ((LikeViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.isLike(uri: uri, postId: postId),
            success: { (response: LikeViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func like(uri: String, postId: Int, success successCompletion: ((PostViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.like(uri: uri, postId: postId),
            success: { (response: PostViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func prevPost(uri: String, postId: Int, success successCompletion: ((PostViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.prevPost(uri: uri, postId: postId),
            success: { (response: PostViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func nextPost(uri: String, postId: Int, success successCompletion: ((PostViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.nextPost(uri: uri, postId: postId),
            success: { (response: PostViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func uploadContentImage(uri: String, image: UIImage, success successCompletion: ((StorageAttachmentViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.uploadContentImage(uri: uri, image: image),
            success: { (response: StorageAttachmentViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
            })
    }

    public func uploadCoverImage(uri: String, image: UIImage, success successCompletion: ((StorageAttachmentViewResponse) -> Void)? = nil, failure failureCompletion: ((ErrorType) -> Void)? = nil) {
        PictionProvider.request(PostsAPI.uploadCoverImage(uri: uri, image: image),
            success: { (response: StorageAttachmentViewResponse) in
                successCompletion?(response)
            },
            failure: { error in
                failureCompletion?(error)
        })
    }
}
