//
//  ViewControllerAssembly.swift
//  PictionView
//
//  Created by jhseo on 17/06/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import Swinject
import UIKit
import PictionSDK

final class ViewControllerAssembly: Assembly {
    func assemble(container: Container) {

        container.register(ExplorerViewController.self) { resolver in
            let vc = Storyboard.Explorer.instantiate(ExplorerViewController.self)
            vc.viewModel = resolver.resolve(ExplorerViewModel.self)!
            return vc
        }

        container.register(SignInViewController.self) { resolver in
            let vc = Storyboard.SignIn.instantiate(SignInViewController.self)
            vc.viewModel = resolver.resolve(SignInViewModel.self)!
            return vc
        }

        container.register(SignUpViewController.self) { resolver in
            let vc = Storyboard.SignUp.instantiate(SignUpViewController.self)
            vc.viewModel = resolver.resolve(SignUpViewModel.self)!
            return vc
        }

        container.register(SignUpCompleteViewController.self) { resolver in
            let vc = Storyboard.SignUpComplete.instantiate(SignUpCompleteViewController.self)
            vc.viewModel = resolver.resolve(SignUpCompleteViewModel.self)!
            return vc
        }

        container.register(MyPageViewController.self) { resolver in
            let vc = Storyboard.MyPage.instantiate(MyPageViewController.self)
            vc.viewModel = resolver.resolve(MyPageViewModel.self)!
            return vc
        }

        container.register(UserInfoViewController.self) { resolver in
            let vc = Storyboard.UserInfo.instantiate(UserInfoViewController.self)
            vc.viewModel = resolver.resolve(UserInfoViewModel.self)!
            return vc
        }

        container.register(MyProjectViewController.self) { resolver in
            let vc = Storyboard.MyProject.instantiate(MyProjectViewController.self)
            vc.viewModel = resolver.resolve(MyProjectViewModel.self)!
            return vc
        }

        container.register(ChangeMyInfoViewController.self) { resolver in
            let vc = Storyboard.ChangeMyInfo.instantiate(ChangeMyInfoViewController.self)
            vc.viewModel = resolver.resolve(ChangeMyInfoViewModel.self)!
            return vc
        }

        container.register(ChangePasswordViewController.self) { resolver in
            let vc = Storyboard.ChangePassword.instantiate(ChangePasswordViewController.self)
            vc.viewModel = resolver.resolve(ChangePasswordViewModel.self)!
            return vc
        }

        container.register(SubscriptionListViewController.self) { resolver in
            let vc = Storyboard.SubscriptionList.instantiate(SubscriptionListViewController.self)
            vc.viewModel = resolver.resolve(SubscriptionListViewModel.self)!
            return vc
        }

        container.register(TransactionHistoryViewController.self) { resolver in
            let vc = Storyboard.TransactionHistory.instantiate(TransactionHistoryViewController.self)
            vc.viewModel = resolver.resolve(TransactionHistoryViewModel.self)!
            return vc
        }

        container.register(ProjectViewController.self) { (resolver, uri: String) in
            let vc = Storyboard.Project.instantiate(ProjectViewController.self)
            vc.viewModel = resolver.resolve(ProjectViewModel.self, argument: uri)!
            return vc
        }

        container.register(ProjectInfoViewController.self) { (resolver, uri: String) in
            let vc = Storyboard.ProjectInfo.instantiate(ProjectInfoViewController.self)
            vc.viewModel = resolver.resolve(ProjectInfoViewModel.self, argument: uri)!
            return vc
        }

        container.register(PostViewController.self) { (resolver, uri: String, postId: Int) in
            let vc = Storyboard.Post.instantiate(PostViewController.self)
            vc.viewModel = resolver.resolve(PostViewModel.self, arguments: uri, postId)!
            return vc
        }

        container.register(PostHeaderViewController.self) { (resolver, postItem: PostModel, userInfo: UserModel) in
            let vc = Storyboard.PostHeader.instantiate(PostHeaderViewController.self)
            vc.viewModel = resolver.resolve(PostHeaderViewModel.self, arguments: postItem, userInfo)!
            return vc
        }

        container.register(PostFooterViewController.self) { (resolver, uri: String, postId: Int) in
            let vc = Storyboard.PostFooter.instantiate(PostFooterViewController.self)
            vc.viewModel = resolver.resolve(PostFooterViewModel.self, arguments: uri, postId)!
            return vc
        }

        container.register(SearchProjectViewController.self) { resolver in
            let vc = Storyboard.SearchProject.instantiate(SearchProjectViewController.self)
            vc.viewModel = resolver.resolve(SearchProjectViewModel.self)!
            return vc
        }

        container.register(CreateProjectViewController.self) { (resolver, uri: String) in
            let vc = Storyboard.CreateProject.instantiate(CreateProjectViewController.self)
            vc.viewModel = resolver.resolve(CreateProjectViewModel.self, argument: uri)!
            return vc
        }

        container.register(CreatePostViewController.self) { (resolver, uri: String, postId: Int) in
            let vc = Storyboard.CreatePost.instantiate(CreatePostViewController.self)
            vc.viewModel = resolver.resolve(CreatePostViewModel.self, arguments: uri, postId)!
            return vc
        }

        container.register(SponsorshipListViewController.self) { resolver in
            let vc = Storyboard.SponsorshipList.instantiate(SponsorshipListViewController.self)
            vc.viewModel = resolver.resolve(SponsorshipListViewModel.self)!
            return vc
        }

        container.register(SponsorshipHistoryViewController.self) { resolver in
            let vc = Storyboard.SponsorshipHistory.instantiate(SponsorshipHistoryViewController.self)
            vc.viewModel = resolver.resolve(SponsorshipHistoryViewModel.self)!
            return vc
        }

        container.register(CustomEmptyViewController.self) { (resolver, style: CustomEmptyViewStyle) in
            let vc = Storyboard.CustomEmptyView.instantiate(CustomEmptyViewController.self)
            vc.viewModel = resolver.resolve(CustomEmptyViewModel.self, argument: style)!
            return vc
        }

        container.register(DepositViewController.self) { resolver in
            let vc = Storyboard.Deposit.instantiate(DepositViewController.self)
            vc.viewModel = resolver.resolve(DepositViewModel.self)!
            return vc
        }

        container.register(SearchSponsorViewController.self) { resolver in
            let vc = Storyboard.SearchSponsor.instantiate(SearchSponsorViewController.self)
            vc.viewModel = resolver.resolve(SearchSponsorViewModel.self)!
            return vc
        }

        container.register(SendDonationViewController.self) { (resolver, loginId: String) in
            let vc = Storyboard.SendDonation.instantiate(SendDonationViewController.self)
            vc.viewModel = resolver.resolve(SendDonationViewModel.self, argument: loginId)!
            return vc
        }

        container.register(ConfirmDonationViewController.self) { (resolver, loginId: String, sendAmount: Int) in
            let vc = Storyboard.ConfirmDonation.instantiate(ConfirmDonationViewController.self)
            vc.viewModel = resolver.resolve(ConfirmDonationViewModel.self, arguments: loginId, sendAmount)!
            return vc
        }

        container.register(CheckPincodeViewController.self) { (resolver, style: CheckPincodeStyle) in
            let vc = Storyboard.CheckPincode.instantiate(CheckPincodeViewController.self)
            vc.viewModel = resolver.resolve(CheckPincodeViewModel.self, argument: style)!
            return vc
        }

        container.register(RegisterPincodeViewController.self) { resolver in
            let vc = Storyboard.RegisterPincode.instantiate(RegisterPincodeViewController.self)
            vc.viewModel = resolver.resolve(RegisterPincodeViewModel.self)!
            return vc
        }

        container.register(ConfirmPincodeViewController.self) { (resolver, inputPincode: String) in
            let vc = Storyboard.ConfirmPincode.instantiate(ConfirmPincodeViewController.self)
            vc.viewModel = resolver.resolve(ConfirmPincodeViewModel.self, argument: inputPincode)!
            return vc
        }
    }
}
