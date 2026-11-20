[1mdiff --git a/.gitignore/workflows/ci.yaml b/.gitignore/workflows/ci.yaml[m
[1mdeleted file mode 100644[m
[1mindex 7ef7b6f..0000000[m
[1m--- a/.gitignore/workflows/ci.yaml[m
[1m+++ /dev/null[m
[36m@@ -1,44 +0,0 @@[m
[31m-name : CI[m
[31m-[m
[31m-on:[m
[31m-  push:[m
[31m-    branches:[m
[31m-      - main[m
[31m-      - develop[m
[31m-[m
[31m-  pull_request:[m
[31m-    branches:[m
[31m-      - main[m
[31m-      - develop[m
[31m-  [m
[31m-  jobs:[m
[31m-    test:[m
[31m-      runs-on: ubuntu-latest[m
[31m-      defaults:[m
[31m-        run:[m
[31m-          working-directory: app[m
[31m-[m
[31m-      steps:[m
[31m-        - name: Checkout repository[m
[31m-          uses: actions/checkout@v4[m
[31m-[m
[31m-        - name: Setup Node.js[m
[31m-          uses: actions/setup-node@v4[m
[31m-[m
[31m-        - name: Setup Node.js[m
[31m-          uses: action/setup-node@v4[m
[31m-          with:[m
[31m-            node-version: 22[m
[31m-            cache: npm[m
[31m-            cache-dependency-path: app/package-lock.json[m
[31m-[m
[31m-        - name: Install dependencies[m
[31m-          run: npm ci[m
[31m-[m
[31m-        - name: Run test[m
[31m-          run: npm test[m
[31m-[m
[31m-        - name: Build Docker Image[m
[31m-          run: |[m
[31m-            docker build\[m
[31m-              -t devops-deployment-lab:${{ github.sha }} \[m
\ No newline at end of file[m
