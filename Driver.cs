public class Driver
{
    public string Name { get; set; }
    public string Surname { get; set; }
    public int? VUId { get; set; }
    public DateTime? Birthday { get; set; }
    public int Age()
    {
        if(Birthday == null)
        {
            throw new Exception();
        }
        else
        {
            return (int)((DateTime.Now - Birthday).Value.TotalDays) / 365;
        }
        
    }

}