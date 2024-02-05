var merge = function(intervals) {
    if (!intervals.length) return []
    
    intervals.sort((a, b) => a[0] -  b[0])

    const merged = [intervals[0]]

    for (let i = 1; i < intervals.length; i++) {
        const [start, end] = intervals[i]
        const lastEnd = merged[merged.length - 1][1]

        if (start <= lastEnd) {
            merged[merged.length - 1][1] = Math.max(lastEnd, end)
        } else {
            merged.push(intervals[i])
        }
    }
    return merged
};