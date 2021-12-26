Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC8E347F5D4
	for <lists+devicetree@lfdr.de>; Sun, 26 Dec 2021 09:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231732AbhLZIZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Dec 2021 03:25:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231789AbhLZIZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Dec 2021 03:25:46 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52600C06175A
        for <devicetree@vger.kernel.org>; Sun, 26 Dec 2021 00:25:45 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id x21so28137424lfa.5
        for <devicetree@vger.kernel.org>; Sun, 26 Dec 2021 00:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QfGX56SYhwrpe+QvNudq4oZC6Wdokgb4rNo9PWlg7Lw=;
        b=gnqhgzeGrkX3CEKT0qBAnDAHP9U77iFMEW20LrgKWtBGaZme7MXfQIfo7UbEr8RhN8
         ZviUScjNbVWU1pxSJlQBvOF69+9foyrlO4R5Q/ldiRAjikhoTTF9AibmQqHzip2/qYX2
         eSuzotv3MR5pfI0ah8DZ2T5X4BG17RSuyUkBCyy1DPNVKM1WF6LQjfmJf2k4vNwXC9xz
         UuXqKNYh7+5Cl19NIE5/JrX36w9VcvRpqG4h8kwD7K5FcZIhq/PwnlJ5hymrg6DnzCXP
         Vb0Al4WJtK5VkSXLLs8NxdeevBZhHJDSL/wIUqDcrqyI4ciAJJLcbdq0hnGM7zAM3oZB
         llfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QfGX56SYhwrpe+QvNudq4oZC6Wdokgb4rNo9PWlg7Lw=;
        b=vaKlRsfAEuCI93VxBaYMpsROLJH2S+aETlcS/jPmr6UBc8CwJhyf60kTGaqS6lBjVf
         KWE4ev45/zMtGHeaRZHOh8ADeaKkkkWR/0nuuNqk6i+hKJtehYikeyThcQKK1jsaRZJ7
         DyFBgOw6KKm+XgcN+/S6swKu70ELuBCRFDV6FWZqHtlLe+lH+2Ms8L4cOGQeLCamAKHl
         k3sfHSa3Sj4asoXYrtUR2OcuXtCyhv4SSGzNKe8FxAY3lukfzIlrO72Vmbol8UbTU4tJ
         swiCwRQQq8nNLflYGwoHUxIEXX3FFJ0m5PvG3J0oGB0Z+agCWcd+Tp4LoIx0u8lPXGpZ
         C4OA==
X-Gm-Message-State: AOAM531ZJfsavtvoGeH+7F+CvhHTnPWhi655FgYSLAtK86Jm+oW3AVee
        tggKFU5Eb9VLQySwbBRpzzIRQg==
X-Google-Smtp-Source: ABdhPJya3oGg+1T8AWsq/DMm18GJEUhzuVkVpI8Z4am1xyFxdaHtMvIoDt3lS1UBLDxQ4SrWHEYNLg==
X-Received: by 2002:a05:6512:3e13:: with SMTP id i19mr11481737lfv.508.1640507143488;
        Sun, 26 Dec 2021 00:25:43 -0800 (PST)
Received: from cobook.home (nikaet.starlink.ru. [94.141.168.29])
        by smtp.gmail.com with ESMTPSA id z5sm1309023lfd.184.2021.12.26.00.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Dec 2021 00:25:43 -0800 (PST)
From:   Nikita Yushchenko <nikita.yoush@cogentembedded.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Christian Gromm <christian.gromm@microchip.com>
Cc:     linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Subject: [PATCH 2/3] staging: most: dim2: use consistent routine naming
Date:   Sun, 26 Dec 2021 11:25:29 +0300
Message-Id: <20211226082530.2245198-3-nikita.yoush@cogentembedded.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211226082530.2245198-1-nikita.yoush@cogentembedded.com>
References: <20211226082530.2245198-1-nikita.yoush@cogentembedded.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename init routines and enum values to reflect that those are for
Renesas R-Car Gen2 and R-Car Gen3 SoCs.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 drivers/staging/most/dim2/dim2.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 044e4bdeeaf2..29f8ce2a47f5 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -971,7 +971,7 @@ static void fsl_mx6_disable(struct platform_device *pdev)
 	clk_disable_unprepare(dev->clk);
 }
 
-static int rcar_h2_enable(struct platform_device *pdev)
+static int rcar_gen2_enable(struct platform_device *pdev)
 {
 	struct dim2_hdm *dev = platform_get_drvdata(pdev);
 	int ret;
@@ -1006,7 +1006,7 @@ static int rcar_h2_enable(struct platform_device *pdev)
 	return 0;
 }
 
-static void rcar_h2_disable(struct platform_device *pdev)
+static void rcar_gen2_disable(struct platform_device *pdev)
 {
 	struct dim2_hdm *dev = platform_get_drvdata(pdev);
 
@@ -1016,7 +1016,7 @@ static void rcar_h2_disable(struct platform_device *pdev)
 	writel(0x0, dev->io_base + 0x600);
 }
 
-static int rcar_m3_enable(struct platform_device *pdev)
+static int rcar_gen3_enable(struct platform_device *pdev)
 {
 	struct dim2_hdm *dev = platform_get_drvdata(pdev);
 	u32 enable_512fs = dev->clk_speed == CLK_512FS;
@@ -1046,7 +1046,7 @@ static int rcar_m3_enable(struct platform_device *pdev)
 	return 0;
 }
 
-static void rcar_m3_disable(struct platform_device *pdev)
+static void rcar_gen3_disable(struct platform_device *pdev)
 {
 	struct dim2_hdm *dev = platform_get_drvdata(pdev);
 
@@ -1058,20 +1058,20 @@ static void rcar_m3_disable(struct platform_device *pdev)
 
 /* ]] platform specific functions */
 
-enum dim2_platforms { FSL_MX6, RCAR_H2, RCAR_M3 };
+enum dim2_platforms { FSL_MX6, RCAR_GEN2, RCAR_GEN3 };
 
 static struct dim2_platform_data plat_data[] = {
 	[FSL_MX6] = {
 		.enable = fsl_mx6_enable,
 		.disable = fsl_mx6_disable,
 	},
-	[RCAR_H2] = {
-		.enable = rcar_h2_enable,
-		.disable = rcar_h2_disable,
+	[RCAR_GEN2] = {
+		.enable = rcar_gen2_enable,
+		.disable = rcar_gen2_disable,
 	},
-	[RCAR_M3] = {
-		.enable = rcar_m3_enable,
-		.disable = rcar_m3_disable,
+	[RCAR_GEN3] = {
+		.enable = rcar_gen3_enable,
+		.disable = rcar_gen3_disable,
 		.fcnt = 3,
 	},
 };
@@ -1083,11 +1083,11 @@ static const struct of_device_id dim2_of_match[] = {
 	},
 	{
 		.compatible = "renesas,mlp",
-		.data = plat_data + RCAR_H2
+		.data = plat_data + RCAR_GEN2
 	},
 	{
 		.compatible = "renesas,rcar-gen3-mlp",
-		.data = plat_data + RCAR_M3
+		.data = plat_data + RCAR_GEN3
 	},
 	{
 		.compatible = "xlnx,axi4-os62420_3pin-1.00.a",
-- 
2.30.2

