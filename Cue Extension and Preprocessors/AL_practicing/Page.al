// page 50502 AL_Practicing_Page
// {
//     ApplicationArea = All;
//     PageType = Card;
//     SourceTable = AL_Practicing;

//     layout
//     {
//         area(content)
//         {
//             Group(Group)
//             {
//                 field("Enter No.1"; Rec."Enter No.1")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Enter No.2"; Rec."Enter No.2")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field(Result; Rec.Result)
//                 {
//                     ApplicationArea = All;
//                 }

//             }
//         }

//     }
//     actions
//     {
//         area(Processing)
//         {
//             action(Calculate)
//             {
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 var

//                     FieldCalculation: Codeunit 50500;
//                     L: Record AL_Practicing;
//                     inputField1: Integer;
//                     inputField2: Integer;
//                     outputField3: Integer;
//                 begin
//                     inputField1 := InputField1;
//                     inputField2 := InputField2;
//                     FieldCalculation.CalculateField3(inputField1, inputField2, outputField3);
//                     L.Result := outputField3;
                    
//                 end;
//             }
//         }
//     }
// }


// // codeunit 50504 Factorial_Subcribtion
// // {
// //     procedure CalculateFactorial(n: Integer): Integer
// //     var
// //         result: Integer;
// //         i: Integer;
// //     begin
// //         result := 1;
// //         for i := 2 to n do
// //             result *= i;
// //         exit(result);
// //     end;

// //     trigger OnRun()
// //     var
// //         num: Integer;

// //         L: record AL_Practicing;
// //     begin
// //         num := L."Enter No.1";
// //         L."Result" := CalculateFactorial(num);
// //     end;
// // }

// codeunit 50500 "Field Calculation"
// {
//     procedure CalculateField3(var "Enter No.1": Integer; var "Enter No.2": Integer; var Result: Integer)
//     begin
//         Result := "Enter No.1" - "Enter No.2";
//     end;

//     trigger OnRun()
//     var
//         inputField1: Integer;
//         inputField2: Integer;
//         outputField3: Integer;
//         L: Record AL_Practicing;
//     begin
//         // Get user input for field1 and field2 (you can replace this with your own logic)
//         inputField1 := L."Enter No.1"; // Example value
//         inputField2 := L."Enter No.2";  // Example value

//         // Calculate field3
//         CalculateField3(inputField1, inputField2, outputField3);

//         // Display the result (you can replace this with your own logic)
//         Message('Result: Field3 = ' + Format(outputField3));
//     end;
// }
