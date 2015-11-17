<xs:schema xmlns:nomina="http://www.sat.gob.mx/nomina" xmlns:xs="http://www.w3.org/2001/XMLSchema" targetNamespace="http://www.sat.gob.mx/nomina" elementFormDefault="qualified" attributeFormDefault="unqualified">
<xs:element name="Nomina">
<xs:annotation>
<xs:documentation>
Complemento al Comprobante Fiscal Digital a trav�s de Internet (CFDI) para el manejo de datos de N�mina.
</xs:documentation>
</xs:annotation>
<xs:complexType>
<xs:sequence>
<xs:element name="Ingresos" minOccurs="0">
<xs:annotation>
<xs:documentation>
Nodo opcional para expresar los ingresos aplicables
</xs:documentation>
</xs:annotation>
<xs:complexType>
<xs:sequence>
<xs:element name="Ingreso" maxOccurs="unbounded">
<xs:annotation>
<xs:documentation>
Nodo para expresar la informaci�n detallada de un ingreso
</xs:documentation>
</xs:annotation>
<xs:complexType>
<xs:attribute name="TipoIngreso" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la descripci�n de un tipo de ingreso conforme al cat�logo actual del DIMM
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:int">
<xs:minInclusive value="1"/>
<xs:pattern value="[0-9]{3}"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Clave" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido, representa la clave de ingreso de n�mina propia de la contabilidad de cada patr�n, puede conformarse desde 3 hasta 15 caracteres
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="3"/>
<xs:maxLength value="15"/>
<xs:whiteSpace value="collapse"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Concepto" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la descripci�n del concepto de ingreso
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="100"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="ImporteGravado" type="nomina:t_Importe" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido, representa el importe gravado de un concepto de ingreso
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="ImporteExento" type="nomina:t_Importe" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido, representa el importe exento de un concepto de ingreso
</xs:documentation>
</xs:annotation>
</xs:attribute>
</xs:complexType>
</xs:element>
</xs:sequence>
<xs:attribute name="TotalGravado" type="nomina:t_Importe" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para expresar el total de ingresos gravados que se relaciona en el comprobante
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="TotalExento" type="nomina:t_Importe" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para expresar el total de ingresos exentos que se relaciona en el comprobante
</xs:documentation>
</xs:annotation>
</xs:attribute>
</xs:complexType>
</xs:element>
<xs:element name="Descuentos" minOccurs="0">
<xs:annotation>
<xs:documentation>
Nodo opcional para expresar los descuentos aplicables
</xs:documentation>
</xs:annotation>
<xs:complexType>
<xs:sequence>
<xs:element name="Descuento" maxOccurs="unbounded">
<xs:annotation>
<xs:documentation>
Nodo para expresar la informaci�n detallada de un descuento
</xs:documentation>
</xs:annotation>
<xs:complexType>
<xs:attribute name="TipoDescuento" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la descripci�n del tipo de descuento conforme al cat�logo actual del DIMM
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:int">
<xs:minInclusive value="1"/>
<xs:pattern value="[0-9]{3}"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Clave" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la clave de descuento de n�mina propia de la contabilidad de cada patr�n, puede conformarse desde 3 hasta 15 caracteres
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="3"/>
<xs:maxLength value="15"/>
<xs:whiteSpace value="collapse"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Concepto" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la descripci�n del concepto de descuento
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="100"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Importe" type="nomina:t_Importe" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para expresar el importe de un concepto de descuento
</xs:documentation>
</xs:annotation>
</xs:attribute>
</xs:complexType>
</xs:element>
</xs:sequence>
<xs:attribute name="Total" type="nomina:t_Importe" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para expresar el importe total de los descuentos
</xs:documentation>
</xs:annotation>
</xs:attribute>
</xs:complexType>
</xs:element>
</xs:sequence>
<xs:attribute name="Version" type="xs:string" use="required" fixed="1.0">
<xs:annotation>
<xs:documentation>
Atributo requerido para la expresi�n de la versi�n del complemento
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="RegistroPatronal" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para expresar el registro patronal a 20 posiciones m�ximo
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="20"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="NumEmpleado" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para expresar el n�mero de empleado de 1 a 15 posiciones
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="15"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="CURP" type="nomina:t_CURP" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la expresi�n de la CURP del trabajador
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="TipoRegimen" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la expresi�n del tipo de r�gimen por el cual se tiene contratado al trabajador Este tiene dos posibles valores: �Asimilados a salarios� o �Sueldos y salarios�
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:pattern value="Asimilados a salarios"/>
<xs:pattern value="Sueldos y salarios"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="NumSeguridadSocial">
<xs:annotation>
<xs:documentation>
Atributo opcional para la expresi�n del n�mero de seguridad social aplicable al trabajador
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="15"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="FechaPago" type="xs:date" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la expresi�n de la fecha efectiva de erogaci�n del gasto. Se expresa en la forma aaaa-mm-dd, de acuerdo con la especificaci�n ISO 8601.
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="FechaInicialPago" type="xs:date" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la expresi�n de la fecha inicial del pago. Se expresa en la forma aaaa-mm-dd, de acuerdo con la especificaci�n ISO 8601.
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="FechaFinalPago" type="xs:date" use="required">
<xs:annotation>
<xs:documentation>
Atributo requerido para la expresi�n de la fecha final del pago. Se expresa en la forma aaaa-mm-dd, de acuerdo con la especificaci�n ISO 8601.
</xs:documentation>
</xs:annotation>
</xs:attribute>
<xs:attribute name="NumDiasPagados">
<xs:annotation>
<xs:documentation>
Atributo opcional para la expresi�n del n�mero de d�as pagados
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:int">
<xs:minInclusive value="1"/>
<xs:maxInclusive value="99999"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Departamento">
<xs:annotation>
<xs:documentation>
Atributo opcional para la expresi�n del departamento o �rea a la que pertenece el trabajador
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="100"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Pais" use="required">
<xs:annotation>
<xs:documentation>Atributo requerido para la expresi�n del pa�s</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:string">
<xs:minLength value="1"/>
<xs:maxLength value="100"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="CLABE">
<xs:annotation>
<xs:documentation>Atributo opcional para la expresi�n de la CLABE</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="nomina:t_Clabe"/>
</xs:simpleType>
</xs:attribute>
<xs:attribute name="Banco">
<xs:annotation>
<xs:documentation>
Atributo opcional para la expresi�n del Banco conforme al catal�go, donde se realiza un dep�sito de n�mina
</xs:documentation>
</xs:annotation>
<xs:simpleType>
<xs:restriction base="xs:int">
<xs:minInclusive value="1"/>
<xs:pattern value="[0-9]{3}"/>
</xs:restriction>
</xs:simpleType>
</xs:attribute>
</xs:complexType>
</xs:element>
<xs:simpleType name="t_CURP">
<xs:annotation>
<xs:documentation>Tipo definido para la expresi�n de una CURP.</xs:documentation>
</xs:annotation>
<xs:restriction base="xs:string">
<xs:whiteSpace value="collapse"/>
<xs:length value="18"/>
<xs:pattern value="[A-Z][A,E,I,O,U,X][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][M,H][A-Z]{2}[B,C,D,F,G,H,J,K,L,M,N,�,P,Q,R,S,T,V,W,X,Y,Z]{3}[0-9,A-Z][0-9]"/>
</xs:restriction>
</xs:simpleType>
<xs:simpleType name="t_Importe">
<xs:annotation>
<xs:documentation>
Tipo definido para expresar importes num�ricos con fracci�n hasta seis decimales
</xs:documentation>
</xs:annotation>
<xs:restriction base="xs:decimal">
<xs:fractionDigits value="6"/>
<xs:whiteSpace value="collapse"/>
</xs:restriction>
</xs:simpleType>
<xs:simpleType name="t_Clabe">
<xs:annotation>
<xs:documentation>Tipo definido para expresar la CLABE interbancaria</xs:documentation>
</xs:annotation>
<xs:restriction base="xs:integer">
<xs:pattern value="[0-9]{18}"/>
</xs:restriction>
</xs:simpleType>
</xs:schema>