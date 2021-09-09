//
//  ViewController.swift
//  SuperAlcoholic
//
//  Created by dmitry on 08.07.2021.
//

import UIKit

class SearchController: UIViewController {

    //MARK:  - UI
    private lazy var cocktailTV: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .clear
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 0
        tv.separatorStyle = .none
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tv
    }()
    
    //MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "search"
        self.view.backgroundColor = .systemPink
    }

}

private extension SearchController{
    
    func setup(){
        cocktailTV.dataSource = self
        
        self.view.addSubview(cocktailTV)
        
        NSLayoutConstraint.activate([
            cocktailTV.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            cocktailTV.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            cocktailTV.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            cocktailTV.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

extension SearchController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cocktailTV.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        switch indexPath.row {
        case 0 :
            cell.backgroundColor = .systemTeal
        case 1 :
            cell.backgroundColor = .systemBlue
        case 2 :
            cell.backgroundColor = .systemGray
        default :
            break
        }
        return cell
    }
    
    
}
