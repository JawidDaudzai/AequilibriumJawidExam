package TestAequilibrium;

import org.junit.Assert;
import org.openqa.selenium.By;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class stepsImplementation extends BaseClass {

	@Given("user enters {string} and {string}")
	public void user_enters_and(String userName, String password) {
		
	 driver.findElement(By.id("user-name")).sendKeys(userName);
	 driver.findElement(By.id("password")).sendKeys(password);
	}

	@When("user clicks on login button")
	public void user_clicks_on_login_button() {
		driver.findElement(By.id("login-button")).click();
	}

	
	@Then("user sees text of {string}")
	public void user_sees_text_of(String expectedText) {
	   
		String actualText=driver.findElement(By.xpath("//span[text()='Products']")).getText();
		
	
		Assert.assertEquals("User didn't login successfully ", actualText, expectedText);
		
	}

	
	@Then("user sees text of invalid user {string}")
	public void user_sees_text_of_invalid_user(String expectedInvalidUserText) {
		
		 String actualInvalidUserText= driver.findElement(By.xpath("//h3[@data-test='error']")).getText();
		   
		   Assert.assertEquals("Invalid user text was Not displayed correctly ",expectedInvalidUserText, actualInvalidUserText);
		
	}
	

	@Then("user sees text of invalid password {string}")
	public void user_sees_text_of_invalid_password(String expectedPasswordText) {
	   String actualPasswordText= driver.findElement(By.xpath("//h3[@data-test='error']")).getText();
	   
	   Assert.assertEquals("Invalid password text was Not displayed correctly ",expectedPasswordText, actualPasswordText);
	}

	@Then("user sees text of invalid credintials {string}")
	public void user_sees_text_of_invalid_credintials(String expectedInvalidCredintialsText) {
		 String actualInvalidCredintialsText= driver.findElement(By.xpath("//h3[@data-test='error']")).getText();
		   
		   Assert.assertEquals(expectedInvalidCredintialsText, actualInvalidCredintialsText);
	}

	@Then("user sees error text for empty username {string}")
	public void user_sees_error_text_for_empty_username(String expectedEmptyUserText) {
		String actualEmptyUserText= driver.findElement(By.xpath("//h3[@data-test='error']")).getText();
		   
		   Assert.assertEquals(expectedEmptyUserText, actualEmptyUserText);
	}

	@Then("user sees error text for empty password {string}")
	public void user_sees_error_text_for_empty_password(String expectedEmptyPasswordText) {
		String actualEmptyPasswordText= driver.findElement(By.xpath("//h3[@data-test='error']")).getText();
		   
		   Assert.assertEquals(expectedEmptyPasswordText, actualEmptyPasswordText);
	}


	
}
