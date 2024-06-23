<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body>
            <h2>CV</h2>
            <div>
                <h3>Contact</h3>
                <p><xsl:value-of select="resume/contact/name" /></p>
                <p><xsl:value-of select="resume/contact/address" /></p>
                <p>Email: <xsl:value-of select="resume/contact/email1" />, <xsl:value-of select="resume/contact/email2" /></p>
                <p>LinkedIn: <xsl:value-of select="resume/contact/linkedin" /></p>
                <p>GitHub: <xsl:value-of select="resume/contact/github" /></p>
                <p>Téléphone: <xsl:value-of select="resume/contact/phone" /></p>
            </div>
            <div>
                <h3>Compétences</h3>
                <p>Langages de programmation: <xsl:value-of select="resume/skills/programming_languages" /></p>
                <p>Bibliothèques Python: <xsl:value-of select="resume/skills/python_libraries" /></p>
                <p>Langues: <xsl:value-of select="resume/skills/languages" /></p>
            </div>
            <div>
                <h3>Projets</h3>
                <ul>
                    <xsl:for-each select="resume/projects/project">
                        <li>
                            <strong><xsl:value-of select="name" /></strong>: <xsl:value-of select="description" /> <a href="{link}">Lien</a>
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
            <div>
                <h3>Expérience Professionnelle</h3>
                <ul>
                    <xsl:for-each select="resume/experience/job">
                        <li>
                            <strong><xsl:value-of select="role" /></strong> chez <xsl:value-of select="company" /> (<xsl:value-of select="years" />): <xsl:value-of select="description" />
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
            <div>
                <h3>Éducation</h3>
                <ul>
                    <xsl:for-each select="resume/education/degree">
                        <li>
                            <xsl:value-of select="title" /> de <xsl:value-of select="institution" /> (<xsl:value-of select="years" />)
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
