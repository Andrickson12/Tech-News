//
//  DetailView.swift
//  Tech News
//
//  Created by Andrickson Coste on 5/5/20.
//  Copyright © 2020 Qalab Inc. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
