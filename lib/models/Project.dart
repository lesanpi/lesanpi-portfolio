class Project {
  Project(
      {required this.title,
      required this.description,
      required this.image,
      this.mobile = true});
  final String title;
  final String description;
  final String image;
  final bool mobile;
}

List<Project> projects = [
  Project(
      title: "Pokedex App",
      image: "assets/images/pokedexapp.jpeg",
      description:
          "Una app donde podras ver todos los pokemons existente, visualizar sus estadisticas de defense, ataque y vida. Este proyecto fue realizado utilizando la API de PokeApi, React Native y React Navigation."),
  Project(
      title: "Smart Fridge App",
      image: "assets/images/fridgeapp.jpeg",
      description:
          "Una app donde podras monitorear y controlar la temperatura, luces y ventiladores de tus neveras que se encuentren en la red local. Este proyecto se desarrollo utilizando microcontroladores, sensores y lenguaje C++ para la programacion. Para el desarrollo de la aplicacio se utilizo Flutter, Inherited Widgets y WebSockets. Este proyecto esta aun en desarrollo."),
  Project(
      title: "Pizza Maker App",
      image: "assets/images/pizzaapp.jpeg",
      description:
          "Una app donde podras crear tu propia pizza, indicar el tamaño que deseas y cada uno de los ingredientes que quieres que contenga. Este fue un reto realizado con Flutter con muchas animaciones e interacciones."),
  Project(
      title: "Vivero Web App",
      image: "assets/images/viveroapp.jpeg",
      mobile: false,
      description:
          "Este es un proyecto de una Web App para una Tienda Online donde el usuario podra visualizar una variedad de plantas, leer detalles sobre ellas, agregarlas al carrito y realizar una solicitud de Compra. Este proyecto fue realizado utilizando Flutter Web. El proyecto aun esta en progreso para su lanzamiento."),
];
