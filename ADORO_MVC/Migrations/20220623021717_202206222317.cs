using Microsoft.EntityFrameworkCore.Migrations;

namespace ADORO_MVC.Migrations
{
    public partial class _202206222317 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Prioridad",
                table: "Actividades");

            migrationBuilder.DropColumn(
                name: "Responsable",
                table: "Actividades");

            migrationBuilder.AddColumn<string>(
                name: "Descripcion",
                table: "Actividades",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "GeneroActividad",
                table: "Actividades",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "TipoActividad",
                table: "Actividades",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Descripcion",
                table: "Actividades");

            migrationBuilder.DropColumn(
                name: "GeneroActividad",
                table: "Actividades");

            migrationBuilder.DropColumn(
                name: "TipoActividad",
                table: "Actividades");

            migrationBuilder.AddColumn<int>(
                name: "Prioridad",
                table: "Actividades",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Responsable",
                table: "Actividades",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
