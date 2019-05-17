
public class Vehiculo {
	private int matricula;
	private int numBastidor;
	private String color;
	private int numAsientos;
	private double precio;
	private String marca;
	private String modelo;
	private String anioFabricacion;

public Vehiculo(){
	
}	
public Vehiculo(int matricula, int numBastidor, String color, int numAsientos, double precio) {
		super();
		this.matricula = matricula;
		this.numBastidor = numBastidor;
		this.color = color;
		this.numAsientos = numAsientos;
		this.precio = precio;
	}

public int getMatricula() {
	return matricula;
}

public void setMatricula(int matricula) {
	this.matricula = matricula;
}

public int getNumBastidor() {
	return numBastidor;
}

public void setNumBastidor(int numBastidor) {
	this.numBastidor = numBastidor;
}

public String getColor() {
	return color;
}

public void setColor(String color) {
	this.color = color;
}

public int getNumAsientos() {
	return numAsientos;
}

public void setNumAsientos(int numAsientos) {
	this.numAsientos = numAsientos;
}

public double getPrecio() {
	return precio;
}

public void setPrecio(double precio) {
	this.precio = precio;
}

protected String getMarca() {
	return marca;
}

protected void setMarca(String marca) {
	this.marca = marca;
}

protected String getModelo() {
	return modelo;
}

protected void setModelo(String modelo) {
	this.modelo = modelo;
}

protected String getAnioFabricacion() {
	return anioFabricacion;
}

protected void setAnioFabricacion(String anioFabricacion) {
	this.anioFabricacion = anioFabricacion;
}
}
