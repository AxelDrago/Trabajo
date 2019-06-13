using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Trabajo.Migrations
{
    public partial class eventos : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Campañas");

            migrationBuilder.CreateTable(
                name: "Evento",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Titulo = table.Column<string>(nullable: false),
                    Contenido = table.Column<string>(nullable: false),
                    TipoId = table.Column<int>(nullable: false),
                    TipoEventoId = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Evento", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Evento_TipoC_TipoEventoId",
                        column: x => x.TipoEventoId,
                        principalTable: "TipoC",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Evento_TipoEventoId",
                table: "Evento",
                column: "TipoEventoId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Evento");

            migrationBuilder.CreateTable(
                name: "Campañas",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    Contenido = table.Column<string>(nullable: false),
                    TipoCampañaId = table.Column<int>(nullable: true),
                    TipoId = table.Column<int>(nullable: false),
                    Titulo = table.Column<string>(nullable: false)
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
    }
}
