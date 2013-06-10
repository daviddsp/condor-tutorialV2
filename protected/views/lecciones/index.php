<?php
$this->breadcrumbs=array(
	'Lecciones',
);

$this->widget('bootstrap.widgets.TbTabs', array(
	'type'=>'tabs', // 'tabs' or 'pills'
	'tabs'=>array(
	array('label'=>'Crear Lecciones','url'=>array('create')),
	array('label'=>'Gestión de Lecciones','url'=>array('admin')),
	),
));

/*
$this->menu=array(
	array('label'=>'Crear Lecciones','url'=>array('create')),
	array('label'=>'Gestión de Lecciones','url'=>array('admin')),
);*/
?>

<h1>Lecciones</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
