//
//  MainViewController.swift
//  soundcloud Player
//
//  Created by Horváth Balázs on 2017. 03. 01..
//  Copyright © 2017. Horváth Balázs. All rights reserved.
//

import Cocoa
import WebKit

class WebViewController: NSViewController {
    // MARK: Constants
    let soundCloudUrl = URL(string: "https://soundcloud.com/stream")!

    // MARK: Outlets
    @IBOutlet weak var webView: WebView!

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWebView()
    }
}

// MARK: - Screen configuration
extension WebViewController {
    func setupWebView() {
        let reqest = URLRequest(url: soundCloudUrl)
        webView.mainFrame.load(reqest)
    }
}
