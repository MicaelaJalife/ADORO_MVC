using Microsoft.EntityFrameworkCore.Migrations;

namespace ADORO_MVC.Migrations
{
    public partial class seagregocontador : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Contador",
                table: "Actividades",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Contador",
                table: "Actividades");
        }
    }
}
