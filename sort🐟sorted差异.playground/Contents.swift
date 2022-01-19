var nums = [1,3,2]
var abs = nums
// sorted只返回一个数组的有序版本，不修改原数组
abs.sorted()
print(abs)
// sort无返回值，只会修改原数组
abs.sort()
print(abs)
print(nums)
// 排序后赋值
nums = nums.sorted()
print(nums)

/*
sorted()无参数时默认为升序排序
升序 arr = arr.sorted(by:<)
降序 arr = arr.sorted(by:>)
 */
