<%@page import="java.util.*,java.io.*,org.apache.commons.lang3.*,java.nio.charset.*,java.text.Normalizer"%>
<%
String root = request.getServletContext().getRealPath("/")+"/";
out.println(root);


Properties prop1 = new Properties();
OutputStream output = new FileOutputStream(root+"conf/system.conf");

		// set the properties value
		prop1.setProperty("songRoot", root+"songs/");
		prop1.setProperty("soundFontRoot", root+"SoundFonts/");
		prop1.setProperty("webRoot", root);		
		prop1.setProperty("mapFile", root+"conf/namedb.txt");
		prop1.setProperty("timidity", "C:/timidity/timidity.exe");
		
		

		// save properties to project root folder
		prop1.store(output, null);
		
		
		
		
		Properties prop = new Properties();
//prop.load(getServletContext().getResourceAsStream("/conf/system.conf"));

prop.load(new FileInputStream(root+"conf/system.conf"));

out.println(prop.getProperty("songRoot"));

//File[] paths = new File(prop.getProperty("songRoot")).listFiles();
//File[] paths = new File(root).listFiles();
File[] paths = new File(root+"songs").listFiles();
out.println(paths);
/*
Map<String, String> dirs = new TreeMap<String, String>();
for(int in=0;in<paths.length;in++) {
	String file=paths[in].getName().toString();
        //dirs.put(map.get(file)[1], file);
	out.println("<option value='"+java.net.URLEncoder.encode(file, "UTF-8")+"'>"+file+"</option>");    
	//out.println("<option value='"+file+"'>"+map.get(file)[1]+"</option>");    
}
//for(String key : dirs.keySet())
	//out.println("<option value='"+dirs.get(key)+"'>"+key+"</option>");    
*/
%>


