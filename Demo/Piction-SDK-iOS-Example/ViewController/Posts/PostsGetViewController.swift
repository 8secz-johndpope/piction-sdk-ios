//
//  PostsGetViewController.swift
//  Piction-SDK-iOS-Example
//
//  Created by jhseo on 13/06/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import UIKit
import PictionSDK

class PostsGetViewController: UIViewController {
    @IBOutlet weak var uriTextField: UITextField!
    @IBOutlet weak var postIdTextField: UITextField!

    @IBOutlet weak var responseTextView: UITextView!
    @IBOutlet weak var executeButton: UIButton!

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    var isLoading: Bool = false {
        didSet(loading) {
            loading ? self.activityIndicator.stopAnimating() : self.activityIndicator.startAnimating()
            self.executeButton.isEnabled = loading
        }
    }

    @IBAction func executeBtnPressed(_ sender: Any) {
        self.responseTextView.text = ""
        self.isLoading = true

        PictionSDK.posts.get(uri: uriTextField.text ?? "", postId: Int(postIdTextField.text ?? "0") ?? 0,
            success: { response in
                self.responseTextView.text = JsonUtil.toString(dict: response.toDict())
                self.isLoading = false
            },
            failure: { error in
                self.responseTextView.text = String(describing: error)
                self.isLoading = false
            })
    }
}
