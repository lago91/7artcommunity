<?php
/* @var $this FileController */
/* @var $model file */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idarchivo'); ?>
		<?php echo $form->textField($model,'idarchivo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'archivo'); ?>
		<?php echo $form->textField($model,'archivo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tipo'); ?>
		<?php echo $form->textField($model,'tipo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->