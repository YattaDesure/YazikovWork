using System;
using System.Collections.Generic;

namespace BDLibrary.Models;

public partial class ExamManufacturer
{
    public int MunufacturerId { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<ExamProduct> ExamProducts { get; set; } = new List<ExamProduct>();
}
