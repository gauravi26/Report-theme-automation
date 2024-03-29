<?php

/**
 * This is the model class for table "courses".
 *
 * The followings are the available columns in table 'courses':
 * @property integer $id
 * @property string $course_name
 * @property string $course_link
 * @property integer $department_id
 * @property integer $course_type_id
 *
 * The followings are the available model relations:
 * @property CourseType $courseType
 * @property Departments $department
 * @property Faculty[] $faculties
 * @property StudentInformation[] $studentInformations
 */
class Courses extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'courses';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('course_name, course_link, department_id, course_type_id', 'required'),
			array('department_id, course_type_id', 'numerical', 'integerOnly'=>true),
			array('course_name, course_link', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, course_name, course_link, department_id, course_type_id', 'safe', 'on'=>'search'),
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
			'courseType' => array(self::BELONGS_TO, 'CourseType', 'course_type_id'),
			'department' => array(self::BELONGS_TO, 'Departments', 'department_id'),
			'faculties' => array(self::HAS_MANY, 'Faculty', 'course_id'),
			'studentInformations' => array(self::HAS_MANY, 'StudentInformation', 'course_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'course_name' => 'Course Name',
			'course_link' => 'Course Link',
			'department_id' => 'Department',
			'course_type_id' => 'Course Type',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('course_name',$this->course_name,true);
		$criteria->compare('course_link',$this->course_link,true);
		$criteria->compare('department_id',$this->department_id);
		$criteria->compare('course_type_id',$this->course_type_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Courses the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
