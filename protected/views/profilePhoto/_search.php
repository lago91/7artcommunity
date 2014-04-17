<?php
/* @var $this ProfilePhotoController */
/* @var $model profilePhoto */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idfotoPerfil'); ?>
		<?php echo $form->textField($model,'idfotoPerfil'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fotoPerfilcol'); ?>
		<?php echo $form->textField($model,'fotoPerfilcol'); ?>
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