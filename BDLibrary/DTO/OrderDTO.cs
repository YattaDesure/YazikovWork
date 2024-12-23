namespace BDLibrary.DTO
{
    public class OrderDTO
    {
        public int OrderId { get; set; }

        public string? OrderStatus { get; set; }

        public DateTime OrderDeliveryDate { get; set; }
    }
}
