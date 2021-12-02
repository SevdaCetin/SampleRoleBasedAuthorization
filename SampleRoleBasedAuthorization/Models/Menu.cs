using System;
using System.Collections.Generic;

#nullable disable

namespace SampleRoleBasedAuthorization.Models
{
    public partial class Menu
    {
        public Menu()
        {
            LinkRolesMenus = new HashSet<LinkRolesMenu>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Icon { get; set; }
        public string Url { get; set; }
        public int? ParentId { get; set; }

        public virtual ICollection<LinkRolesMenu> LinkRolesMenus { get; set; }
    }
}
