//
//  UserTableViewCell.swift
//  One more table view
//
//  Created by Артём Козлов on 07.02.2024.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    private lazy var flagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var countryNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var valetNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        label.textColor = UIColor.gray
        return label
    }()
    private lazy var courseOfValetLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16,weight: .bold)
        
        return label
    }()
    private lazy var courseParamLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        label.textColor = UIColor.gray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cellLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func cellLayout() {
        
        guard flagImageView.superview == nil else { return }
        
        contentView.addSubview(flagImageView)
        contentView.addSubview(valetNameLabel)
        contentView.addSubview(countryNameLabel)
        contentView.addSubview(courseOfValetLabel)
        contentView.addSubview(courseParamLabel)
        
        NSLayoutConstraint.activate([
            flagImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            flagImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            flagImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            flagImageView.widthAnchor.constraint(equalToConstant: 50),
            
            countryNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            countryNameLabel.leadingAnchor.constraint(equalTo: flagImageView.trailingAnchor, constant: 8),
            countryNameLabel.trailingAnchor.constraint(equalTo: courseOfValetLabel.leadingAnchor, constant: -8),
            
            valetNameLabel.topAnchor.constraint(equalTo: countryNameLabel.bottomAnchor, constant: 2),
            valetNameLabel.leadingAnchor.constraint(equalTo: flagImageView.trailingAnchor, constant: 8),
            valetNameLabel.trailingAnchor.constraint(equalTo: courseOfValetLabel.leadingAnchor, constant: -8),
            
            courseOfValetLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            courseOfValetLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            courseParamLabel.topAnchor.constraint(equalTo: valetNameLabel.topAnchor),
            courseParamLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            courseParamLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }
    
    func configure(with country: Countries) {
        flagImageView.image = country.flagImageView.image
        valetNameLabel.text = country.valetName
        countryNameLabel.text = country.countryName
        courseOfValetLabel.text = country.courseOfValet
        courseParamLabel.text = country.courseParam
    }
}

extension UITableViewCell {
    static var reuseIdentifier: String{
        return String(describing: self)
    }
}
