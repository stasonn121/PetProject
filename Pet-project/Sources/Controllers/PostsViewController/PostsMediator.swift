//
//  Mediator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 19.09.2021.
//

import UIKit

class PostsMediator {
    
    weak var viewController: PostsViewController?
    
    init(viewController: PostsViewController) {
        self.viewController = viewController
    }
    
}

extension PostsViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

extension PostsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
}
