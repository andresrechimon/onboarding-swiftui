//
//  OnboardingView.swift
//  onboarding-swiftui
//
//  Created by Andrés Rechimon on 07/05/2024.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentPageIndex: Int = 0
    
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "first")),
        UIHostingController(rootView: Subview(imageString: "second")),
        UIHostingController(rootView: Subview(imageString: "third")),
        UIHostingController(rootView: Subview(imageString: "fourth"))
    ]
    
    var titles = [
        "Write Your Story", "Get Your Cab", "Get Your Ticket", "News Update"
    ]
    
    var captions = [
        "Add personal records, diary entries and stories. And access them anytime.", "Book cabs from your location instantly. No surge pricing and high-rated drivers.", "Download and save your e-ticket from the app. Scan through the details of the ticket.", "Check out the latest news and updates directly on the app."
    ]
    
    var body: some View {
        VStack {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                .frame(height: 600)
            
            Group {
                Text(titles[currentPageIndex])
                    .font(.title)
                
                Text(captions[currentPageIndex])
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 50, alignment: .leading)
                    .lineLimit(nil)
            }
            //.padding()
            
            HStack(spacing: 150) {
                PageControl(currentPageIndex: $currentPageIndex, numberOfPages: subviews.count)
                
                Button {
                    nextSlide()
                } label: {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(30)
                }
            }
            .padding(50)
        }
    }
    
    func nextSlide() {
        if self.currentPageIndex + 1 == self.subviews.count {
            self.currentPageIndex = 0
        } else {
            self.currentPageIndex += 1
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
