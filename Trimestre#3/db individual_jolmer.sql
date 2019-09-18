mysql -h localhost -u root -p
create database individual_jolmer;
	use individual_jolmer;
	create table persona(
    id_persona VARCHAR(13) not null,
    pkfk_tdoc_per VARCHAR(4) not null,
    p_nombre_per CHAR(15) not null,
    s_nombre_per CHAR(15) null,
    p_apellido_per CHAR(15) not null,
	s_apellido_per CHAR(15) null,	
	estado_per TINYINT(1) not null,
	primary key(id_persona,pkfk_tdoc_per)
	);
	create table tipo_documento(
    cod_tdoc VARCHAR(4) not null primary key,
    desc_tdoc VARCHAR(20) not null,
    estado_tdoc TINYINT(1) not null
	);
	create table cuenta(
    id_cuenta VARCHAR(13) not null primary key,
    tdoc_cuenta VARCHAR(4) not null,
    fk_numero_pregunta INT(3) not null,
    respuesta_pregunta VARCHAR(25) not null,
    estado_cuenta TINYINT(1) not null
	);
	create table pregunta_de_seguridad(
    numero_pregunta INT(3) not null primary key,
    pregunta VARCHAR(45) not null,
    estado_pregunta TINYINT(1) not null
	);
	create table vendedor(
	id_vendedor VARCHAR(13) not null,
	tdoc_vendedor VARCHAR(4) not null,
	salario_vendedor INT(7) not null,
	primary key(id_vendedor,tdoc_vendedor)
	);
	create table cliente(
	id_cliente VARCHAR(13) not null,
	tdoc_cliente VARCHAR(4) not null,
	primary key(id_cliente,tdoc_cliente)
	);
	create table proveedor(
	id_proveedor VARCHAR(13) not null,
	tdoc_proveedor VARCHAR(4) not null,
	primary key(id_proveedor,tdoc_proveedor)
	);
	create table factura_salida(
	cod_factura_salida VARCHAR(4) not null primary key,
	fecha_salida DATETIME not null,
	cantidad_salida INT(20) not null,
	fk_id_cliente VARCHAR(13) not null,
	fk_tdoc_cliente VARCHAR(4) not null,
	fk_id_vendedor VARCHAR(13) not null,
	fk_tdoc_vendedor VARCHAR(4) not null
	);
	create table producto(
	id_producto INT(7) not null primary key,
	descripcion_producto CHAR(21) not null,
	estado_producto TINYINT(1) not null
	);
	create table factura_salida_prducto(
	pkfk_cod_factura_salida VARCHAR(4) not null,
	pkfk_id_producto_sa INT(7) not null,
	primary key(pkfk_cod_factura_salida,pkfk_id_producto_sa)
	);
	create table factura_entrada(
	cod_factura_entrada VARCHAR(4) not null primary key,
	fecha_entrada DATETIME not null,
	cantidad_entrada INT(20) not null,
	fk_id_proveedor VARCHAR(13) not null,
	fk_tdoc_proveedor VARCHAR(4) not null
	);
	create table factura_entrada_prducto(
	pkfk_cod_factura_entrada VARCHAR(4) not null,
	pkfk_id_producto_en INT(7) not null,
	primary key(pkfk_cod_factura_entrada,pkfk_id_producto_en)
	);