#!/bin/bash

# Función para convertir PDF a EPUB
convert_pdf_to_epub() {
    pdf_file="$1"
    epub_file="$2"
    ebook-convert "$pdf_file" "$epub_file"
}

# Solicitar ruta del archivo PDF de entrada
read -p "Ingrese la ruta del archivo PDF: " pdf_path

# Validar la existencia del archivo PDF
if [ ! -f "$pdf_path" ]; then
    echo "¡El archivo PDF no existe!"
    exit 1
fi

# Solicitar ruta y nombre de archivo EPUB de salida
read -p "Ingrese la ruta y nombre del archivo EPUB de salida: " epub_path

# Llamar a la función de conversión
convert_pdf_to_epub "$pdf_path" "$epub_path"

echo "La conversión de PDF a EPUB se ha completado."
