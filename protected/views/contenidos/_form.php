<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'horizontalForm',
'type'=>'vertical',
	'id'=>'contenidos-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->dropDownList($model,'id_lecciones', CHtml::listData(Lecciones::model()->findAll(), 'id_lecciones', 'nb_lecciones'),array('prompt'=>'Seleccione la Lección','class'=>'span5')); ?>
	
	<?php echo $form->textFieldRow($model,'id_ejemplos',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_ejercicios',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_fuente_referencias',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_multimedia',array('class'=>'span5')); ?>

	<?#php echo $form->textAreaRow($model,'descrip_contenidos',array('rows'=>6, 'cols'=>50, 'class'=>'span8')); ?>

	<?php echo $form->ckEditorRow($model, 'descrip_contenidos', array('options'=>array('fullpage'=>'js:true', 'width'=>'640', 'resize_maxWidth'=>'640','resize_minWidth'=>'120')));?>	
	
	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Crear' : 'Guardar',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
