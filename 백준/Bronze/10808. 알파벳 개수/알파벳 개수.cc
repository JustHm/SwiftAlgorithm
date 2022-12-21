#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {
    vector<int> v(26, 0);
    string str;
    
    getline(cin, str);
    
    for(char e : str) {
        int index = int(e) - 97;// 97 == a
        if(index >= 0)
            v[index] += 1;
    }
    
    for(int e : v)
        cout << e << " ";
}

