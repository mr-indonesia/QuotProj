USE QuotationNonHealth
GO

select COMPANY_CODE, COMPANY_NAME = COMPANY_NAME + ' ' + isnull(COMPANY_TYPE_DESCR,''), 
COMPANY_CATEGORY_DESCR, COMPANY_LOB_DESCR, PROPINSI_DESCR, COMPANY_REGISTERED_DATE = convert(varchar(20),
COMPANY_REGISTERED_DATE,106), STAT_DESCR, AGENT, CHANEL_DIST_DESCR, URL_APPROVAL 
from V_COMPANY a where STAT like '%001%'  and COMPANY_NAME like '%cipta karya%'  
and (convert(date,a.COMPANY_REGISTERED_DATE) between convert(date,'23 Aug 2025') and convert(date,'24 Aug 2025')) order by a.COMPANY_NAME
GO

--Approve Company
conn.QueryString = "exec SP_COMPANY_APPROVAL " +
                    "'" + LB_CODE.Text + "'," +
                    "'002'," +
                    "'" + TXT_REASON.Text.Trim() + "'," +
                    "'" + GlobalUse.GetUserMgmt(Session["s"].ToString(), "UserID") + "'";

--reject 
--Approve Company
conn.QueryString = "exec SP_COMPANY_APPROVAL " +
                    "'" + LB_CODE.Text + "'," +
                    "'002'," +
                    "'" + TXT_REASON.Text.Trim() + "'," +
                    "'" + GlobalUse.GetUserMgmt(Session["s"].ToString(), "UserID") + "'";

--Delete Company conn.QueryString = "exec SP_COMPANY_ROLLBACK " +
                    "'" + LB_CODE.Text + "'";
conn.ExecuteQuery();
Response.Write("<script language='javascript'>parent.location.href = 'CompanyApproval.aspx';</script>");