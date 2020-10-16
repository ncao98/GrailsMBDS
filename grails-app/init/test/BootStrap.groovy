package test

import tp.mbds.com.*

class BootStrap {

    def init = { servletContext ->
        def roleAdmin = new Role(authority: "ROLE_ADMIN").save()
        def roleUser = new Role(authority: "ROLE_USER").save()
        def roleModerator = new Role(authority: "ROLE_MODERATOR").save()

        def userAdmin = new User(username: "admin", password: "admin").save()
        def userClient = new User(username: "user", password: "password").save()
        def userModerator = new User(username: "moderator", password: "mod").save()

        UserRole.create(userAdmin, roleAdmin, true)
        UserRole.create(userClient, roleUser, true)
        UserRole.create(userModerator, roleModerator, true)


        (1..5).each { index ->
            def annonceInstance = new SaleAd(title: "Title " + index,
                    description: "Description " + index,
                    longDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at fringilla magna. Maecenas suscipit gravida risus, non aliquet velit lobortis volutpat. Nam sed consequat sapien. In mi ante, pharetra ut ullamcorper non, consequat feugiat lectus. Mauris et turpis in eros luctus viverra. Proin posuere, felis eu vulputate tempor, ipsum dui varius velit, et porttitor libero sem ut nunc. Aenean dictum est vitae felis consectetur tincidunt. Integer laoreet dolor non faucibus viverra. Curabitur venenatis vehicula nibh, et tempor ipsum venenatis in. Duis pharetra faucibus enim at rhoncus. Fusce eget massa vulputate, congue sem in, pellentesque turpis. Nulla purus eros, ultrices id urna a, fringilla tempus ante. Etiam ac aliquet felis.",
                    price: 100F * index)
            (1..3).each {
                annonceInstance.addToIllustrations(new Illustration(filename: "https://picsum.photos/200/300"))
            }

            userClient.addToSaleAds(annonceInstance)
        }
        userClient.save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}
