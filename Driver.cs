public class Driver
{
    public string Name { get; set; }
    public string Surname { get; set; }
    public int? VUId { get; set; }
    public DateTime? Birthday { get; set; }
    public Driver(string name, string surname, int? VUid = null, DateTime? birthday = null)
    {
        Name = name;
        Surname = surname;
        VUId = VUId;
        Birthday = Birthday;
    }
    public int Age()
    {
        if (Birthday == null)
        {
            throw new Exception();
        }
        else
        {
            return (int)((DateTime.Now - Birthday).Value.TotalDays) / 365;
        }

    }
}
internal class Program
{
    internal void main()
    {
        var Drivers = new Driver[2]{ new Driver("Иван", "Иванов"),new Driver("Петр", "Петров")};

    }
}