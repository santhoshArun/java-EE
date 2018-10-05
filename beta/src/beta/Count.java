package beta;

public class Count {
	
	static int logCount = 0;
	
	static Count c = null;
	
	private Count() {
		
	}
	
	public int loginCount() {
		
		logCount++;
		return logCount;
		
	}
	
	public static Count getInstance() {
		if(c == null) {
			c = new Count();
		}
		return c;
		
	}
	
}
