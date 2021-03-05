Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 526A032EC39
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 14:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230420AbhCENb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 08:31:27 -0500
Received: from inva021.nxp.com ([92.121.34.21]:58664 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230435AbhCENbE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 5 Mar 2021 08:31:04 -0500
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 29F3820148D;
        Fri,  5 Mar 2021 14:31:03 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5BA2520149F;
        Fri,  5 Mar 2021 14:30:58 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 29CA44031C;
        Fri,  5 Mar 2021 14:30:52 +0100 (CET)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, jan.kiszka@siemens.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v5 18/18] firmware: imx: scu-pd: do not power off console domain
Date:   Fri,  5 Mar 2021 21:17:48 +0800
Message-Id: <1614950268-22073-20-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not power off console domain in runtime pm.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 * original patch was sent here:
   https://patchwork.kernel.org/project/linux-arm-kernel/patch/1573995924-14752-1-git-send-email-aisheng.dong@nxp.com/
 * move to this patch series as it's required for imx8qm booting
---
 drivers/firmware/imx/scu-pd.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index 08533ee67626..338800d16c65 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -86,6 +86,8 @@ struct imx_sc_pd_soc {
 	u8 num_ranges;
 };
 
+static int imx_con_rsrc;
+
 static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	/* LSIO SS */
 	{ "pwm", IMX_SC_R_PWM_0, 8, true, 0 },
@@ -207,6 +209,23 @@ to_imx_sc_pd(struct generic_pm_domain *genpd)
 	return container_of(genpd, struct imx_sc_pm_domain, pd);
 }
 
+static void imx_sc_pd_get_console_rsrc(void)
+{
+	struct of_phandle_args specs;
+	int ret;
+
+	if (!of_stdout)
+		return;
+
+	ret = of_parse_phandle_with_args(of_stdout, "power-domains",
+					 "#power-domain-cells",
+					 0, &specs);
+	if (ret)
+		return;
+
+	imx_con_rsrc = specs.args[0];
+}
+
 static int imx_sc_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
 	struct imx_sc_msg_req_set_resource_power_mode msg;
@@ -267,6 +286,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 		      const struct imx_sc_pd_range *pd_ranges)
 {
 	struct imx_sc_pm_domain *sc_pd;
+	bool is_off = true;
 	int ret;
 
 	if (!imx_sc_rm_is_resource_owned(pm_ipc_handle, pd_ranges->rsrc + idx))
@@ -288,6 +308,10 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 			 "%s", pd_ranges->name);
 
 	sc_pd->pd.name = sc_pd->name;
+	if (imx_con_rsrc == sc_pd->rsrc) {
+		sc_pd->pd.flags = GENPD_FLAG_RPM_ALWAYS_ON;
+		is_off = false;
+	}
 
 	if (sc_pd->rsrc >= IMX_SC_R_LAST) {
 		dev_warn(dev, "invalid pd %s rsrc id %d found",
@@ -297,7 +321,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 		return NULL;
 	}
 
-	ret = pm_genpd_init(&sc_pd->pd, NULL, true);
+	ret = pm_genpd_init(&sc_pd->pd, NULL, is_off);
 	if (ret) {
 		dev_warn(dev, "failed to init pd %s rsrc id %d",
 			 sc_pd->name, sc_pd->rsrc);
@@ -363,6 +387,8 @@ static int imx_sc_pd_probe(struct platform_device *pdev)
 	if (!pd_soc)
 		return -ENODEV;
 
+	imx_sc_pd_get_console_rsrc();
+
 	return imx_scu_init_pm_domains(&pdev->dev, pd_soc);
 }
 
-- 
2.25.1

