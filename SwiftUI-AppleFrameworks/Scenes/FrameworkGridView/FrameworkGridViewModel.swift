//
//  FrameworkGridViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Diki Dwi Diro on 19/10/23.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    @Published var isShowingDetailView = false
    
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
}
