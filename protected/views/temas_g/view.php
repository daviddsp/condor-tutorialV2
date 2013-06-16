<?php
$this->breadcrumbs=array(
	'Temas_g'=>array('index'),
	$model->id_temas,
);


?>

<h1><?php echo $model->nb_temas; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id_temas',
		'nb_temas',
		'descrip_temas',
	),
)); 
?>
