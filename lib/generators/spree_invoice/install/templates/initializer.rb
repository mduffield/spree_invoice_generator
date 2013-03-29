require 'wicked_pdf'

WickedPdf.config = {
  :exe_path => SpreeInvoice::WKHTMLToPDF.bin_path
}
