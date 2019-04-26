package com.fis.utils;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;  
import org.apache.poi.hssf.usermodel.HSSFFont;  
import org.apache.poi.hssf.usermodel.HSSFRichTextString;  
import org.apache.poi.hssf.usermodel.HSSFWorkbook;  
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.WorkbookUtil;

import com.fis.domain.PointInfo;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import java.io.*;  
import java.net.URLEncoder;  
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;  
import java.util.Map;  
  
 
public class ExcelUtils {  
    
    private static HSSFCellStyle cellstyle = null;  
  
    public static void exportInspectionRecordSurface(HttpServletRequest request, HttpServletResponse response, List<PointInfo> list) throws IOException {  
    	//获取文件的路径
    	String psth = request.getSession().getServletContext().getRealPath("/excel/"+"InspectionRecordSurface.xls");
        Workbook webBook = readExcel(psth); 
        createCellStyle(webBook);  
        Sheet sheet = webBook.getSheetAt(0);  
        Row row = sheet.createRow(0);
        row.createCell(0).setCellValue("种植区");  
        row.createCell(2).setCellValue("风向"); 
        row.createCell(4).setCellValue("风力"); 
        row.createCell(6).setCellValue("传感器0电流(mA)"); 
        row.createCell(8).setCellValue("传感器1电流(mA)"); 
        row.createCell(10).setCellValue("传感器湿度(%)"); 
        row.createCell(12).setCellValue("传感器温度(℃)"); 
        row.createCell(14).setCellValue("种植区温度(℃)"); 
        row.createCell(16).setCellValue("zigbee湿度(%)"); 
        row.createCell(18).setCellValue("zigbee温度(℃)"); 
        for(int i = 1; i <= list.size(); i++) {
        	PointInfo info = list.get(i - 1);
        	row = sheet.createRow(i);
            switch(i - 1) {
            case 0: row.createCell(0).setCellValue("小麦发芽期"); break;
            case 1: row.createCell(0).setCellValue("小麦幼苗期"); break;
            case 2: row.createCell(0).setCellValue("小麦抽穗期"); break;
            case 3: row.createCell(0).setCellValue("小麦成熟期"); break;
            }
            row.createCell(2).setCellValue(info.getWind_direct());
            row.createCell(4).setCellValue(info.getWind_power());
            row.createCell(6).setCellValue(info.getAd0().toString());
            row.createCell(8).setCellValue(info.getAd1().toString());
            row.createCell(10).setCellValue(info.getSensor_humid().toString());
            row.createCell(12).setCellValue(info.getSensor_temp().toString()); 
            row.createCell(14).setCellValue(info.getTemp().toString());
            row.createCell(16).setCellValue(info.getZigbee_humid().toString());
            row.createCell(18).setCellValue(info.getZigbee_temp().toString());
        }
        writeExcel(response, webBook, "种植区信息采集报表");  
    }   
  
    private static Workbook readExcel(String filePath) {  
        InputStream in = null;  
        Workbook work = null;  
        try {  
            in = new FileInputStream(filePath);  
            work = new HSSFWorkbook(in);  
        } catch (FileNotFoundException e) {  
            System.out.println("文件路径错误");  
            e.printStackTrace();  
        } catch (IOException e) {  
            System.out.println("文件输入流错误");  
            e.printStackTrace();  
        }  
        return work;  
    }  
  
    private static void writeExcel(HttpServletResponse response, Workbook work, String fileName) throws IOException {  
        OutputStream out = null;  
        try {  
            out = response.getOutputStream();  
            response.setContentType("application/ms-excel;charset=UTF-8");  
            response.setHeader("Content-Disposition", "attachment;filename="  
                    .concat(String.valueOf(URLEncoder.encode(fileName + ".xls", "UTF-8"))));  
            work.write(out);  
        } catch (IOException e) {  
            System.out.println("输出流错误");  
            e.printStackTrace();  
        } finally {  
            out.close();  
        }  
    }  
  
    private static Cell setCellStyleWithStyleAndValue(CellStyle style, Cell cell, String value) {  
        cell.setCellStyle(style);  
        cell.setCellValue(value);  
        return cell;  
    }  
  
    private static Cell setCellStyleWithValue(Cell cell, String value) {  
        cell.setCellStyle(cellstyle);  
        cell.setCellValue(value);  
        return cell;  
    }  
  
  
    private static Cell setCellStyleWithStyleAndValue(CellStyle style, Cell cell, RichTextString value) {  
        cell.setCellStyle(style);  
        cell.setCellValue(value);  
        return cell;  
    }  
  
    private static Cell setCellStyleWithValue(Cell cell, int value) {  
        cell.setCellStyle(cellstyle);  
        cell.setCellValue(value);  
        return cell;  
    }  
  
    private static Cell setCellStyleWithValue(Cell cell, double value) {  
        cell.setCellStyle(cellstyle);  
        cell.setCellValue(value);  
        return cell;  
    }  
  
    private static HSSFCellStyle createCellStyle(Workbook wb) {  
        cellstyle = (HSSFCellStyle) wb.createCellStyle();  
        cellstyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);  
        cellstyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);  
        cellstyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);  
        cellstyle.setBorderRight(HSSFCellStyle.BORDER_THIN);  
        cellstyle.setBorderTop(HSSFCellStyle.BORDER_THIN);  
        cellstyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);  
        return cellstyle;  
    }  
}  
