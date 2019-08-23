//
//  UIViewController.Container+Extension.swift
//  PictionView
//
//  Created by jhseo on 17/06/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Swinject
import UIKit
import PictionSDK

extension ExplorerViewController {
    static func make() -> ExplorerViewController {
        return Container.shared.resolve(ExplorerViewController.self)!
    }
}

extension SignInViewController {
    static func make() -> SignInViewController {
        return Container.shared.resolve(SignInViewController.self)!
    }
}

extension SignUpViewController {
    static func make() -> SignUpViewController {
        return Container.shared.resolve(SignUpViewController.self)!
    }
}

extension SignUpCompleteViewController {
    static func make() -> SignUpCompleteViewController {
        return Container.shared.resolve(SignUpCompleteViewController.self)!
    }
}

extension MyPageViewController {
    static func make() -> MyPageViewController {
        return Container.shared.resolve(MyPageViewController.self)!
    }
}

extension UserInfoViewController {
    static func make() -> UserInfoViewController {
        return Container.shared.resolve(UserInfoViewController.self)!
    }
}

extension MyProjectViewController {
    static func make() -> MyProjectViewController {
        return Container.shared.resolve(MyProjectViewController.self)!
    }
}

extension ChangeMyInfoViewController {
    static func make() -> ChangeMyInfoViewController {
        return Container.shared.resolve(ChangeMyInfoViewController.self)!
    }
}

extension ChangePasswordViewController {
    static func make() -> ChangePasswordViewController {
        return Container.shared.resolve(ChangePasswordViewController.self)!
    }
}

extension SubscriptionListViewController {
    static func make() -> SubscriptionListViewController {
        return Container.shared.resolve(SubscriptionListViewController.self)!
    }
}

extension TransactionHistoryViewController {
    static func make() -> TransactionHistoryViewController {
        return Container.shared.resolve(TransactionHistoryViewController.self)!
    }
}

extension ProjectViewController {
    static func make(uri: String) -> ProjectViewController {
        return Container.shared.resolve(ProjectViewController.self, argument: uri)!
    }
}

extension ProjectInfoViewController {
    static func make(uri: String) -> ProjectInfoViewController {
        return Container.shared.resolve(ProjectInfoViewController.self, argument: uri)!
    }
}

extension ProjectSubscriptionViewController {
    static func make(uri: String) -> ProjectSubscriptionViewController {
        return Container.shared.resolve(ProjectSubscriptionViewController.self, argument: uri)!
    }
}

extension PostViewController {
    static func make(uri: String, postId: Int) -> PostViewController {
        return Container.shared.resolve(PostViewController.self, arguments: uri, postId)!
    }
}

extension PostHeaderViewController {
    static func make(postItem: PostModel, userInfo: UserModel) -> PostHeaderViewController {
        return Container.shared.resolve(PostHeaderViewController.self, arguments: postItem, userInfo)!
    }
}

extension PostFooterViewController {
    static func make(uri: String, postId: Int) -> PostFooterViewController {
        return Container.shared.resolve(PostFooterViewController.self, arguments: uri, postId)!
    }
}

extension SearchProjectViewController {
    static func make() -> SearchProjectViewController {
        return Container.shared.resolve(SearchProjectViewController.self)!
    }
}

extension CreateProjectViewController {
    static func make(uri: String) -> CreateProjectViewController {
        return Container.shared.resolve(CreateProjectViewController.self, argument: uri)!
    }
}

extension CreatePostViewController {
    static func make(uri: String, postId: Int) -> CreatePostViewController {
        return Container.shared.resolve(CreatePostViewController.self, arguments: uri, postId)!
    }
}

extension SponsorshipListViewController {
    static func make() -> SponsorshipListViewController {
        return Container.shared.resolve(SponsorshipListViewController.self)!
    }
}

extension SponsorshipHistoryViewController {
    static func make() -> SponsorshipHistoryViewController {
        return Container.shared.resolve(SponsorshipHistoryViewController.self)!
    }
}

extension CustomEmptyViewController {
    static func make(style: CustomEmptyViewStyle) -> CustomEmptyViewController {
        return Container.shared.resolve(CustomEmptyViewController.self, argument: style)!
    }
}

extension DepositViewController {
    static func make() -> DepositViewController {
        return Container.shared.resolve(DepositViewController.self)!
    }
}

extension SearchSponsorViewController {
    static func make() -> SearchSponsorViewController {
        return Container.shared.resolve(SearchSponsorViewController.self)!
    }
}

extension SendDonationViewController {
    static func make(loginId: String) -> SendDonationViewController {
        return Container.shared.resolve(SendDonationViewController.self, argument: loginId)!
    }
}

extension ConfirmDonationViewController {
    static func make(loginId: String, sendAmount: Int) -> ConfirmDonationViewController {
        return Container.shared.resolve(ConfirmDonationViewController.self, arguments: loginId, sendAmount)!
    }
}

extension CheckPincodeViewController {
    static func make(style: CheckPincodeStyle) -> CheckPincodeViewController {
        return Container.shared.resolve(CheckPincodeViewController.self, argument: style)!
    }
}

extension RegisterPincodeViewController {
    static func make() -> RegisterPincodeViewController {
        return Container.shared.resolve(RegisterPincodeViewController.self)!
    }
}

extension ConfirmPincodeViewController {
    static func make(inputPincode: String) -> ConfirmPincodeViewController {
        return Container.shared.resolve(ConfirmPincodeViewController.self, argument: inputPincode)!
    }
}
