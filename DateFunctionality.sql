use CLIENT_BASE
GO

SELECT dbo.UFN_LEVENSHTEIN	(
									LTRIM(REPLACE(REPLACE(UPPER('Yayasan Cipta Karya'),'PT',''),'CV','')),
									UPPER('YAYASAN KARINA')
								) * 100 as Result
/*----------------------------------------------------------------------------------------*/
--FUNCTION RETURN DATE
/*----------------------------------------------------------------------------------------*/
SELECT convert(varchar(20),GETDATE(),106) as Result

/*----------------------------------------------------------------------------------------*/

----------------------------------------------------------------------------
git config --global user.name mr-indonesia
git config --global user.email secretcode190@gmail.com

git init
git add .
git commit -m "initial commit"

git remote add origin https://github.com/mr-indonesia/dbsbankpostingengine.git
git remote -v

git branch -M main
git push -u origin main

git checkout -b NayyaraBranch
git branch NayyaraBranch
git push -u origin NayyaraBranch
git branch -a
git branch *
git checkout NayyaraBranch
----------------------------------------------------------------------------
git config --global user.name "Johan Koesnadi"
git config --global user.email "johan.koesnadi@mitra.takaful.com"

git remote add origin git@git.takaful.com:atk/quotation-non-health.git
git remote -v

git pull origin master
git pull origin uat

git checkout uat
----------------------------------------------------------------------------

git config --global user.name "Johan Koesnadi"
git config --global user.email "johan.koesnadi@mitra.takaful.com"

# Clone tanpa checkout
git clone --no-checkout https://git.takaful.com/atk/quotation-non-health.git quotation-non-health
cd quotation-non-health

# Aktifkan sparse checkout
git config core.sparseCheckout true

# Tentukan folder yang diinginkan
echo "min-quotation-takaful-apps/" >> .git/info/sparse-checkout
echo "ux-quotation-takaful-apps/" >> .git/info/sparse-checkout

# Lakukan checkout
git checkout main

