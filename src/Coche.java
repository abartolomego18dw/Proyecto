
public class Coche extends Vehiculo{
			private int numPuertas;
			private double capacidadMaletero;
	
		public Coche() {
		
		}
		public Coche(int matricula, int numBastidor, String color, int numAsientos, double precio, int numPuertas, double capacidadMaletero) {
			super(matricula, numBastidor, color, numAsientos, precio);
			this.numPuertas = numPuertas;
			this.capacidadMaletero = capacidadMaletero;
		}
		public int getNumPuertas() {
			return numPuertas;
		}
		public void setNumPuertas(int numPuertas) {
			this.numPuertas = numPuertas;
		}
		public double getCapacidadMaletero() {
			return capacidadMaletero;
		}
		public void setCapacidadMaletero(double capacidadMaletero) {
			this.capacidadMaletero = capacidadMaletero;
		}
	
}