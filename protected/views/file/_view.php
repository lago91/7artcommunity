<?php
/* @var $this FileController */
/* @var $data file */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idarchivo')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idarchivo), array('view', 'id'=>$data->idarchivo)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('archivo')); ?>:</b>
	<?php echo CHtml::encode($data->archivo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tipo')); ?>:</b>
	<?php echo CHtml::encode($data->tipo); ?>
	<br />


</div>