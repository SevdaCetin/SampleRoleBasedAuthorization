using System;
using System.Collections.Generic;

#nullable disable

namespace SampleRoleBasedAuthorization.Models
{
    public partial class Role
    {
        public Role()
        {
            Admins = new HashSet<Admin>();
            LinkRolesMenus = new HashSet<LinkRolesMenu>();
        }

        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Admin> Admins { get; set; }
        public virtual ICollection<LinkRolesMenu> LinkRolesMenus { get; set; }
    }
}
