int main() {
    int a = 0;
    int b = 0 ? (a = 2) : 1;
    return a;
}