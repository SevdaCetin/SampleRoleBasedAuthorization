using System;
using System.Collections.Generic;

#nullable disable

namespace SampleRoleBasedAuthorization.Models
{
    public partial class Admin
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int? RolesId { get; set; }

        public virtual Role Roles { get; set; }
    }
}
