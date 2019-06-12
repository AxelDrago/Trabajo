using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Trabajo.Migrations
{
    public partial class Campaña : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "TipoC",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Nombre = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TipoC", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Campañas",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Titulo = table.Column<string>(nullable: false),
                    Contenido = table.Column<string>(nullable: false),
                    TipoId = table.Column<int>(nullable: false),
                    TipoCampañaId = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Campañas", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Campañas_TipoC_TipoCampañaId",
                        column: x => x.TipoCampañaId,
                        principalTable: "TipoC",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Campañas_TipoCampañaId",
                table: "Campañas",
                column: "TipoCampañaId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Campañas");

            migrationBuilder.DropTable(
                name: "TipoC");
        }
    }
}
