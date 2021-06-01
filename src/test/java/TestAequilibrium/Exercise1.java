package TestAequilibrium;

import java.io.File;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;



import io.cucumber.java.Scenario;

public class Exercise1 {
	
	//@Test
	public void t() {
		
		
//		System.setProperty("webdriver.chrome.driver", "drivers\\chromedriver.exe");
//		WebDriver driver=new ChromeDriver();
//		driver.get("https://www.saucedemo.com/");
//	
//		driver.manage().window().maximize();
//		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		
	}
		
	@Test
			public void webElement() {
			
			System.out.println("I am a student");
			System.setProperty("webdriver.chrome.driver", "drivers\\chromedriver.exe");
			WebDriver driver= new ChromeDriver();
			driver.get("https://translate.google.ca/");
			
			


			driver.manage().window().maximize();
			String text=driver.findElement(By.id("i8")).getText();
		
			System.out.println("This is the text "+text);
		}
	}
	
	
	
	
//	public static void main(String[] args) {
//		
		
		
//		end(Scenario scenario);
//		
//		System.out.println("I am happy");
//		
//		
//		System.setProperty("webdriver.chrome.driver", "target\\chromedriver.exe");
//		WebDriver driver = new ChromeDriver();
//		driver.get("https://www.google.com/");
//		
//		
//		
//		
//	}
//	
//	@Before
//	public static void start() {
//		System.setProperty("webdriver.chrome.driver", "target\\chromedriver.exe");
//		WebDriver driver = new ChromeDriver();
//		driver.get("https://www.google.com/");
//		
//		
//	}
//	
//	
//	public static void takeScreenShot() {
//		System.setProperty("webdriver.chrome.driver", "target\\chromedriver.exe");
//		WebDriver driver = new ChromeDriver();
//	
//		TakesScreenshot ts=(TakesScreenshot)(driver);
//	File fd=	ts.getScreenshotAs(FileOutputType.);
//	File sd=new File("screenshotFolder")
		
		
//	}
	
	/**
	 * This Method will take a screenshot
	 * 
	 * @param filename
	 */
	
//	public static byte[] takeScreenshot(String filename) {
//		
//		System.setProperty("webdriver.chrome.driver", "target\\chromedriver.exe");
//		WebDriver driver = new ChromeDriver();
//		TakesScreenshot ts = (TakesScreenshot) driver;
//		
//		byte[] picBytes=ts.getScreenshotAs(OutputType.BYTES);
//		
//		
//		File file = ts.getScreenshotAs(OutputType.FILE);
//		String destinationFile = "screenshotFolder\\"+filename+".jpg";
//
//		try {
//			FileUtils.copyFile(file, new File(destinationFile));
//		} catch (Exception ex) {
//			System.out.println("Cannot take screenshot!");
//		}
//
//		return picBytes;
//	}
//	
//	@After
//	public static void end(Scenario scenario) {
//		System.out.println("Ending test "+scenario.getName());
//		System.out.println(scenario.getStatus());
//		
//		byte[] pic;
//		if (scenario.isFailed()) {
//			pic=takeScreenshot("failed\\"+scenario.getName());
//		}else {
//			pic=takeScreenshot("passed\\"+scenario.getName());
//		}
//		scenario.attach(pic, "image\\jpg", scenario.getName());
//	
//		
		
	//	BaseClass.tearDown();
//	}


