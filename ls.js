var sumNumbers = function(root) {
    let totalSum = 0

    function dfs(node, currentNum) {
        if (node === null) {
            return
        }

        currentNum = currentNum * 10 + node.val

        if (node.left === null && node.right === null) {
            totalSum += currentNum
            return
        }
        dfs(node.left, currentNum)
        dfs(node.right, currentNum)
    }

    dfs(root, 0)
    return totalSum
};