//
//  ViewController.swift
//  Basics
//
//  Created by saurav upreti on 12/21/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Profile"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addSubview(titleLabel)

        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)

        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "John Appleseed"
        nameLabel.font = .systemFont(ofSize: 15, weight: .medium)
        nameLabel.textColor = .black
        view.addSubview(nameLabel)

        let descLabel = UILabel()
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.text =
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
        descLabel.font = .systemFont(ofSize: 10, weight: .light)
        descLabel.textColor = .black
        descLabel.numberOfLines = 0
        descLabel.textAlignment = .center
        view.addSubview(descLabel)

        let editProfileBtn = UIButton(configuration: .filled())
        editProfileBtn.translatesAutoresizingMaskIntoConstraints = false
        editProfileBtn.setTitle("Edit Profile", for: .normal)
        editProfileBtn.tintColor = .systemBlue
        editProfileBtn.configuration?.cornerStyle = .medium
        editProfileBtn.configuration?.baseBackgroundColor = .systemBlue
        view.addSubview(editProfileBtn)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            imageView.topAnchor.constraint(
                equalTo: titleLabel.bottomAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),

            nameLabel.topAnchor.constraint(
                equalTo: imageView.bottomAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            descLabel.topAnchor.constraint(
                equalTo: nameLabel.bottomAnchor, constant: 20),
            descLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descLabel.leadingAnchor.constraint(
                equalTo: view.leadingAnchor, constant: 16),
            descLabel.trailingAnchor.constraint(
                equalTo: view.trailingAnchor, constant: -16),
            
            editProfileBtn.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: 20),
            editProfileBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])

        imageView.image = UIImage(named: "photo1")

    }

}
