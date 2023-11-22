FROM httpd:2.4
RUN apt-get update && \
    apt-get install -y libapache2-mod-auth-mellon && \
    apt-get clean
RUN mkdir /usr/local/apache2/saml
RUN mkdir /usr/local/apache2/htdocs/sample2

#COPY ./public-html/ /usr/local/apache2/htdocs/
COPY my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY saml/mellon.conf /usr/local/apache2/conf/extra/mellon.conf
COPY saml/https_sp.example.com_sp.cert /usr/local/apache2/saml/https_sp.example.com_sp.cert
COPY saml/https_sp.example.com_sp.key /usr/local/apache2/saml/https_sp.example.com_sp.key
COPY saml/https_sp.example.com_sp.xml /usr/local/apache2/saml/https_sp.example.com_sp.xml
COPY saml/idp-metadata.xml /usr/local/apache2/saml/idp-metadata.xml
COPY cgi-bin/printenv /usr/local/apache2/cgi-bin/printenv
COPY cgi-bin/printenv /usr/local/apache2/htdocs/sample2/printenv.cgi
