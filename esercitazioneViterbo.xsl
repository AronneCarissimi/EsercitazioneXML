<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th {
                background-color: lightblue;
            }           
        </style>
    </head>
    <body>
        <h2>Strutture ospitative in provincia di Viterbo</h2>
        <table>
            <tr>
                <th style="text-align:left">Comune</th>
                <th style="text-align:left">Provincia</th>
                <th style="text-align:left">Tipo</th>
                <th style="text-align:left">Categoria</th>
                <th style="text-align:left">nome</th>
                <th style="text-align:left">Indirizzo</th>
                <th style="text-align:left">cap</th>
                <th style="text-align:left">telefono</th>
                <th style="text-align:left">fax</th>
                <th style="text-align:left">mail</th>
                <th style="text-align:left">sito</th>
                <th style="text-align:left">camere</th>
                <th style="text-align:left">letti</th>
                <th style="text-align:left">bagni</th>
            </tr>
            <xsl:for-each select="elenco_strutture/struttura">
            <tr>
                <td><xsl:value-of select="comune"/></td>
                <td><xsl:value-of select="provincia"/></td>
                <td><xsl:value-of select="tipo"/></td>
                <td><xsl:value-of select="categoria"/></td>
                <td><xsl:value-of select="denominazione"/></td>
                <td><xsl:value-of select="indirizzo"/></td>
                <td><xsl:value-of select="cap"/></td>
                <td><xsl:value-of select="telefono"/></td>
                <td><xsl:value-of select="fax"/></td>
                <td><xsl:value-of select="indirizzo_posta_elettronica"/></td>
                <td><xsl:value-of select="sito_internet"/></td>
                <td><xsl:value-of select="camere"/></td>
                <td><xsl:value-of select="letti"/></td>
                <td><xsl:value-of select="bagni"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
