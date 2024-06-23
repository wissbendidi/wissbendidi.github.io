<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <body dir="rtl">
            <h2>السيرة الذاتية</h2>
            <div>
                <h3>التواصل</h3>
                <p><xsl:value-of select="resume/contact/name" /></p>
                <p><xsl:value-of select="resume/contact/address" /></p>
                <p>البريد الإلكتروني: <xsl:value-of select="resume/contact/email1" />, <xsl:value-of select="resume/contact/email2" /></p>
                <p>لينكدإن: <xsl:value-of select="resume/contact/linkedin" /></p>
                <p>جيت هب: <xsl:value-of select="resume/contact/github" /></p>
                <p>الهاتف: <xsl:value-of select="resume/contact/phone" /></p>
            </div>
            <div>
                <h3>المهارات</h3>
                <p>لغات البرمجة: <xsl:value-of select="resume/skills/programming_languages" /></p>
                <p>مكتبات بايثون: <xsl:value-of select="resume/skills/python_libraries" /></p>
                <p>اللغات: <xsl:value-of select="resume/skills/languages" /></p>
            </div>
            <div>
                <h3>المشاريع</h3>
                <ul>
                    <xsl:for-each select="resume/projects/project">
                        <li>
                            <strong><xsl:value-of select="name" /></strong>: <xsl:value-of select="description" /> <a href="{link}">رابط</a>
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
            <div>
                <h3>الخبرة العملية</h3>
                <ul>
                    <xsl:for-each select="resume/experience/job">
                        <li>
                            <strong><xsl:value-of select="role" /></strong> في <xsl:value-of select="company" /> (<xsl:value-of select="years" />): <xsl:value-of select="description" />
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
            <div>
                <h3>التعليم</h3>
                <ul>
                    <xsl:for-each select="resume/education/degree">
                        <li>
                            <xsl:value-of select="title" /> من <xsl:value-of select="institution" /> (<xsl:value-of select="years" />)
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
