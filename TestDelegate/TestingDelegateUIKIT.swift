//
//  vv.swift
//  TestDelegate
//
//  Created by Parviz on 07/02/25.
//

import UIKit


// MARK: - Протокол делегата
protocol Protocolee {
    func tap()
}

// MARK: - Класс с делегатом
class Classsss {
    var delegate: Protocolee?
    
    func aa() {
        print("class tapped")
        delegate?.tap()
    }
}

// MARK: - ViewController (UIKit)
class ViewController: UIViewController{
    
    // Создаём экземпляр класса Classss
    let vModel = Classsss()
    
    // Кнопка "Tap"
    let tapButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // Картинка, которая изначально скрыта
    let imageView: UIImageView = {
        let image = UIImage(systemName: "house.fill")
        let iv = UIImageView(image: image)
        iv.tintColor = .yellow      // задаём желтый цвет картинке
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.isHidden = true          // изначально скрываем
        return iv
    }()
    
    // MARK: - Жизненный цикл ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Назначаем делегата
        vModel.delegate = self
        
        // Добавляем элементы на экран
        view.addSubview(tapButton)
        view.addSubview(imageView)
        
        // Назначаем действие кнопке
        tapButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        setupConstraints()
    }
    
    // Устанавливаем констрейнты для элементов интерфейса
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Кнопка располагается по центру по горизонтали, сверху с отступом
            tapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tapButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            // Картинка располагается ниже кнопки
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: tapButton.bottomAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    // Метод, вызываемый при нажатии кнопки
    @objc func buttonTapped() {
        vModel.aa()
    }
    
    // MARK: - Реализация протокола Protocole
 
}

extension ViewController: Protocolee{
    func tap() {
        print("print delegate")
        // Показываем картинку, делая ее видимой
        imageView.isHidden = false
    }
}


