package admayee.springmvc.util;

import java.util.ArrayList;

public class GameCounter {
	public static String topBuzzer = "";
	public static boolean buzzed = false;
	public static ArrayList<String> teams = new ArrayList<String>();
	
	public static ArrayList<String> addTeam(String team){
		if (teams.contains(team)){
			return teams;
		}else{
			teams.add(team);
			return teams;
		}
		
	}
	
	public static ArrayList<String> removeTeam(String team){
		if (teams.contains(team)){
			teams.remove(team);
			return teams;
		}else{
			return teams;
		}		
	}

}
