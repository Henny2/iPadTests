//
//  FittingViewExample.swift
//  iPadTests
//
//  Created by Henrieke Baunack on 6/9/24.
//

import SwiftUI

struct FittingViewExample: View {
    var body: some View {
        ViewThatFits {
            Rectangle().frame(width: 500, height: 200)
            
            // if the first view does not fit, it goes to the next one
            
            Circle().frame(width:200, height:200)
        }
    }
}

#Preview {
    FittingViewExample()
}
