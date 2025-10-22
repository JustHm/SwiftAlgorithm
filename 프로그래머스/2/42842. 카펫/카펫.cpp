#include <string>
#include <vector>

using namespace std;

vector<int> solution(int brown, int yellow) {
    vector<int> answer;
    for(int w = 3; w <= brown; w++) { //넓이가 brown보다 클 수는 없다.
        for(int h = 3; h <= w; h++) {  //카펫 가로는 세로와 길이가 같거나 세로보다 더 길다. 그래서 w 까지만.
            int currentBrown = ((w*2)+(h*2))-4; // 둘레를 구하면 그게 Brown
            int currentYellow = (w*h)-currentBrown;
            if (currentBrown == brown && currentYellow == yellow) {
                answer.push_back(w);
                answer.push_back(h);
                return answer;
            }
        }
    }
    return answer;
}