package QuanLyThuVien.model.DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Class kết nối với SQL Server. Bao gồm các phương thức openConnection và closeConnection.
 * 
 * @author
 */
public class ConnectDatabase {
    // Thông tin kết nối trực tiếp trong class
    private String jdbcURL = "jdbc:sqlserver://localhost:1433;databaseName=PRJQuanLyThuVien";
    private String jdbcUsername = "sa";
    private String jdbcPassword = "12345678";
    public Connection jdbcConnection;

    // Constructor mặc định
    public ConnectDatabase() {
    }

    // Mở kết nối tới SQL Server
    public void openConnection() throws SQLException, ClassNotFoundException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                // Đảm bảo driver SQL Server được load
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            } catch (ClassNotFoundException e) {
                throw new SQLException("Không tìm thấy driver SQL Server!", e);
            }
            // Tạo kết nối với cơ sở dữ liệu
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    // Đóng kết nối với SQL Server
    public void closeConnection() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }

    // Main method để test kết nối cơ sở dữ liệu
    public static void main(String[] args) {
        ConnectDatabase connectDatabase = new ConnectDatabase();
        
        try {
            connectDatabase.openConnection();
            System.out.println("Kết nối cơ sở dữ liệu thành công!");
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Kết nối thất bại: " + e.getMessage());
        } finally {
            try {
                connectDatabase.closeConnection();
                System.out.println("Kết nối đã được đóng.");
            } catch (SQLException e) {
                System.out.println("Đóng kết nối thất bại: " + e.getMessage());
            }
        }
    }
}
