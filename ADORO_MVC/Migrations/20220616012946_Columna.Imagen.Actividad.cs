using Microsoft.EntityFrameworkCore.Migrations;

namespace ADORO_MVC.Migrations
{
    public partial class ColumnaImagenActividad : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Imagen",
                table: "Actividades",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Imagen",
                table: "Actividades");
        }
    }
}
