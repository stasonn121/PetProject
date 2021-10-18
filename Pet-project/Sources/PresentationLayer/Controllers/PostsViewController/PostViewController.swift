//
//  PostsViewController.swift
//  Pet-project
//
//  Created by Станислав Борисов on 19.09.2021.
//

import UIKit

class PostViewController: BaseViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var postsTableView: UITableView!
    
    var viewModel: PostViewModelType!
    var mediator: PostMediator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediator = PostMediator(viewController: self)
    }

}
