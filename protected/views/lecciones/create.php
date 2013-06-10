<?php
$this->breadcrumbs=array(
	'Lecciones'=>array('index'),
	'Crear',
);

$this->menu=array(
	array('label'=>'Lista de Lecciones','url'=>array('index')),
	array('label'=>'Gestión de Lecciones','url'=>array('admin')),
);
?>

<h1>Crear Lecciones</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>