Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01BE94B3E3D
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238712AbiBMW6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:16 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238666AbiBMW6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:15 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C20C54BE0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:09 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id qk11so13532087ejb.2
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mdx7I5Eo8oBah9t8/cpT7ExRF6D3O1Ycqvlfz85E7CA=;
        b=l4JPVCQeLEpqHBwiyDM7FZuMwpCo8D7yYfnnZbSIQKtACgK2kHw8qP1u2IPItn575X
         XFF5mQ6cP24SV2wWk88zKdZ+xoUo6u57lmelWOe77w5l1DFRcr6yoPpdFJSoUmHQbp2p
         jIPWfdD8168RS9i2EH0Jekrt6J0xKhYkiGyKraMmWDEEWue3hI69IACLyyV0uP4y7+8H
         Fkg7L3McdTJumeEahXgIprbSgoDsDEVvMyHvJhOm+YXRERz9KBqOwuFMFtFYdKu2iDbH
         zSQZ8eThBGuHXFI/gLEB4359z2wrxVUP4nPn/v1k7uWl75M4WH7DFvXuV2MF/cvScdRf
         5zFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mdx7I5Eo8oBah9t8/cpT7ExRF6D3O1Ycqvlfz85E7CA=;
        b=EzLLCZhzxmjE2LN5gnKHQjh+U9knnQhu0kSzb9uc6D0yPKTP+bPq90Cvr4Jj7IBUb1
         7IpZJLSieYOmByNw2rLxvEmjcQkDNFhhvne6LIzNuxK7u38dcSSs+WqcY4ggM/Bp2wmD
         4d+BaJyvnoT7qLLfqfuBowhMyZkpBpD5QASbVmKJZ5pJ5mW+A1g0IoLoz/F+wVg6TEBm
         1rBvVdh/Udamxcxb/CP7UklYlarNmIhkCBrWHFupd4PfavcM4Znd+d6MsihPvCTkDyI5
         GEmA7D7QJurESjCQF304lCW6NzAhqcT5e0mBA9RZSxFe1PI+buzp1o+5WBD0yOh+Jfz2
         jNYg==
X-Gm-Message-State: AOAM5327TqR36fDlIsVMjVSf4DtoSXyxVKIh4f4cq3TIXg/urcrwF+sM
        qD92VYUYOedJP34ruHomXbdaACyztkj2BA==
X-Google-Smtp-Source: ABdhPJwEC3TJGmKXsvO1w6ER7exMZMJ0Xc+Rid1ieNp9AtEFq2/oU//USalQA4a31llIDs2PBK/4ug==
X-Received: by 2002:a17:907:9805:: with SMTP id ji5mr4505197ejc.489.1644793087598;
        Sun, 13 Feb 2022 14:58:07 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:07 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 08/15] soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
Date:   Sun, 13 Feb 2022 22:56:40 +0000
Message-Id: <20220213225646.67761-9-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
with the ISP and H264 bits, and V3D is in the same place in the new ASB
as the old one.

Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
BCM2711. On top of that introduce the macro ASB_BASE() which will select
the correct ASB register base, based on whether we're trying to access
V3D and which platform we're on.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v2:
 - Correct names again

Changes since v1:
 - Correct names

 drivers/soc/bcm/bcm2835-power.c | 66 ++++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 25 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 1e0041ec8132..eea31f75dc64 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -126,8 +126,9 @@
 
 #define ASB_AXI_BRDG_ID			0x20
 
