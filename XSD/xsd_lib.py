from lxml import etree, objectify
from lxml.etree import XMLSyntaxError
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
from lxml.etree import parse, XMLSchema, XMLSyntaxError

def validate_xml_string_against_xsd(xml_string, xsd_file):
    try:
        schema = etree.XMLSchema(file=xsd_file)
        parser = objectify.makeparser(schema=schema)
        objectify.fromstring(xml_string, parser)
        logger.info("XSD Pass!")
    except Exception as e:
        logger.info("XSD Fail!")
        BuiltIn().fail(e)

def validate_xml_file_against_xsd(xml_file, xsd_file):
    try:
        xml_doc = parse(xml_file)
        xsd_doc = parse(xsd_file)
        xmlschema = XMLSchema(xsd_doc)
        xmlschema.assert_(xml_doc)
        logger.info("XSD Pass!")
    except Exception as e:
        logger.info("XSD Fail!")
        BuiltIn().fail(e)