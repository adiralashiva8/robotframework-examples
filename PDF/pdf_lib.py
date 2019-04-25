import PyPDF2


def get_pdf_object(file_path):
    ''' This method used to read pdf and return pdf object '''
    #'rb' for read binary mode
    pdfFileObj = open(file_path,'rb')
    # read pdf file
    pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
    return pdfReader


def get_number_of_pages_in_pdf(file_path):
    ''' This method used to get number of pages in pdf file '''
    pdfReader = get_pdf_object(file_path)
    # return no. of pages in pdf
    return pdfReader.numPages


def get_specific_page_text_in_pdf(file_path,  page_number):
    ''' This method used to get specific page text in pdf file '''
    pdfReader = get_pdf_object(file_path)
    # get specific page
    pageObj = pdfReader.getPage(int(page_number))
    # extract text from page
    return pageObj.extractText()


def get_entire_pdf_text(file_path):
    ''' This method used to get entire pdf text from pdf file '''
    pdfReader = get_pdf_object(file_path)
    # return no. of pages in pdf
    num_pages = pdfReader.numPages

    count = 0
    text = ""

    #The while loop will read each page
    while count < num_pages:
      pageObj = pdfReader.getPage(count)
      count +=1
      text += pageObj.extractText()
    
    return text

def get_pdf_info(file_path):
    ''' This method used to get pdf file info '''
    #'rb' for read binary mode
    pdfFileObj = open(file_path,'rb')
    # read pdf file
    pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
    return pdfReader.getDocumentInfo()
    