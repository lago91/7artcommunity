<?php
/* @var $this UserWorkController */
/* @var $model userWork */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idtrabajoUsuario'); ?>
		<?php echo $form->textField($model,'idtrabajoUsuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'usuario_idusuario'); ?>
		<?php echo $form->textField($model,'usuario_idusuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'lugarTrabajo_idlugarTrabajo'); ?>
		<?php echo $form->textField($model,'lugarTrabajo_idlugarTrabajo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'puestoTrabajo_idpuestoTrabajo'); ?>
		<?php echo $form->textField($model,'puestoTrabajo_idpuestoTrabajo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->