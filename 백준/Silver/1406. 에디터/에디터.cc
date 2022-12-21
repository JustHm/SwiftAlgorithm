#include <iostream>
#include <list>

using namespace std;

int main(int argc, const char * argv[]) {
    string init;
    int cmdLength;
    list<char> editor;
    
    cin >> init;
    for (char e : init) editor.push_back(e);
    
    auto cursor = editor.end(); //커서위치
    
    cin >> cmdLength;
    while (cmdLength--){
        char cmd;
        cin >> cmd;
        if (cmd == 'P') {
            char add;
            cin >> add;
            editor.insert(cursor, add);
        } else if (cmd == 'L') {
            if (cursor != editor.begin()) cursor--;
        } else if (cmd == 'D') {
            if (cursor != editor.end()) cursor++;
        } else if (cmd == 'B') {
            if (cursor != editor.begin()) {
                cursor--;
                cursor = editor.erase(cursor);
            }
        }
    }
    for(auto e : editor) cout << e;
}
