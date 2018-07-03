//
//  DebugWidget.swift
//  demo
//
//  Created by liman on 26/11/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

public class WindowHelper: NSObject {
    public static let shared = WindowHelper()
    var window: DebugWidgetWindow?
    lazy var vc = DebugWidgetViewController()
    var displayedList = false
 
    private override init() {
        self.window = DebugWidgetWindow(frame: UIScreen.main.bounds)
        super.init()
    }

    public func enable() {
        if self.window?.rootViewController != self.vc {
            self.window?.rootViewController = self.vc
            self.window?.delegate = self
            self.window?.isHidden = false
        }
    }

    public func disable() {
        if self.window?.rootViewController != nil {
            self.window?.rootViewController = nil
            self.window?.delegate = nil
            self.window?.isHidden = true
        }
    }
}
