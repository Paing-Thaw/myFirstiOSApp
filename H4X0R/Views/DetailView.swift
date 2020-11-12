//
//  DetailView.swift
//  H4X0R
//
//  Created by June's MacBook on 11/12/20.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}


