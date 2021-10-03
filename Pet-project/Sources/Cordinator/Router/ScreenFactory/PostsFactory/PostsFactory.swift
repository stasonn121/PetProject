//
//  PostsFactory.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class PostsFactory {
    static func getPostsPage() -> PostsViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2") as! PostsViewController
        return vc
    }
}
