<?php
/* @var $this WorkStationController */
/* @var $model workStation */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idlugarTrabajo'); ?>
		<?php echo $form->textField($model,'idlugarTrabajo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'lugarTrabajo'); ?>
		<?php echo $form->textField($model,'lugarTrabajo',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->