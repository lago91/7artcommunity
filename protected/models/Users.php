<?php

/**
 * This is the model class for table "usuario".
 *
 * The followings are the available columns in table 'usuario':
 * @property integer $idusuario
 * @property string $nombre
 * @property string $apellidoPaterno
 * @property string $apellimoMaterno
 * @property string $email
 * @property string $password
 * @property string $fechaNacimiento
 * @property integer $estado_idestado
 * @property string $biografia
 * @property string $status
 * @property string $codigo
 */
class Users extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'usuario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('estado_idestado', 'numerical', 'integerOnly'=>true),
			array('nombre, apellidoPaterno, apellimoMaterno, email, password', 'length', 'max'=>45),
			array('biografia', 'length', 'max'=>1000),
			array('status', 'length', 'max'=>2),
			array('codigo', 'length', 'max'=>20),
			array('fechaNacimiento', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('idusuario, nombre, apellidoPaterno, apellimoMaterno, email, password, fechaNacimiento, estado_idestado, biografia, status, codigo', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'idusuario' => 'Idusuario',
			'nombre' => 'Nombre',
			'apellidoPaterno' => 'Apellido Paterno',
			'apellimoMaterno' => 'Apellimo Materno',
			'email' => 'Email',
			'password' => 'Password',
			'fechaNacimiento' => 'Fecha Nacimiento',
			'estado_idestado' => 'Estado Idestado',
			'biografia' => 'Biografia',
			'status' => 'Status',
			'codigo' => 'Codigo',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('idusuario',$this->idusuario);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('apellidoPaterno',$this->apellidoPaterno,true);
		$criteria->compare('apellimoMaterno',$this->apellimoMaterno,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('fechaNacimiento',$this->fechaNacimiento,true);
		$criteria->compare('estado_idestado',$this->estado_idestado);
		$criteria->compare('biografia',$this->biografia,true);
		$criteria->compare('status',$this->status,true);
		$criteria->compare('codigo',$this->codigo,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Users the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
