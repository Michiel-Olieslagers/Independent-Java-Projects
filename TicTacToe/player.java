public class player {
	public boolean[] coords = {false,false,false,false,false,false,false,false,false};
	
	public void setCoords(Integer i){
		this.coords[i] = true;
	}
	public boolean checkCoords(Integer i){
		return this.coords[i];
	}
}