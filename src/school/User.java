package school;

public class User {
	
	 private String username;
     private String password;
     public boolean valid;
			
     public String getUsername() {
    	 return username;
	 }

     public void setUserName(String Username) {
         this.username = Username;
	 }

     public String getPassword() {
         return password;
 	 }

     public void setPassword(String Password) {
         this.password = Password;
 	 }
				
     public boolean isValid() {
         return valid;
	 }

     public void setValid(boolean Valid) {
         this.valid = Valid;
	 }
}
