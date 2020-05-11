//
//  MainViewController.swift
//  soundcloud Player
//
//  Created by Horváth Balázs on 2017. 03. 01..
//  Copyright © 2017. Horváth Balázs. All rights reserved.
//

import WebKit

class WebViewController: NSViewController {
    // MARK: Properties
    private lazy var webView = WKWebView()
    private let soundCloudUrl = URL(string: "https://soundcloud.com/stream")!

    // MARK: Outlets
    @IBOutlet var containerView: NSView!

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addWebView()
        loadSoundCloudUrl()
    }
}

// MARK: - Screen configuration
extension WebViewController {
    private func addWebView() {
        webView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(webView)

        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: containerView.topAnchor),
            webView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            webView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            webView.rightAnchor.constraint(equalTo: containerView.rightAnchor)
        ])
    }

    private func loadSoundCloudUrl() {
        let urlRequest = URLRequest(url: soundCloudUrl)
        webView.load(urlRequest)
    }
}
