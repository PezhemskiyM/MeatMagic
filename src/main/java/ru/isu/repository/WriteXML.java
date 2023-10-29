/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ru.isu.repository;

import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.springframework.stereotype.Repository;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import ru.isu.springmvcstart.MenuItem;

/**
 *
 * @author Andrey
 */

@Repository("BusService")
public class WriteXML {
     public  void saveMenuInFile(MenuItem mi) {

	  try{

		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

		
		Document doc = docBuilder.newDocument();
		Element rootElement = doc.createElement("menu");
		doc.appendChild(rootElement);

		
		
 //  private Integer routeNumber;
 //  private Integer busNumber;
 //  private String lastName;
//  private Integer year;
 //  private String  model;
 //  private Double  mileage;
		
		Attr attr = doc.createAttribute("id");
		attr.setValue("1");
	        rootElement.setAttributeNode(attr);

		// shorten way
		// staff.setAttribute("id", "1");

		// firstname elements
		Element name = doc.createElement("name");
		name.appendChild(doc.createTextNode(mi.getName()));
		rootElement.appendChild(name);

		// lastname elements
		Element type = doc.createElement("type");
		type.appendChild(doc.createTextNode(mi.getType()));
		rootElement.appendChild(type);

		// salary elements
//		Element cost = doc.createElement("cost");
//		cost.appendChild(doc.createTextNode((mi.getCost()));
//		rootElement.appendChild(cost);
                
//                Element model = doc.createElement("model");
//		model.appendChild(doc.createTextNode(bus.getModel()));
//		rootElement.appendChild(model);
//                
//                Element mileage = doc.createElement("mileage");
//		mileage.appendChild(doc.createTextNode(bus.getMileage().toString()));
//		rootElement.appendChild(mileage);

		// write the content into xml file
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = transformerFactory.newTransformer();
		DOMSource source = new DOMSource(doc);
                System.out.println(this.getClass().getClassLoader().getResource("").getPath() +"file2.txt");
	//	StreamResult result = new StreamResult(new File("C:\\Users\\Andrey\\Downloads\\userform\\SpringMVCStart2\\src\\main\\java\\ru\\isu\\springmvcstart\\file.txt"));
                StreamResult result = new StreamResult(new File("file.txt"));

		// Output to console for testing
		// StreamResult result = new StreamResult(System.out);

		transformer.transform(source, result);

		System.out.println("File saved!");

	  } catch (ParserConfigurationException pce) {
		pce.printStackTrace();
	  } catch (TransformerException tfe) {
		tfe.printStackTrace();
	  }
	}
}
