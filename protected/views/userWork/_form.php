<?php
/* @var $this UserWorkController */
/* @var $model userWork */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-work-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'usuario_idusuario'); ?>
		<?php echo $form->textField($model,'usuario_idusuario'); ?>
		<?php echo $form->error($model,'usuario_idusuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lugarTrabajo_idlugarTrabajo'); ?>
		<?php echo $form->textField($model,'lugarTrabajo_idlugarTrabajo'); ?>
		<?php echo $form->error($model,'lugarTrabajo_idlugarTrabajo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'puestoTrabajo_idpuestoTrabajo'); ?>
		<?php echo $form->textField($model,'puestoTrabajo_idpuestoTrabajo'); ?>
		<?php echo $form->error($model,'puestoTrabajo_idpuestoTrabajo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->