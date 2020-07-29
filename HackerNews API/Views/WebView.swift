//
//  WebView.swift
//  HackerNews API
//
//  Created by Pritivi S Chhabria on 7/27/20.
//  Copyright © 2020 Chiffonier Inc. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let safeURL = URL(string: safeString){
                let request = URLRequest(url: safeURL)
                uiView.load(request)
            }
        }
    }
    
}
