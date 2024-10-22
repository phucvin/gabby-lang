; ModuleID = "main"
target triple = "x86_64-unknown-linux-gnu"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

define i32 @"main"()
{
main_entry:
  %".2" = alloca [13 x i8]
  store [13 x i8] c"while loop\0a\00\00", [13 x i8]* %".2"
  %".4" = getelementptr [13 x i8], [13 x i8]* %".2", i32 0, i32 0
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4")
  %".6" = alloca i32
  store i32 0, i32* %".6"
  %".8" = load i32, i32* %".6"
  %".9" = icmp slt i32 %".8", 10
  br i1 %".9", label %"while_loop_entry1", label %"while_loop_otherwise1"
while_loop_entry1:
  %".11" = load i32, i32* %".6"
  %".12" = alloca [9 x i8]
  store [9 x i8] c"x = %i\0a\00\00", [9 x i8]* %".12"
  %".14" = getelementptr [9 x i8], [9 x i8]* %".12", i32 0, i32 0
  %".15" = call i32 (i8*, ...) @"printf"(i8* %".14", i32 %".11")
  %".16" = load i32, i32* %".6"
  %".17" = add i32 %".16", 1
  store i32 %".17", i32* %".6"
  %".19" = load i32, i32* %".6"
  %".20" = icmp slt i32 %".19", 10
  br i1 %".20", label %"while_loop_entry1", label %"while_loop_otherwise1"
while_loop_otherwise1:
  %".22" = alloca [13 x i8]
  store [13 x i8] c"Until loop\0a\00\00", [13 x i8]* %".22"
  %".24" = getelementptr [13 x i8], [13 x i8]* %".22", i32 0, i32 0
  %".25" = call i32 (i8*, ...) @"printf"(i8* %".24")
  store i32 0, i32* %".6"
  %".27" = load i32, i32* %".6"
  %".28" = icmp sgt i32 %".27", 10
  %".29" = xor i1 %".28", -1
  br i1 %".29", label %"until_loop_entry1", label %"until_loop_otherwise2"
until_loop_entry1:
  %".31" = load i32, i32* %".6"
  %".32" = alloca [9 x i8]
  store [9 x i8] c"x = %i\0a\00\00", [9 x i8]* %".32"
  %".34" = getelementptr [9 x i8], [9 x i8]* %".32", i32 0, i32 0
  %".35" = call i32 (i8*, ...) @"printf"(i8* %".34", i32 %".31")
  %".36" = load i32, i32* %".6"
  %".37" = add i32 %".36", 1
  store i32 %".37", i32* %".6"
  %".39" = load i32, i32* %".6"
  %".40" = icmp sgt i32 %".39", 10
  %".41" = xor i1 %".40", -1
  br i1 %".41", label %"until_loop_entry1", label %"until_loop_otherwise2"
until_loop_otherwise2:
  ret i32 0
}
