def permutations(seq):
    def permute(seq):
        if len(seq) == 0:
            return []
        for i in range(len(seq)):
            num = seq[i]
            seq = seq[:i] + seq[i+1:]
            return [num] + permute(seq[1:])
    yield from permute(seq)
    seqiter = iter(seq)
    # for i in permute(seq):

x = permutations([1, 2, 3]) # Returns a sorted list containing elements of the generator
for i in x:
    print(x)
