<h1>Lista de Temas</h1>

<?php
$this->breadcrumbs=array(
	'Temas',
);


$this->widget('bootstrap.widgets.TbTabs', array(
	'type'=>'pills', // 'tabs' or 'pills'
	
	'tabs'=>array(
		array('label'=>'Crear Temas','url'=>array('create')),
		array('label'=>'Gestión de Temas','url'=>array('admin')),
		array('label'=>'Lista de Lecciones','url'=>array('Lecciones/index')),
		array('label'=>'Lista de Contenidos','url'=>array('/Contenidos/index')),
		array('label'=>'Lista de Ejemplos','url'=>array('/Ejemplos/index')),
		array('label'=>'Lista de Ejercicios','url'=>array('/Ejercicios/index')),
		array('label'=>'Lista de Fuentes','url'=>array('/Fuentes/index')),
		array('label'=>'Lista de Multimedia','url'=>array('/Multimedia/index')),
	),
));
/*
$this->menu=array(
	array('label'=>'Create Temas','url'=>array('create')),
	array('label'=>'Manage Temas','url'=>array('admin')),
	array('label'=>'Lista de Lecciones','url'=>array('Lecciones/index')),
);*/
?>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
