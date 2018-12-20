//
//  ListTicketViewController.swift
//  SwiftExamGit
//
//  Created by Josue on 12/19/18.
//  Copyright © 2018 tcs. All rights reserved.
//  

import UIKit

class ListTicketViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var tableView = UITableView()
    var listTicket:Array<Any> = Array()
    
    let cellId = "ticketCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.frame = self.view.frame
        self.tableView.register(TicketTableViewCell.self, forCellReuseIdentifier: cellId)
        self.view.addSubview(self.tableView)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        //[tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        self.tableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    
    func setListTicket(lista:Array<Any>) {
        self.listTicket = lista
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //agrega el numero de filas del json
        return self.listTicket.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TicketTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellId) as! TicketTableViewCell
        cell.addViews()
        cell.loadWithTicket(tickets: self.listTicket[indexPath.row] as! Ticket)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
