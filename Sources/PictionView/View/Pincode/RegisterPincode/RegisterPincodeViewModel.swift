//
//  RegisterPincodeViewModel.swift
//  PictionSDK
//
//  Created by jhseo on 22/08/2019.
//  Copyright © 2019 Piction Network. All rights reserved.
//

import RxSwift
import RxCocoa

final class RegisterPincodeViewModel: ViewModel {

    init() {}

    struct Input {
        let viewWillAppear: Driver<Void>
        let pincodeTextFieldDidInput: Driver<String>
        let closeBtnDidTap: Driver<Void>
    }

    struct Output {
        let viewWillAppear: Driver<Void>
        let pincodeText: Driver<String>
        let dismissViewController: Driver<Void>
    }

    func build(input: Input) -> Output {
        return Output(
            viewWillAppear: input.viewWillAppear,
            pincodeText: input.pincodeTextFieldDidInput,
            dismissViewController: input.closeBtnDidTap
        )
    }
}
