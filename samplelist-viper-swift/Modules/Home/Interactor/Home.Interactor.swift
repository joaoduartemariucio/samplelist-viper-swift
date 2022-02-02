//
//  Home.Interactor.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import Foundation

extension Module.Home {

    class Interactor: Protocols.PresenterToInteractor {

        var presenter: Protocols.InteractorToPresenter?

        func fetchTasks() {
            presenter?.tasksFetchedSuccess(
                taskArray: [
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .low
                    ),
                    .init(
                        name: "Lavar a louça",
                        description: "Lembrar de lavar a louça do almoço",
                        priority: .medium
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Os lençõis devem ser trocados e passar pano no chão",
                        priority: .high
                    ),
                    .init(
                        name: "Limpar o quarto e arrumar a cama",
                        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        priority: .low
                    )
                ]
            )
        }
    }
}
