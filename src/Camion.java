
public class Camion extends Vehiculo{
		private double carga;
		private TipoMercancia tipoMercancia;
		
		public Camion() {
			super();

		}
		public Camion(int matricula, int numBastidor, String color, int numAsientos, double precio, double carga, TipoMercancia tipoMercancia) {
			super(matricula, numBastidor, color, numAsientos, precio);
			this.setCarga(carga);
			this.setTipoMercancia(tipoMercancia);
		}
		public double getCarga() {
			return carga;
		}
		public void setCarga(double carga) {
			this.carga = carga;
		}
		public TipoMercancia getTipoMercancia() {
			return tipoMercancia;
		}
		public void setTipoMercancia(TipoMercancia tipoMercancia) {
			this.tipoMercancia = tipoMercancia;
		}
}