-#define ASB_READ(reg) readl(power->asb + (reg))
-#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
+#define ASB_BASE(is_v3d) (is_v3d && power->rpivid_asb ? power->rpivid_asb : power->asb)
+#define ASB_READ(reg, is_v3d) readl(ASB_BASE(is_v3d) + (reg))
+#define ASB_WRITE(reg, val, is_v3d) writel(PM_PASSWORD | (val), ASB_BASE(is_v3d) + (reg))
 
 struct bcm2835_power_domain {
 	struct generic_pm_domain base;
@@ -142,13 +143,16 @@ struct bcm2835_power {
 	void __iomem		*base;
 	/* AXI Async bridge registers. */
 	void __iomem		*asb;
+	/* RPiVid bridge registers. */
+	void __iomem		*rpivid_asb;
 
 	struct genpd_onecell_data pd_xlate;
 	struct bcm2835_power_domain domains[BCM2835_POWER_DOMAIN_COUNT];
 	struct reset_controller_dev reset;
 };
 
-static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
+static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg,
+			      bool is_v3d)
 {
 	u64 start;
 
@@ -158,8 +162,8 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 	start = ktime_get_ns();
 
 	/* Enable the module's async AXI bridges. */
-	ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
-	while (ASB_READ(reg) & ASB_ACK) {
+	ASB_WRITE(reg, ASB_READ(reg, is_v3d) & ~ASB_REQ_STOP, is_v3d);
+	while (ASB_READ(reg, is_v3d) & ASB_ACK) {
 		cpu_relax();
 		if (ktime_get_ns() - start >= 1000)
 			return -ETIMEDOUT;
@@ -168,7 +172,8 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 	return 0;
 }
 
-static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
+static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg,
+			       bool is_v3d)
 {
 	u64 start;
 
@@ -178,8 +183,8 @@ static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
 	start = ktime_get_ns();
 
 	/* Enable the module's async AXI bridges. */
-	ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
-	while (!(ASB_READ(reg) & ASB_ACK)) {
+	ASB_WRITE(reg, ASB_READ(reg, is_v3d) | ASB_REQ_STOP, is_v3d);
+	while (!(ASB_READ(reg, is_v3d) & ASB_ACK)) {
 		cpu_relax();
 		if (ktime_get_ns() - start >= 1000)
 			return -ETIMEDOUT;
@@ -274,7 +279,8 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
 				u32 pm_reg,
 				u32 asb_m_reg,
 				u32 asb_s_reg,
-				u32 reset_flags)
+				u32 reset_flags,
+				bool is_v3d)
 {
 	struct bcm2835_power *power = pd->power;
 	int ret;
@@ -301,13 +307,13 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
 		goto err_enable_resets;
 	}
 
-	ret = bcm2835_asb_enable(power, asb_m_reg);
+	ret = bcm2835_asb_enable(power, asb_m_reg, is_v3d);
 	if (ret) {
 		dev_err(power->dev, "Failed to enable ASB master for %s\n",
 			pd->base.name);
 		goto err_disable_clk;
 	}
-	ret = bcm2835_asb_enable(power, asb_s_reg);
+	ret = bcm2835_asb_enable(power, asb_s_reg, is_v3d);
 	if (ret) {
 		dev_err(power->dev, "Failed to enable ASB slave for %s\n",
 			pd->base.name);
@@ -317,7 +323,7 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
 	return 0;
 
 err_disable_asb_master:
-	bcm2835_asb_disable(power, asb_m_reg);
+	bcm2835_asb_disable(power, asb_m_reg, is_v3d);
 err_disable_clk:
 	clk_disable_unprepare(pd->clk);
 err_enable_resets:
@@ -329,22 +335,23 @@ static int bcm2835_asb_power_off(struct bcm2835_power_domain *pd,
 				 u32 pm_reg,
 				 u32 asb_m_reg,
 				 u32 asb_s_reg,
-				 u32 reset_flags)
+				 u32 reset_flags,
+				 bool is_v3d)
 {
 	struct bcm2835_power *power = pd->power;
 	int ret;
 
-	ret = bcm2835_asb_disable(power, asb_s_reg);
+	ret = bcm2835_asb_disable(power, asb_s_reg, is_v3d);
 	if (ret) {
 		dev_warn(power->dev, "Failed to disable ASB slave for %s\n",
 			 pd->base.name);
 		return ret;
 	}
-	ret = bcm2835_asb_disable(power, asb_m_reg);
+	ret = bcm2835_asb_disable(power, asb_m_reg, is_v3d);
 	if (ret) {
 		dev_warn(power->dev, "Failed to disable ASB master for %s\n",
 			 pd->base.name);
-		bcm2835_asb_enable(power, asb_s_reg);
+		bcm2835_asb_enable(power, asb_s_reg, is_v3d);
 		return ret;
 	}
 
@@ -369,7 +376,7 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
 	case BCM2835_POWER_DOMAIN_GRAFX_V3D:
 		return bcm2835_asb_power_on(pd, PM_GRAFX,
 					    ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
-					    PM_V3DRSTN);
+					    PM_V3DRSTN, true);
 
 	case BCM2835_POWER_DOMAIN_IMAGE:
 		return bcm2835_power_power_on(pd, PM_IMAGE);
@@ -377,17 +384,17 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
 	case BCM2835_POWER_DOMAIN_IMAGE_PERI:
 		return bcm2835_asb_power_on(pd, PM_IMAGE,
 					    0, 0,
-					    PM_PERIRSTN);
+					    PM_PERIRSTN, false);
 
 	case BCM2835_POWER_DOMAIN_IMAGE_ISP:
 		return bcm2835_asb_power_on(pd, PM_IMAGE,
 					    ASB_ISP_M_CTRL, ASB_ISP_S_CTRL,
-					    PM_ISPRSTN);
+					    PM_ISPRSTN, false);
 
 	case BCM2835_POWER_DOMAIN_IMAGE_H264:
 		return bcm2835_asb_power_on(pd, PM_IMAGE,
 					    ASB_H264_M_CTRL, ASB_H264_S_CTRL,
-					    PM_H264RSTN);
+					    PM_H264RSTN, false);
 
 	case BCM2835_POWER_DOMAIN_USB:
 		PM_WRITE(PM_USB, PM_USB_CTRLEN);
