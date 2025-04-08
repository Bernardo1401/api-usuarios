const { format } = require("@fast-csv/format");
const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");

const exportUserCSV = async (req, res) => {
    try {
        const users = await userModel.getUsuarios();

        res.setHeader("Content-Disposition", "attachment; filename=users.csv");
        res.setHeader("Content-Type", "text/csv");

        const csvStream = format({ headers: true });
        csvStream.pipe(res);

        users.forEach((user) => {
            csvStream.write({
                id: user.id,
                Nome: user.name,
                email: user.email
            });
        });
        csvStream.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o CSV" });
    }
};

const exportUserPDF = async (req, res) => {
    try {
        const users = await userModel.getUsuarios();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        //titulo
        doc.fontSize(20).text("Relatorio de users", { align: "center" });
        doc.moveDown();

        //cabecalho
        doc.fontSize(12).text("Id | Nome | email", { underline: true });
        doc.moveDown(0.5);

        users.forEach((user) => {
            doc.text(
                `${user.id} | ${user.name} | ${user.email}`
            );
        });
        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
};

module.exports = { exportUserCSV, exportUserPDF };