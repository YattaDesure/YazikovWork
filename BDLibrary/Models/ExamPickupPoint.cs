using System;
using System.Collections.Generic;

namespace BDLibrary.Models;

public partial class ExamPickupPoint
{
    public int OrderPickupPoint { get; set; }

    public int Index { get; set; }

    public string City { get; set; } = null!;

    public string Street { get; set; } = null!;

    public byte HomeNumber { get; set; }

    public virtual ICollection<ExamOrder> ExamOrders { get; set; } = new List<ExamOrder>();
}
