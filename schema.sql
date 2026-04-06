CREATE database empresa;


create table proveedores (
id_proveedor Serial primary key ,
nombre_proveedor varchar (50),
telefono varchar(20),
correo varchar(80), 
direccion varchar(80)
);


create table productos (
id_producto SERIAL primary key,
nombre varchar (50),
marca varchar (50),
categoria varchar (50),
precio numeric (10,2),
stock int,
id_proveedor int,
foreign key (id_proveedor) references proveedores (id_proveedor)
);

create table ventas (
id_venta SERIAL primary key,
fecha date,
nombre_cliente varchar(80),
documento_cliente varchar (20)
);

create table detalle_venta (
id_detalle SERIAL primary key,
id_venta int,
id_producto int,
cantidad int,
foreign key (id_venta) references ventas (id_venta),
foreign key (id_producto) references productos (id_producto)

);





