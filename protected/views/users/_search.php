<?php
/* @var $this UsersController */
/* @var $model Users */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idusuario'); ?>
		<?php echo $form->textField($model,'idusuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apellidoPaterno'); ?>
		<?php echo $form->textField($model,'apellidoPaterno',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apellimoMaterno'); ?>
		<?php echo $form->textField($model,'apellimoMaterno',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fechaNacimiento'); ?>
		<?php echo $form->textField($model,'fechaNacimiento'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estado_idestado'); ?>
		<?php echo $form->textField($model,'estado_idestado'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'biografia'); ?>
		<?php echo $form->textField($model,'biografia',array('size'=>60,'maxlength'=>1000)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'status'); ?>
		<?php echo $form->textField($model,'status',array('size'=>2,'maxlength'=>2)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'codigo'); ?>
		<?php echo $form->textField($model,'codigo',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->