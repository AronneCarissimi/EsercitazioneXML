<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>
            Strutture ospitative in provincia di Viterbo
        </title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th {
                background-color: lightblue;
            }    
            h2 {
                color: black;
                text-align: center;
                text-shadow: 0 0 3px lightblue, 0 0 5px lightblue; 
            }

        </style>
    </head>
    <body>
        <h2>Strutture ospitative in provincia di Viterbo</h2>
        <table>
            <tr>
                <th>Comune</th>
                <th>Provincia</th>
                <th>Tipo</th>
                <th>Categoria</th>
                <th>nome</th>
                <th>classe</th>
                <th>Indirizzo</th>
                <th>cap</th>
                <th>telefono</th>
                <th>mail</th>
                <th>sito</th>
                <th>camere</th>
                <th>letti</th>
                <th>bagni</th>
            </tr>
            <xsl:for-each select="elenco_strutture/struttura">
            <tr>
                <td><xsl:value-of select="comune"/></td>
                <td><xsl:value-of select="provincia"/></td>
                <td><xsl:value-of select="tipo"/></td>
                <td><xsl:value-of select="categoria"/></td>
                <td><xsl:value-of select="denominazione/@nome"/></td>
                <td><xsl:value-of select="denominazione/classe/@nome"/></td>
                <td><xsl:value-of select="indirizzo"/></td>
                <td><xsl:value-of select="cap"/></td>
                <td><xsl:value-of select="telefono"/></td>
                <td><xsl:value-of select="indirizzo_posta_elettronica"/></td>
                <xsl:variable name="link"><xsl:value-of select="sito_internet" /></xsl:variable>
                <td><a href="{$link}"> <xsl:value-of select="sito_internet"/> </a> </td>
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
