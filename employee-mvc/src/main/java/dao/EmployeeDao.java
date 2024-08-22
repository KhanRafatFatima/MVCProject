package dao;
 
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import entity.Employee;  
 
  
public class EmployeeDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Employee p){  
	String sql = "INSERT INTO EmployeeList(name, gender, dob, address, city, state, loginid,password) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
    return template.update(sql, p.getName(), p.getGender(), p.getDateOfBirth(), p.getAddress(), p.getCity(), p.getState(), p.getLoginID(),p.getPassword()); 
}  
public int update(Employee p){  
	String sql = "UPDATE EmployeeList SET name = ?, gender = ?, address = ?, city = ?, state = ?, password = ? WHERE id = ?";
    return template.update(sql, p.getName(), p.getGender(), p.getAddress(), p.getCity(), p.getState(), p.getPassword(), p.getId());  
}  
public int delete(int id){  
    String sql="delete from EmployeeList where id=?";  
    return template.update(sql,id);  
}  
public Employee getEmpById(int id){  
    String sql="select * from EmployeeList where id=?";  
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Employee>(Employee.class));  
}  
public List<Employee> getEmployees(){  
    return template.query("select * from EmployeeList",new RowMapper<Employee>(){  
        public Employee mapRow(ResultSet rs, int row) throws SQLException {  
        	Employee e=new Employee();  
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setGender(rs.getString(3));  
            e.setDateOfBirth(rs.getDate(4));  
            e.setAddress(rs.getString(5));
            e.setCity(rs.getString(6));
            e.setState(rs.getString(7));
            e.setLoginID(rs.getString(8));
            e.setPassword(rs.getString(9));
            return e;  
        }  
    });  
}
public Employee getEmpByLoginId(String loginid) {
	// TODO Auto-generated method stub
	String sql="select * from EmployeeList where loginid=?";  
    return template.queryForObject(sql, new Object[]{loginid},new BeanPropertyRowMapper<Employee>(Employee.class));
}  
}  
