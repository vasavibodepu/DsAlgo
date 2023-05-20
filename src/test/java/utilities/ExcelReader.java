package utilities;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebElement;

import static org.testng.Assert.assertEquals;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class ExcelReader {

	public static void readWorkSheet(String excelFile, WebElement focusedElement, WebElement runButton, WebElement outputResult) {

		// TODO Auto-generated method stub
		try (FileInputStream fis = new FileInputStream(excelFile); Workbook workbook = WorkbookFactory.create(fis)) {
			Sheet sheet = workbook.getSheetAt(0);

			for (Row row : sheet) {

                if (isEmptyRow(row)) {
                	return;
                }
                
                if (row.getRowNum() > 0) {
    				System.out.println("Processing testcase in row : " + row.getRowNum());

    				// read input and output columns in the row
                	String input = formatCellValue(row.getCell(0));
                	String expectedResult = formatCellValue(row.getCell(1));
                	
                	// set input to the text editor, run the code and validate the output
//                	focusedElement.clear();
            		focusedElement.sendKeys(input);
            		runButton.click();		
            		String output = outputResult.getText();
            		assertEquals(output, expectedResult);
            		
                
            		
                }
			
//				System.out.println();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	
	private static boolean isEmptyRow(Row row) {
        for (Cell cell : row) {
        	if (cell == null) {
        		return true;
        	} else if (cell.getCellType() != CellType.BLANK) {
                return false;
            } 
        }
        return true;
    }

	private static String formatCellValue(Cell cell) {
		switch (cell.getCellType()) {
		case NUMERIC:
			return String.valueOf(cell.getNumericCellValue());
		case STRING:
			return cell.getStringCellValue();
		case BOOLEAN:
			return String.valueOf(cell.getBooleanCellValue());
		case FORMULA:
			return cell.getCellFormula();
		default:
			return "";
		}
	}

}
