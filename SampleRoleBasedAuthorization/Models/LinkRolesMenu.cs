using System;
using System.Collections.Generic;

#nullable disable

namespace SampleRoleBasedAuthorization.Models
{
    public partial class LinkRolesMenu
    {
        public int Id { get; set; }
        public int? RolesId { get; set; }
        public int? MenusId { get; set; }

        public virtual Menu Menus { get; set; }
        public virtual Role Roles { get; set; }
    }
}
