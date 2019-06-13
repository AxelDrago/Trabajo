using Microsoft.EntityFrameworkCore.Migrations;

namespace Trabajo.Migrations
{
    public partial class evento2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Evento_TipoC_TipoEventoId",
                table: "Evento");

            migrationBuilder.DropIndex(
                name: "IX_Evento_TipoEventoId",
                table: "Evento");

            migrationBuilder.DropColumn(
                name: "TipoEventoId",
                table: "Evento");

            migrationBuilder.CreateIndex(
                name: "IX_Evento_TipoId",
                table: "Evento",
                column: "TipoId");

            migrationBuilder.AddForeignKey(
                name: "FK_Evento_TipoC_TipoId",
                table: "Evento",
                column: "TipoId",
                principalTable: "TipoC",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Evento_TipoC_TipoId",
                table: "Evento");

            migrationBuilder.DropIndex(
                name: "IX_Evento_TipoId",
                table: "Evento");

            migrationBuilder.AddColumn<int>(
                name: "TipoEventoId",
                table: "Evento",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Evento_TipoEventoId",
                table: "Evento",
                column: "TipoEventoId");

            migrationBuilder.AddForeignKey(
                name: "FK_Evento_TipoC_TipoEventoId",
                table: "Evento",
                column: "TipoEventoId",
                principalTable: "TipoC",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
