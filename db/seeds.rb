# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Usuario do tipo admin para ter total autonomia do sistema
User.create(name: 'Otavio', email: "otavio@hotmail.com", profile: 'admin', password: '123456', status: 'ativo')
#Usuario do tipo comum que tem acesso apenas a pagina inicial
User.create(name: 'Fernando', email: "fernando@hotmail.com", profile: 'comum', password: '123456', status: 'ativo')

Book.create([
        { 
            title: 'Positiva',
            description: "Simone Garcia-Hampton está em uma nova escola, e desta vez as coisas vão ser diferentes. Ela está fazendo amigos de verdade, envolvida com a turma do teatro e interessada em Miles, o cara que a faz derreter só de olhar para ela.",
            status: 'publicado',
            author: 'Camryn Garrett'
        }, 
        { 
            title: 'Como o Rei de Elfhame aprendeu a odiar histórias ' ,
            description: "Retorne, em Como o Rei de Elfhame aprendeu a odiar histórias, ao cativante e irresistível universo de Elfhame. Era uma vez, em uma terra mágica e distante, um garoto com uma língua perversa. ",
            status: 'publicado',
            author: 'Holly Black'
        },
        { 
            title: 'Star Wars: Luz dos Jedi ',
            description: "Na Alta República, a organização absoluta dos Jedi é colocada à prova diante de uma catástrofe que extrapola sua capacidade de controle e pode custar bilhões de vidas.",
            status: 'publicado',
            author: 'Charles Soule'
        },
        { 
            title: 'Entrelaçadas' ,
            description: "Rika, Miyuki e Satsuki estão entrelaçadas como em um bonito arranjo de flores – suas particularidades formam um mosaico de cores e detalhes diversos.",
            status: 'publicado',
            author: 'Kanae Minato'
        }
        ])  
