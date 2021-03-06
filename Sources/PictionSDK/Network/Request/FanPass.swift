//
//  FanPass.swift
//  PictionSDK
//
//  Created by jhseo on 2020/01/14.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Foundation
import UIKit

public final class FanPass {
    static let shared = FanPass()
    private init() {}

    public func all(uri: String, success successCompletion: @escaping SuccessClosure<[FanPassViewResponse]>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.all(uri: uri),
            success: { (response: [FanPassViewResponse]) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func create(uri: String, name: String, description: String? = nil, thumbnail: String? = nil, subscriptionLimit: Int? = nil, subscriptionPrice: Int? = nil, success successCompletion: @escaping SuccessClosure<FanPassViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.create(uri: uri, name: name, description: description, thumbnail: thumbnail, subscriptionLimit: subscriptionLimit, subscriptionPrice: subscriptionPrice),
            success: { (response: FanPassViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func get(uri: String, fanPassId: Int, success successCompletion: @escaping SuccessClosure<FanPassViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.get(uri: uri, fanPassId: fanPassId),
            success: { (response: FanPassViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func update(uri: String, fanPassId: Int, name: String, description: String? = nil, thumbnail: String? = nil, subscriptionLimit: Int? = nil, subscriptionPrice: Int? = nil, success successCompletion: @escaping SuccessClosure<FanPassViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.update(uri: uri, fanPassId: fanPassId, name: name, description: description, thumbnail: thumbnail, subscriptionLimit: subscriptionLimit, subscriptionPrice: subscriptionPrice),
            success: { (response: FanPassViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func delete(uri: String, fanPassId: Int, success successCompletion: @escaping SuccessClosure<DefaultViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.delete(uri: uri, fanPassId: fanPassId),
            success: { (response: DefaultViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func subscription(uri: String, fanPassId: Int, subscriptionPrice: Int, success successCompletion: @escaping SuccessClosure<SubscriptionViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.subscription(uri: uri, fanPassId: fanPassId, subscriptionPrice: subscriptionPrice),
            success: { (response: SubscriptionViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func cancelSubscription(uri: String, fanPassId: Int, success successCompletion: @escaping SuccessClosure<DefaultViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.cancelSubscription(uri: uri, fanPassId: fanPassId),
            success: { (response: DefaultViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func getSubscribedFanPass(uri: String, success successCompletion: @escaping SuccessClosure<SubscriptionFanPassViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.getSubscribedFanPass(uri: uri),
            success: { (response: SubscriptionFanPassViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }

    public func uploadThumbnail(image: UIImage, success successCompletion: @escaping SuccessClosure<StorageAttachmentViewResponse>, failure failureCompletion: @escaping FailureClosure) {
        PictionProvider.request(FanPassAPI.uploadThumbnail(image: image),
            success: { (response: StorageAttachmentViewResponse) in
                successCompletion(response)
            },
            failure: { error in
                failureCompletion(error)
            })
    }
}
