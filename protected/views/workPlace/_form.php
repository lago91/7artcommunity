<?php
/* @var $this WorkPlaceController */
/* @var $model workPlace */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'work-place-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idlugarTrabajo'); ?>
		<?php echo $form->textField($model,'idlugarTrabajo'); ?>
		<?php echo $form->error($model,'idlugarTrabajo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lugarTrabajo'); ?>
		<?php echo $form->textField($model,'lugarTrabajo',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'lugarTrabajo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status'); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->