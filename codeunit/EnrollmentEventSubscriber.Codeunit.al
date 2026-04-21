codeunit 50001 "Enrollment Event Subscriber"
{
    // Codeunit para suscribirnos a eventos
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterAssignGLAccountValues', '', false, false)]
    local procedure OnAfterAssignGLAccountValues(var SalesLine: Record "Sales Line")
    var
        SalesHeader: Record "Sales Header";
        EnrollmentSetup: Record "Enrollment Setup";
    begin
        // Solo si la línea pertenece a una factura
        if SalesLine."Document Type" <> SalesLine."Document Type"::Invoice then
            exit;

        // Se carga la cabecera para ver si tiene Nº Matrícula
        if not SalesHeader.Get(SalesLine."Document Type", SalesLine."Document No.") then
            exit;

        // Si no tiene matrícula asociada que no haga nada
        if SalesHeader."Enrollment No." = '' then
            exit;

        // Se carga la configuración para coger la descripción
        EnrollmentSetup.Get();
        if EnrollmentSetup."Invoice Line Description" = '' then
            exit;

        // Se cambia la descripción de la línea por la configurada
        SalesLine.Description := EnrollmentSetup."Invoice Line Description";
    end;
}