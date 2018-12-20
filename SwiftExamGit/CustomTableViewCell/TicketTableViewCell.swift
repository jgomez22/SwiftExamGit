//
//  TicketTableViewCell.swift
//  SwiftExamGit
//
//  Created by Josue on 12/19/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import UIKit
import SDWebImage
    
class TicketTableViewCell: UITableViewCell {
    
    let ivFoto = UIImageView()
    let lblTitulo = UILabel()
    let lblHora = UILabel()
    let lblLugar = UILabel()
    let lblMes = UILabel()
    let lblDia = UILabel()
    let boxCabecera = UIView()
    let boxCuerpo = UIView()
    let ticketView = UIView()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func addViews() {
        self .addSubview(ticketView)
        ticketView.backgroundColor = .gray
        self .ticketView.addSubview(ivFoto)
        self .ticketView.addSubview(lblTitulo)
        self .ticketView.addSubview(lblHora)
        self .ticketView.addSubview(lblLugar)
        self .ticketView.addSubview(lblMes)
        self .ticketView.addSubview(lblDia)
        self .ticketView.addSubview(boxCabecera)
        self .ticketView.addSubview(boxCuerpo)
        
        var  constraints:Array<NSLayoutConstraint>=Array()
        var constraint2:Array<NSLayoutConstraint>=Array()
        
        
        
        
        
        //MARK: Constraint:contenedor
        
        ticketView.translatesAutoresizingMaskIntoConstraints = false
        
        constraints.append(NSLayoutConstraint(item: ticketView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 20))
        
        constraints.append(NSLayoutConstraint(item: ticketView, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 20))
        
        constraints.append(NSLayoutConstraint(item: ticketView, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: -20))
        
        constraints.append(NSLayoutConstraint(item: ticketView, attribute: NSLayoutConstraint.Attribute.bottom , relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -20))
        
        //MARK:constraint imagen
        
        ivFoto.translatesAutoresizingMaskIntoConstraints = false
        
        constraint2.append(NSLayoutConstraint(item: ivFoto, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: ticketView, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 15))
        
        constraint2.append(NSLayoutConstraint(item: ivFoto, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: ticketView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 15))
        
        constraint2.append(NSLayoutConstraint(item: ivFoto, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1.0, constant: 80))
        
        constraint2.append(NSLayoutConstraint(item: ivFoto, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1.0, constant: 80))
        
        
        //MARK:constraint titulo
        
        lblTitulo.translatesAutoresizingMaskIntoConstraints = false
        
        constraint2.append(NSLayoutConstraint(item: lblTitulo, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: ivFoto, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 25))
        
        constraint2.append(NSLayoutConstraint(item: lblTitulo, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: ivFoto, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0))
        
        
        //MARK:constraint Hora
        
        lblHora.translatesAutoresizingMaskIntoConstraints = false
        
        constraint2.append(NSLayoutConstraint(item: lblHora, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: ticketView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 100))
        
        constraint2.append(NSLayoutConstraint(item: lblHora, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: ivFoto, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 25))
        
        
        //MARK:constraint Lugar
        
        lblLugar.translatesAutoresizingMaskIntoConstraints = false
        
        constraint2.append(NSLayoutConstraint(item: lblLugar, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: lblHora, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 15))
        
        constraint2.append(NSLayoutConstraint(item: lblLugar, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: lblHora, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 0))
        
       
        
        
        
        
        
        
        
        self.addConstraints(constraints)
        self.ticketView.addConstraints(constraint2)
       
    }
    
    
    func loadFunctionHour(inicio:String, final:String) {
        
        let dataformateada:DateFormatter = DateFormatter()
        dataformateada.dateFormat = "HH:mm:ss"
        
        let horaStart = dataformateada.date(from: inicio)
        let horaEnd = dataformateada.date(from: final)
        
        
        let formateada = DateFormatter()
        formateada.dateFormat = "HH:mm a"
        
        let horainicio:String = formateada.string(from: horaStart!)
        let horafinal:String = formateada.string(from: horaEnd!)
        
        let funcion = horainicio +  " - " + horafinal
        
        lblHora.text = funcion
        
        
        
        
    }
    
    func loadTitle(title:String){
        lblTitulo.text=title
    }
    
    func loadDayOfDate(date:String){
        lblDia.text=date
    }
    
    func loadMonthOfDate(date:String){
        lblMes.text=date
    }
    
    
    
    
    func loadImage(url_image:String){
        ivFoto.sd_setImage(with: URL(string: url_image))
        ivFoto.layer.cornerRadius = 80.00/2;
        ivFoto.layer.masksToBounds = true;
    }
    
    func loadFunctionPlace(lugar:String){
        lblLugar.text=lugar
    }
    func loadWithTicket(tickets:Ticket){
        /*
       
        
        
        lblMes.text = tickets.date
        */
        
        self.loadTitle(title: tickets.title)
        self.loadDayOfDate(date: tickets.date)
        self.loadMonthOfDate(date: tickets.date)
        self.loadFunctionHour(inicio: tickets.startTime, final: tickets.endTime)
        self.loadImage(url_image: tickets.url_img)
        self.loadFunctionPlace(lugar: tickets.address)
    }

}
