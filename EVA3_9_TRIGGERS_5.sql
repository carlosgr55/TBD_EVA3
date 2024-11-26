CREATE DEFINER=`root`@`localhost` TRIGGER `productos_AFTER_INSERT` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
	set @contador = @contador + 1;
END