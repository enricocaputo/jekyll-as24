---
layout: null
---
<!DOCTYPE html>
<html>
<head>
  <style>
  ul {
    list-style:none;
  }
  li {
    box-sizing: border-box;
    padding: 10px;
    margin: 10px;
    background-color: lightblue;
    box-shadow: 2px 3px 4px #000;
  }
  </style>

<script>
function loadXMLDoc(filename)
{
if (window.ActiveXObject)
 {
 xhttp = new ActiveXObject("Msxml2.XMLHTTP");
 }
else
 {
 xhttp = new XMLHttpRequest();
 }
xhttp.open("GET", filename, false);
try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
xhttp.send("");
return xhttp.responseXML;
}

function displayResult()
{
xml = loadXMLDoc("vehicles.xml");
xsl = loadXMLDoc("vehicles.xsl");
// code for IE
if (window.ActiveXObject || xhttp.responseType == "msxml-document")
 {
 ex = xml.transformNode(xsl);
 document.getElementById("example").innerHTML = ex;
 }
// code for Chrome, Firefox, Opera, etc.
else if (document.implementation && document.implementation.createDocument)
 {
 xsltProcessor = new XSLTProcessor();
 xsltProcessor.importStylesheet(xsl);
 resultDocument = xsltProcessor.transformToFragment(xml, document);
 document.getElementById("example").appendChild(resultDocument);
 }
}
</script>
</head>

{% include header.html %}

<body onload="displayResult()">
  <div class="wrapper">
    <h1>List of cars retrived as .xml file from AutosScout24</h1>
    <ul onload="myFunction()" id="example"></ul>
   </div>
 </body>
</html>
