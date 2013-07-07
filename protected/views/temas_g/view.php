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

if($count_lecciones == 0){
	$html = 'sin lección';
}else{

	$html='<table><tr><td colspan="8" style="text-align: center;">Declaraciones</td></tr>';
	foreach($lecciones as $fila){  
		$html.= "<tr class='principal' >
			<td  align='center' style=' border: 1px solid #AAAAAA;padding: 0.2em;'>".$fila['id_lecciones']."</td>
			<td  align='center'  style='border: 1px solid #AAAAAA;padding: 0.2em;'>".$fila['nb_lecciones']."</td>" .
			"<td  align='center'  style='border: 1px solid #AAAAAA;padding: 0.2em;'>".$fila['id_temas']."</td>" .
					"</tr>";
	} 
	$html.='</table>';

}

echo $html;

?>
