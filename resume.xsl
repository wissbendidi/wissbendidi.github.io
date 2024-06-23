<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <h2>Resume</h2>
            <div>
                <h3>Work Experience</h3>
                <ul>
                    <xsl:for-each select="resume/work_experience/item">
                        <li>
                            <strong><xsl:value-of select="role" /></strong> at <xsl:value-of select="company" /> (<xsl:value-of select="years" />): <xsl:value-of select="description" />
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
            <div>
                <h3>Education</h3>
                <ul>
                    <xsl:for-each select="resume/education/item">
                        <li>
                            <xsl:value-of select="degree" /> from <xsl:value-of select="institution" /> (<xsl:value-of select="years" />)
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
