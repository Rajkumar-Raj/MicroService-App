namespace CouponAPI.Models.Dto
{
    public class ResponseDto
    {
        public object? Result {  get; set; }
        public bool IsScuccess { get; set; } = true;
        public string Message { get; set; } = "";

    }
}
