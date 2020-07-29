//
//  WebsiteView.swift
//  HackerNews API
//
//  Created by Pritivi S Chhabria on 7/27/20.
//  Copyright © 2020 Chiffonier Inc. All rights reserved.
//

import SwiftUI


struct WebsiteView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct WebsiteView_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteView(url: "https://www.google.com")
    }
}
