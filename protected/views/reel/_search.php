<?php
/* @var $this ReelController */
/* @var $model Reel */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idreel'); ?>
		<?php echo $form->textField($model,'idreel'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'reel'); ?>
		<?php echo $form->textField($model,'reel'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'usuario_idusuario'); ?>
		<?php echo $form->textField($model,'usuario_idusuario'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->