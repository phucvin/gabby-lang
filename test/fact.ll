; ModuleID = "main"
target triple = "x86_64-unknown-linux-gnu"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

define i32 @"fact"(i32 %".1")
{
fact_entry:
  %".3" = alloca i32
  store i32 %".1", i32* %".3"
  %".5" = load i32, i32* %".3"
  %".6" = icmp sle i32 %".5", 1
  br i1 %".6", label %"fact_entry.if", label %"fact_entry.endif"
fact_entry.if:
  ret i32 1
fact_entry.endif:
  %".9" = load i32, i32* %".3"
  %".10" = load i32, i32* %".3"
  %".11" = sub i32 %".10", 1
  %".12" = call i32 @"fact"(i32 %".11")
  %".13" = mul i32 %".9", %".12"
  ret i32 %".13"
}

define i32 @"main"()
{
main_entry:
  %".2" = call i32 @"fact"(i32 6)
  ret i32 %".2"
}