@@ -435,7 +442,7 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
 	case BCM2835_POWER_DOMAIN_GRAFX_V3D:
 		return bcm2835_asb_power_off(pd, PM_GRAFX,
 					     ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
-					     PM_V3DRSTN);
+					     PM_V3DRSTN, true);
 
 	case BCM2835_POWER_DOMAIN_IMAGE:
 		return bcm2835_power_power_off(pd, PM_IMAGE);
@@ -443,17 +450,17 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
 	case BCM2835_POWER_DOMAIN_IMAGE_PERI:
 		return bcm2835_asb_power_off(pd, PM_IMAGE,
 					     0, 0,
-					     PM_PERIRSTN);
+					     PM_PERIRSTN, false);
 
 	case BCM2835_POWER_DOMAIN_IMAGE_ISP:
 		return bcm2835_asb_power_off(pd, PM_IMAGE,
 					     ASB_ISP_M_CTRL, ASB_ISP_S_CTRL,
-					     PM_ISPRSTN);
+					     PM_ISPRSTN, false);
 
 	case BCM2835_POWER_DOMAIN_IMAGE_H264:
 		return bcm2835_asb_power_off(pd, PM_IMAGE,
 					     ASB_H264_M_CTRL, ASB_H264_S_CTRL,
-					     PM_H264RSTN);
+					     PM_H264RSTN, false);
 
 	case BCM2835_POWER_DOMAIN_USB:
 		PM_WRITE(PM_USB, 0);
@@ -626,13 +633,22 @@ static int bcm2835_power_probe(struct platform_device *pdev)
 	power->dev = dev;
 	power->base = pm->base;
 	power->asb = pm->asb;
+	power->rpivid_asb = pm->rpivid_asb;
 
-	id = ASB_READ(ASB_AXI_BRDG_ID);
+	id = ASB_READ(ASB_AXI_BRDG_ID, false);
 	if (id != 0x62726467 /* "BRDG" */) {
 		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
 		return -ENODEV;
 	}
 
+	if (pm->rpivid_asb) {
+		id = ASB_READ(ASB_AXI_BRDG_ID, true);
+		if (id != 0x62726467 /* "BRDG" */) {
+			dev_err(dev, "RPiVid ASB register ID returned 0x%08x\n", id);
+			return -ENODEV;
+		}
+	}
+
 	power->pd_xlate.domains = devm_kcalloc(dev,
 					       ARRAY_SIZE(power_domain_names),
 					       sizeof(*power->pd_xlate.domains),
-- 
2.35.1

