//
//  PostsAllViewController.swift
//  Piction-SDK-iOS-Example
//
//  Created by jhseo on 13/06/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import UIKit
import PictionSDK

class PostsAllController: UIViewController {
    @IBOutlet weak var projectIdTextView: UITextField!
    @IBOutlet weak var pageTextView: UITextField!
    @IBOutlet weak var sizeTextView: UITextField!

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

        PictionSDK.posts.all(projectId: projectIdTextView.text ?? "", page: Int(pageTextView.text ?? "0") ?? 0, size: Int(sizeTextView.text ?? "0") ?? 0,
            success: { response in
                self.responseTextView.text = String(describing: response)
                self.isLoading = false
        },
            failure: { error in
                self.responseTextView.text = String(describing: error)
                self.isLoading = false
        })
    }
}
