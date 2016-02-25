package ecommerce.util;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class DataSourceSql {
	private static final String driverClassName = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost/ecommerce";
	private static final String dbUsername = "root";
	private static final String dbPassword = "";
	

	public static DriverManagerDataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(driverClassName);
//		Class.forName(driverClassName);
		dataSource.setUrl(url);
		dataSource.setUsername(dbUsername);
		dataSource.setPassword(dbPassword);
		return dataSource;
	}
}
