for (i = size - 1; i >= 0; i = i - 1) {
    for (j = i; j >= 0; j = j - 1) {
        if (a[j] > a[j + 1]) {
            temp1 = a[j];
            temp2 = a[j + 1];
            a[j] = temp2;
            a[j + 1] = temp1;
        }
    }
}
