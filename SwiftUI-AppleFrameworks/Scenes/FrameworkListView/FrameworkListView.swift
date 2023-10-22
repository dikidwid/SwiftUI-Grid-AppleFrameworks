//
//  FrameworkGridView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Diki Dwi Diro on 19/10/23.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkListViewModel()
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("Apple Frameworks")
            }
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
