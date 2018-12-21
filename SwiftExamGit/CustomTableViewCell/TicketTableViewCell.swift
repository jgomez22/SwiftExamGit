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
    
    //contenedor
    let ticketView:UIView=UIView()
    
    //contenedor para la fecha
    let boxCabecera:UIView=UIView()
    let boxCuerpo:UIView=UIView()
    
    //labels
    let lblTitulo:UILabel=UILabel()
    let lblHora:UILabel=UILabel()
    let lblLugar:UILabel=UILabel()
    let lblDia:UILabel=UILabel()
    let lblMes:UILabel=UILabel()
    //imagen
    let ivFoto:UIImageView=UIImageView()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //MARK: - addConstraint
    func addViews() {
        
        //addContentColor
        self.ticketView.backgroundColor=UIColor.white.withAlphaComponent(0.1)
        self.boxCabecera.backgroundColor = .red
        self.boxCuerpo.backgroundColor = .white
        
        //addtoView
        self.addSubview(ticketView)
        self.ticketView.addSubview(ivFoto)
        self.ticketView.addSubview(lblTitulo)
        self.ticketView.addSubview(boxCabecera)
        self.ticketView.addSubview(boxCuerpo)
        self.ticketView.addSubview(lblDia)
        self.ticketView.addSubview(lblMes)
        self.ticketView.addSubview(lblHora)
        self.ticketView.addSubview(lblLugar)
        
        var constraints:Array<NSLayoutConstraint>=Array()
        var constraint2:Array<NSLayoutConstraint>=Array()
        
        //MARK: constraintContenedorPrincipal
        self.ticketView.translatesAutoresizingMaskIntoConstraints = false
        //top
        constraints.append(NSLayoutConstraint(item: self.ticketView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 10.0))
        //bot
        constraints.append(NSLayoutConstraint(item: self.ticketView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -10.0))
        //lead
        constraints.append(NSLayoutConstraint(item: self.ticketView, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 10.0))
        //trai
        constraints.append(NSLayoutConstraint(item: self.ticketView, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: -10.0))
        
        //MARK: constraintImagen
        self.ivFoto.translatesAutoresizingMaskIntoConstraints = false
        //top
        constraint2.append(NSLayoutConstraint(item: self.ivFoto, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.ticketView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 15.0))
        //leading
        constraint2.append(NSLayoutConstraint(item: self.ivFoto, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.ticketView, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 15.0))
        //width
        constraint2.append(NSLayoutConstraint(item: self.ivFoto, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1.0, constant: 80.0))
        //height
        constraint2.append(NSLayoutConstraint(item: self.ivFoto, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1.0, constant: 80.0))
        
        //MARK: constraintTitulo
        self.lblTitulo.translatesAutoresizingMaskIntoConstraints = false
        //centrado Y con respecto a ivFoto
        constraint2.append(NSLayoutConstraint(item: self.lblTitulo, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.ivFoto, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0.0))
        //leading
        constraint2.append(NSLayoutConstraint(item: self.lblTitulo, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.ivFoto, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: 15.0))
        
        //MARK: constraintCabecera
        self.boxCabecera.translatesAutoresizingMaskIntoConstraints = false
        //top referente a ivFoto
        constraint2.append(NSLayoutConstraint(item: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.ivFoto, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 15.0))
        //centrado en X con respecto a ivFoto
        constraint2.append(NSLayoutConstraint(item: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.ivFoto, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0.0))
        //width
        constraint2.append(NSLayoutConstraint(item: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1.0, constant: 60.0))
        //height
        constraint2.append(NSLayoutConstraint(item: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1.0, constant: 20.0))
        
        //MARK: constraintCuerpo
        self.boxCuerpo.translatesAutoresizingMaskIntoConstraints = false
        //top referente a ivFoto
        constraint2.append(NSLayoutConstraint(item: self.boxCuerpo, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0.0))
        //centrado en X con respecto a ivFoto
        constraint2.append(NSLayoutConstraint(item: self.boxCuerpo, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0.0))
        //width
        constraint2.append(NSLayoutConstraint(item: self.boxCuerpo, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1.0, constant: 60.0))
        //height
        constraint2.append(NSLayoutConstraint(item: self.boxCuerpo, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1.0, constant: 40.0))
        
        //MARK: constraintDia
        self.lblDia.translatesAutoresizingMaskIntoConstraints = false
        //centrado en X respecto a cabecera
        constraint2.append(NSLayoutConstraint(item: self.lblDia, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0.0))
        //centrado en Y respecto a cabecera
        constraint2.append(NSLayoutConstraint(item: self.lblDia, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0.0))
        
        //MARK: constraintMes
        self.lblMes.translatesAutoresizingMaskIntoConstraints = false
        //centrado en X respecto a cabecera
        constraint2.append(NSLayoutConstraint(item: self.lblMes, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCuerpo, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0.0))
        //centrado en Y respecto a cabecera
        constraint2.append(NSLayoutConstraint(item: self.lblMes, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCuerpo, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0.0))
        
        //MARK: constraintHoraFuncion
        self.lblHora.translatesAutoresizingMaskIntoConstraints = false
        //top con respecto al top de cabecera
        constraint2.append(NSLayoutConstraint(item: self.lblHora, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.boxCabecera, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0.0))
        //leading con respecto al leading de title
        constraint2.append(NSLayoutConstraint(item: self.lblHora, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.lblTitulo, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 0.0))
        
        //MARK: constraintLugarFuncion
        self.lblLugar.translatesAutoresizingMaskIntoConstraints = false
        //
        constraint2.append(NSLayoutConstraint(item: self.lblLugar, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.lblHora, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 10.0))
        //
        constraint2.append(NSLayoutConstraint(item: self.lblLugar, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.lblHora, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 0.0))
        
        self.addConstraints(constraints)
        self.ticketView.addConstraints(constraint2)
    }
    //MARK: - Carga de valores Ticket
    func loadWithTicket(tickets:Ticket){
        self.loadTitle(titulo: tickets.title)
        self.loadDayOfDate(fecha: tickets.date)
        self.loadMonthOfDate(fecha: tickets.date)
        self.loadFunctionHour(inicio: tickets.startTime, fin: tickets.endTime)
        self.loadImage(imagen: tickets.url_img)
        self.loadFunctionPlace(lugar: tickets.address)
    }
    func loadFunctionPlace(lugar:String){
        lblLugar.textColor = .white
        lblLugar.text=lugar
        lblLugar.font = UIFont.italicSystemFont(ofSize: 16.0)
    }
    
    func loadFunctionHour(inicio:String,fin:String){

        let formatoHora:DateFormatter = DateFormatter()
        formatoHora.dateFormat = "HH:mm:ss"
        let horaInicio = formatoHora.date(from: inicio)
        let horaTermino = formatoHora.date(from: fin)
        
        let formato12H:DateFormatter = DateFormatter()
        formato12H.dateFormat = "HH:mm a"
        
        let i:String = formato12H.string(from: horaInicio!)
        let f:String = formato12H.string(from: horaTermino!)
        
        lblHora.textColor = .white
        lblHora.font = UIFont.systemFont(ofSize: 16.0)
        lblHora.text=i+" - "+f
    }
    
    func loadTitle(titulo:String) {
        lblTitulo.textColor = .white
        lblTitulo.font = UIFont.boldSystemFont(ofSize: 24.0)
        lblTitulo.text=titulo
    }
    
    func loadDayOfDate(fecha:String){
        
        let formatoFecha:DateFormatter=DateFormatter()
        formatoFecha.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let fecha:Date=formatoFecha.date(from: fecha)!
        let formatoDia:DateFormatter=DateFormatter()
        formatoDia.dateFormat = "dd"
        let dia:String = formatoDia.string(from: fecha)
        lblDia.textColor = .white
        lblDia.font = UIFont.boldSystemFont(ofSize: 18.0)
        lblDia.text=dia
    }
    
    func loadMonthOfDate(fecha:String){
        
        let formatoFecha:DateFormatter=DateFormatter()
        formatoFecha.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let fecha:Date=formatoFecha.date(from: fecha)!
        let formatoDia:DateFormatter=DateFormatter()
        formatoDia.dateFormat = "MMM"
        let mes:String = formatoDia.string(from: fecha)
        lblMes.textColor = .black
        lblMes.text=mes
        lblMes.font = UIFont.boldSystemFont(ofSize: 18.0)
    }
    
    func loadImage(imagen:String){
        self.ivFoto.sd_setImage(with: URL(string: imagen))
        self.ivFoto.layer.cornerRadius = 80.00/2;
        self.ivFoto.layer.masksToBounds = true;
    }

}
