#Sorting - Implement two types of sorting algorithms: Merge sort and bubble sort 


def merge_sort(arr)
	return arr if arr.count <= 1
	n = arr.count/2

	left_array = arr[0..n-1]
	right_array = arr[n..-1]

	left_array = merge_sort(left_array)
	right_array = merge_sort(right_array)

	return merge(left_array, right_array)
end

def merge(left_array, right_array)
	merged = []
	until left_array.empty? or right_array.empty?
		if left_array[0] <= right_array[0]
			merged << left_array.shift
		else
			merged << right_array.shift
		end
	end
	merged + left_array + right_array	
end

def bubble_sort(arr)
	n = arr.count
	until(n == 0)
		n2 = 0
		for i in 1..n-1
			if arr[i-1] > arr[i]
				arr[i-1], arr[i] = arr[i], arr[i-1]
				n2 = i
			end
		end
		n = n2
	end
	return arr
end












