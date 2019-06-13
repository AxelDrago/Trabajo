using Microsoft.EntityFrameworkCore.Migrations;

namespace Trabajo.Migrations
{
    public partial class fotoevento : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Foto",
                table: "Evento",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Foto",
                table: "Evento");
        }
    }
}
