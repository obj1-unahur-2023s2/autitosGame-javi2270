import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var position = game.at(2,5)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	
	method arriba() {
		position = position.up(1)
		if (position.y() > game.height() -1) {
			position = game.at(position.x(), 0) 
		}
	}
	
	method abajo() {
		position = position.down(1)
		if (position.y() < 0) {
			position = game.at(position.x(), game.height() - 1)
		}
	}
	method izquierda() {
		position = position.left(1)
		if (position.x() < 0) {
			position = game.at(game.width() - 1, position.y())
		}
	}
	
	method derecha() {
		position = position.right(1)
		// Verificamos si el auto llegó al borde derecho
		if (position.x() > game.width() - 1) {
			// Lo colocamos en el borde izquierdo con la misma coordenada Y
			position = game.at(0, position.y())
		}
	}
}

object auto2 {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoAzul.png"
	var position = game.at(3,5)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	
}
