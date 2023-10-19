//
//  AFButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Diki Dwi Diro on 19/10/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(.title2, weight: .semibold))
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
