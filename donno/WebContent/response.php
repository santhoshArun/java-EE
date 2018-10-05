case 'add':
	$empCls->insertEmployee();
 break;
 
  function insertEmployee() {
	$data = $resp = array();
	$resp['status'] = false;
	$data['employee_name'] = $_POST["employee_name"];
	$data['employee_salary'] = $_POST["employee_salary"];
	$data['employee_age'] = $_POST["employee_age"];
	
	$result = pg_insert($this->conn, 'employee' , $data) or die("error to insert employee data");
	
	
	$resp['status'] = true;
	$resp['Record'] = $data;
	echo json_encode($resp);  // send data as json format*/
	
}