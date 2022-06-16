using Microsoft.EntityFrameworkCore.Migrations;

namespace ADORO_MVC.Migrations
{
    public partial class Salaesid : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Actividades_Salas_SalaId",
                table: "Actividades");

            migrationBuilder.DropIndex(
                name: "IX_Actividades_SalaId",
                table: "Actividades");

            migrationBuilder.AlterColumn<int>(
                name: "SalaId",
                table: "Actividades",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "SalaId",
                table: "Actividades",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.CreateIndex(
                name: "IX_Actividades_SalaId",
                table: "Actividades",
                column: "SalaId");

            migrationBuilder.AddForeignKey(
                name: "FK_Actividades_Salas_SalaId",
                table: "Actividades",
                column: "SalaId",
                principalTable: "Salas",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
