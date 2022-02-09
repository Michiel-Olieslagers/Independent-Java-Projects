public class run{
	public static void main(String[] args){
		game ttt = new game();
		Integer winner = null;
		System.out.print("\033[H\033[2J");
		System.out.flush();
		ttt.showGrid();
		while(winner == null){
			ttt.enterInput();
			System.out.print("\033[H\033[2J");
			System.out.flush();
			ttt.showGrid();
			winner = ttt.checkWinner();
		}
		System.out.println("Player " + Integer.toString(winner+1) + " has won!");
	}
}