*** Settings ***
Library     xsd_lib.py

*** Variable ***
${XSD_FILE}    myXsd.xsd
${XML_FILE}    myXsd.xsd
${XML_STRING}    <Setting Name="Setting1" Value="Value1" />

*** Test Case ***
Validate XSD Validation For XML File
    Validate Xml File Against Xsd    ${XML_FILE}    ${XSD_FILE}

Validate XSD Validation For XML
    Validate Xml String Against Xsd    ${XML_STRING}    ${XSD_FILE}