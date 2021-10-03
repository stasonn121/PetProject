//
//  PostsViewController.swift
//  Pet-project
//
//  Created by Станислав Борисов on 19.09.2021.
//

import UIKit

class PostsViewController: BaseViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var postsTableView: UITableView!
    
    var mediator: PostsMediator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediator = PostsMediator(viewController: self)
    }

}
