<?php
/* @var $this NewsFileController */
/* @var $model newsFile */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'idnoticiaArchivo'); ?>
		<?php echo $form->textField($model,'idnoticiaArchivo'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'noticia_idnoticia'); ?>
		<?php echo $form->textField($model,'noticia_idnoticia'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tipoArchivo_idtipoArchivo'); ?>
		<?php echo $form->textField($model,'tipoArchivo_idtipoArchivo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->