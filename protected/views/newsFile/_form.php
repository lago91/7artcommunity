<?php
/* @var $this NewsFileController */
/* @var $model newsFile */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'news-file-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'idnoticiaArchivo'); ?>
		<?php echo $form->textField($model,'idnoticiaArchivo'); ?>
		<?php echo $form->error($model,'idnoticiaArchivo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'noticia_idnoticia'); ?>
		<?php echo $form->textField($model,'noticia_idnoticia'); ?>
		<?php echo $form->error($model,'noticia_idnoticia'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tipoArchivo_idtipoArchivo'); ?>
		<?php echo $form->textField($model,'tipoArchivo_idtipoArchivo'); ?>
		<?php echo $form->error($model,'tipoArchivo_idtipoArchivo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->