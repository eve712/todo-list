//
//  SectionViewController.swift
//  TODOList
//
//  Created by Issac on 2021/04/06.
//

import UIKit

protocol CellInfoDelegate {
    func sendData()
}

class State {
    var subject: [String]
    var body: [String]
    
    init() {
        self.subject = [String]()
        self.body = [String]()
    }
}

enum Mode {
    case willTODO
    case doingTODO
    case completeTODO
}

class SectionViewController: UIViewController {
    @IBOutlet weak var TODOTableView: UITableView!
    @IBOutlet var TODOTableViewDataSource: TODOTableViewDataSource!
    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var TODOCount: UILabel!
    @IBOutlet weak var addButton: UIButton!
    private var sectionMode: Mode?
    
    let viewModel = WillTODOViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TODOTableViewDataSource.bind(to: viewModel.value)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.value.value = ["HoHo", "He"]
//        TODOTableView.reloadData()
        
    }
    
    func setSectionMode(mode: Mode) {
        self.sectionMode = mode
    }
}


