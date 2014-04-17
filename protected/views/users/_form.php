<?php
/* @var $this UsersController */
/* @var $model Users */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'users-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apellidoPaterno'); ?>
		<?php echo $form->textField($model,'apellidoPaterno',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'apellidoPaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apellimoMaterno'); ?>
		<?php echo $form->textField($model,'apellimoMaterno',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'apellimoMaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fechaNacimiento'); ?>
		<?php echo $form->textField($model,'fechaNacimiento'); ?>
		<?php echo $form->error($model,'fechaNacimiento'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estado_idestado'); ?>
		<?php echo $form->textField($model,'estado_idestado'); ?>
		<?php echo $form->error($model,'estado_idestado'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'biografia'); ?>
		<?php echo $form->textField($model,'biografia',array('size'=>60,'maxlength'=>1000)); ?>
		<?php echo $form->error($model,'biografia'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status',array('size'=>2,'maxlength'=>2)); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'codigo'); ?>
		<?php echo $form->textField($model,'codigo',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'codigo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->