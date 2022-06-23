using Microsoft.EntityFrameworkCore.Migrations;

namespace ADORO_MVC.Migrations
{
    public partial class Migacion1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Nombre",
                table: "Salas",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Nombre",
                table: "Salas");
        }
    }
}
