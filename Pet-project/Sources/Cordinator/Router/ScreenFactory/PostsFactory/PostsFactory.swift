//
//  PostsFactory.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class PostsFactory {
    static func getPostsPage(applicationDependency: ApplicationDependency) -> PostViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2") as! PostViewController
        
        vc.viewModel = PostViewModel(applicationDependency: applicationDependency)
        return vc
    }
}
