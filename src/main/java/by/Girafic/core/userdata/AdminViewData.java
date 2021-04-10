package by.Girafic.core.userdata;

public class AdminViewData extends UserViewData
{
    @Override
    public String toString()
    {
        return "AdminViewData{" +
                "id=" + id +
                ", fullName=" + fullName +
                ", mail='" + mail + '\'' +
                ", faculty='" + faculty + '\'' +
                '}';
    }

    public AdminViewData(int id, FullName fullName, String mail, String faculty)
    {
        super(id, fullName, mail, faculty);
    }
}
