//
//  RatingView.swift
//  
//
//  Created by Dionne Lie-Sam-Foek on 06/03/2022.
//

import SwiftUI

public struct RatingView: View {
    let rating: Int
    var maxRating: Int
    var spacing: CGFloat?
    
    public init(rating: Int, maxRating: Int = 5, spacing: CGFloat? = nil) {
        self.rating    = rating
        self.maxRating = maxRating
        self.spacing   = spacing
    }
    
    public var body: some View {
        HStack(spacing: spacing) {
            ForEach(1..<maxRating + 1) { number in
                Image(systemName: number > rating ? "star" : "star.fill")
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 3, maxRating: 5, spacing: 2)
            .foregroundColor(.orange)
            .font(.system(.headline, design: .rounded))
    }
}
