package TestAequilibrium;



import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class Hooks extends BaseClass {
	
	
	
	
	
	
	
	@Before
	public void start() {
		
		openBrowser();
		
		
	}
	
	
	@After
	
	
	public void end(Scenario scenario) {
		System.out.println("Ending test "+scenario.getName());
		System.out.println(scenario.getStatus());
		
		byte[] pic;
		if (scenario.isFailed()) {
			pic=takeScreenshot("failed\\"+scenario.getName());
		}else {
			pic=takeScreenshot("passed\\"+scenario.getName());
		}
		scenario.attach(pic, "image\\jpg", scenario.getName());
		
		
		closeBrowser();
	}
	
	/**
	 * This Method will take a screenshot
	 * 
	 * @param filename
	 */
	public static byte[] takeScreenshot(String filename) {
		TakesScreenshot ts = (TakesScreenshot) driver;
		
		byte[] picBytes=ts.getScreenshotAs(OutputType.BYTES);
		
		
		File file = ts.getScreenshotAs(OutputType.FILE);
		String destinationFile = "screenshotFolder\\" + filename +getTimeStemp()+ ".png";

		try {
			FileUtils.copyFile(file, new File(destinationFile));
		} catch (Exception ex) {
			System.out.println("Cannot take screenshot!");
		}

		return picBytes;
	}

	public static String getTimeStemp() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
		return sdf.format(date.getTime());

}
}