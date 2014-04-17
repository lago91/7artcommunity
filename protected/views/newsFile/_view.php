<?php
/* @var $this NewsFileController */
/* @var $data newsFile */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idnoticiaArchivo')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idnoticiaArchivo), array('view', 'id'=>$data->idnoticiaArchivo)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('noticia_idnoticia')); ?>:</b>
	<?php echo CHtml::encode($data->noticia_idnoticia); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tipoArchivo_idtipoArchivo')); ?>:</b>
	<?php echo CHtml::encode($data->tipoArchivo_idtipoArchivo); ?>
	<br />


</div>