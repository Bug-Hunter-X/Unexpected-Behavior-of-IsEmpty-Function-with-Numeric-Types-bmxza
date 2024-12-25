# VBScript IsEmpty Function Unexpected Behavior

This example demonstrates unexpected behavior of the `IsEmpty` function in VBScript when dealing with numeric types. The `IsEmpty` function is used to check if a variable is empty or uninitialized, but it may not behave as expected when the variant variable represents a numeric value of zero.

## Bug
The `IsEmpty` function incorrectly considers 0 as an empty variant leading to unexpected output in numerical calculation.  Specifically, when the function `f` receives a numeric parameter `0`, the `IsEmpty` check will return `True`, treating it as an empty variant and assigning it the value of 0. However, this is misleading because a numeric 0 is different from an empty or undefined variable.

## Solution
The solution involves using the `IsNull` function instead of `IsEmpty` to detect explicitly uninitialized variants.  The `IsNull` function is more precise and doesn't misinterpret numeric zero as empty.