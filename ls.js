var maxPathSum = function(root) {
    let maxSum = -Infinity

    function dfs(node) {
        if (node === null) return 0

        let leftMax = Math.max(0, dfs(node.left))
        let rightMax = Math.max(0, dfs(node.right))

        maxSum = Math.max(maxSum, node.val + leftMax + rightMax)

        return node.val + Math.max(leftMax, rightMax)
    }

    dfs(root)
    return maxSum
};