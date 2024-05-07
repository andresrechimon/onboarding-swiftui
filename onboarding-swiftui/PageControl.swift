//
//  PageControl.swift
//  onboarding-swiftui
//
//  Created by Andrés Rechimon on 07/05/2024.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    @Binding var currentPageIndex: Int
    var numberOfPages: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.currentPageIndicatorTintColor = UIColor.red
        control.pageIndicatorTintColor = UIColor.black
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
}
