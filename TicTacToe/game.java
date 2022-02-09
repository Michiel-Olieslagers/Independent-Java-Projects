import java.util.ArrayList;
import java.io.*;
public class game{
	ArrayList<player> players = new ArrayList<player>();
	boolean currentPlayer = true;
	public game(){		
		this.players.add(new player());
		this.players.add(new player()); 
	}
	public void showGrid(){
		for(Integer i = new Integer(0); i < 11; i++){
			for(Integer j = new Integer(0); j < 11; j++){
				if((i+1) % 4 == 0 && i != 0){
					System.out.print("-");
				}
				else{
					if((j+1) % 4 == 0 && j != 0){
						System.out.print("|");
					}
					else if((j-1) % 4 == 0 && (i-1) % 4 == 0){
						checkPlayerBox((j-1) / 4, (i-1) / 4);
					}
					else{
						System.out.print(" ");
					}
				}
			}
			System.out.println();
		}
		System.out.println();
	}
	public void checkPlayerBox(Integer j, Integer i){
		if(((player)this.players.get(0)).checkCoords(3 * i + j)){
			System.out.print("X");
		}
		else if(((player)players.get(1)).checkCoords(3 * i + j)){
			System.out.print("O");
		}
		else{
			System.out.print(" ");
		}
	}
	public void enterInput(){
		Integer i = new Integer(-1), j = new Integer(-1);
		boolean alreadyPlayed = true;
			System.out.println("It is player " + Integer.toString(getNumberPlayer() + 1) + "'s turn");
		while(alreadyPlayed){
			System.out.println("What row would you like to play in?");
			i = this.getInput();
			System.out.println("What column would you like to play in?");
			j = this.getInput();
			alreadyPlayed = checkPlayed(i,j);
		}
		((player)this.players.get(getNumberPlayer())).setCoords((i - 1) * 3 + (j - 1));
		if(currentPlayer){
			this.currentPlayer = false;
		}
		else{
			this.currentPlayer = true;
		}
	}
	public Integer getNumberPlayer(){
		if(this.currentPlayer){
			return 0;
		}
		else{
			return 1;
		}
	}
	public Integer getInput(){
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try{
			String input = br.readLine();
			Integer out = Integer.valueOf(input);
			return out;
		} catch(IOException ioe){
			System.err.println("Input error occurred");
			return null;
		}
	}
	public Integer checkWinner(){
		Integer out = null;
		for(Integer x = new Integer(0); x < 2; x++){
			for(Integer i = new Integer(0); i < 3; i++){
				for(Integer j = new Integer(0); j < 3; j++){
					Integer tempI = i;
					Integer tempJ = j;
					Integer counter = new Integer(0);
					while(tempI < 2 && tempJ < 2){
						if(((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) == ((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ + 1) && ((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) != false){
							counter ++;
							tempJ ++;
						}
						else{
							tempJ = 2;
						}
					}
					if(counter == 2){
						out = x;
					}
					tempI = i;
					counter = 0;
					while(tempI < 2 && tempJ < 2){
						if(((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) == ((player)(this.players.get(x))).checkCoords((tempI + 1) * 3 + tempJ) && ((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) != false){
							counter ++;
							tempI ++;
						}
						else{
							tempI = 2;
						}
					}
					if(counter == 2){
						out = x;
					}
					tempJ = j;
					counter = 0;
					while(tempI < 2 && tempJ < 2){
						if(((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) == ((player)(this.players.get(x))).checkCoords((tempI + 1) * 3 + tempJ + 1) && ((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) != false){
							counter ++;
							tempJ ++;
							tempI ++;
						}
						else{
							tempJ = 2;
							tempI = 2;
						}
					}
					if(counter == 2){
						out = x;
					}
					tempJ = j;
					tempI = i;
					counter = 0;
					while(tempI > 0 && tempJ > 0){
						if(((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) == ((player)(this.players.get(x))).checkCoords((tempI - 1) * 3 + tempJ - 1) && ((player)(this.players.get(x))).checkCoords(tempI * 3 + tempJ) != false){
							counter ++;
							tempJ --;
							tempI --;
						}
						else{
							tempJ = 0;
							tempI = 0;
						}
					}
					if(counter == 2){
						out = x;
					}
					tempJ = j;
					tempI = i;
					counter = 0;
				}
			}	
		}
		return out;
	}
	public boolean checkPlayed(Integer i, Integer j){
		boolean out = false;
		for(Integer x = new Integer(0); x < 2; x++){
			if(((player)(players.get(x))).checkCoords((j-1) * 3 + (i-1))){
				System.out.println("This coordinate has already been played\nPlease choose another coordinate");
				out = true;
			}
		}
		return out;
	}
}