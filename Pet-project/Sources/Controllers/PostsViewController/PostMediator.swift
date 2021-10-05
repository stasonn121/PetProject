//
//  Mediator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 19.09.2021.
//

import UIKit

class PostMediator {
    
    weak var viewController: PostViewController?
    
    init(viewController: PostViewController) {
        self.viewController = viewController
    }
    
}

extension PostViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

extension PostViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
}
