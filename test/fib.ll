; ModuleID = "main"
target triple = "x86_64-unknown-linux-gnu"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

define i32 @"fib"(i32 %".1")
{
fib_entry:
  %".3" = alloca i32
  store i32 %".1", i32* %".3"
  %".5" = load i32, i32* %".3"
  %".6" = icmp slt i32 %".5", 2
  br i1 %".6", label %"fib_entry.if", label %"fib_entry.endif"
fib_entry.if:
  %".8" = load i32, i32* %".3"
  ret i32 %".8"
fib_entry.endif:
  %".10" = load i32, i32* %".3"
  %".11" = sub i32 %".10", 2
  %".12" = call i32 @"fib"(i32 %".11")
  %".13" = load i32, i32* %".3"
  %".14" = sub i32 %".13", 1
  %".15" = call i32 @"fib"(i32 %".14")
  %".16" = add i32 %".12", %".15"
  ret i32 %".16"
}

define i32 @"main"()
{
main_entry:
  %".2" = call i32 @"fib"(i32 40)
  ret i32 %".2"
}
