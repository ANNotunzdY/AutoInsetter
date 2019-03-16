//
//  InsetCalculator.swift
//  AutoInsetter
//
//  Created by Merrick Sapsford on 16/03/2019.
//  Copyright © 2019 UI At Six. All rights reserved.
//

import UIKit

protocol InsetCalculator: class {
    
    func calculateContentInset(from spec: AutoInsetSpec) -> UIEdgeInsets?

    func calculateContentOffset(from spec: AutoInsetSpec) -> CGPoint?
    
    func calculateScrollIndicatorInsets(from spec: AutoInsetSpec) -> UIEdgeInsets?
}

internal class ViewInsetCalculator<InsetView: UIScrollView>: InsetCalculator {
    
    let view: InsetView
    let viewController: UIViewController
    
    init(view: InsetView, viewController: UIViewController) {
        self.view = view
        self.viewController = viewController
        
        viewController.view.layoutIfNeeded()
    }
    
    func calculateContentInset(from spec: AutoInsetSpec) -> UIEdgeInsets? {
        assert(false, "Override in subclass")
        return nil
    }
    
    func calculateContentOffset(from spec: AutoInsetSpec) -> CGPoint? {
        assert(false, "Override in subclass")
        return nil
    }
    
    func calculateScrollIndicatorInsets(from spec: AutoInsetSpec) -> UIEdgeInsets? {
        assert(false, "Override in subclass")
        return nil
    }
}
