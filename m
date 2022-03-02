Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CE7C4C9E0E
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 07:55:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239779AbiCBG4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 01:56:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239775AbiCBG4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 01:56:36 -0500
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D009B2E22
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 22:55:54 -0800 (PST)
Received: from droid04.amlogic.com (10.18.11.246) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2176.14; Wed, 2 Mar 2022
 14:55:51 +0800
From:   Shunzhou Jiang <shunzhou.jiang@amlogic.com>
To:     <linux-arm-kernel@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     Shunzhou Jiang <shunzhou.jiang@amlogic.com>
Subject: [PATCH V5 2/2] soc: s4: Add support for power domains controller
Date:   Wed, 2 Mar 2022 14:55:40 +0800
Message-ID: <20220302065540.16031-3-shunzhou.jiang@amlogic.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20220302065540.16031-1-shunzhou.jiang@amlogic.com>
References: <20220302065540.16031-1-shunzhou.jiang@amlogic.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.18.11.246]
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support s4 Power controller. In s4, power control
registers are in secure domain, and should be accessed by smc.

Signed-off-by: Shunzhou Jiang <shunzhou.jiang@amlogic.com>
---
V1->V2: fix spelling error, patchset use cover-letter
V2->V3: add power domain always on reason
V3->V4: clear vpu and usb power domaon always on
V4->V5: add reviewed owner in patchset
---
 drivers/soc/amlogic/meson-secure-pwrc.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
index 59bd195fa9c9..a10a417a87db 100644
--- a/drivers/soc/amlogic/meson-secure-pwrc.c
+++ b/drivers/soc/amlogic/meson-secure-pwrc.c
@@ -11,6 +11,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <dt-bindings/power/meson-a1-power.h>
+#include <dt-bindings/power/meson-s4-power.h>
 #include <linux/arm-smccc.h>
 #include <linux/firmware/meson/meson_sm.h>
 #include <linux/module.h>
@@ -119,6 +120,18 @@ static struct meson_secure_pwrc_domain_desc a1_pwrc_domains[] = {
 	SEC_PD(RSA,	0),
 };
 
+static struct meson_secure_pwrc_domain_desc s4_pwrc_domains[] = {
+	SEC_PD(S4_DOS_HEVC,	0),
+	SEC_PD(S4_DOS_VDEC,	0),
+	SEC_PD(S4_VPU_HDMI,	0),
+	SEC_PD(S4_USB_COMB,	0),
+	SEC_PD(S4_GE2D,		0),
+	/* ETH is for ethernet online wakeup, and should be always on */
+	SEC_PD(S4_ETH,		GENPD_FLAG_ALWAYS_ON),
+	SEC_PD(S4_DEMOD,	0),
+	SEC_PD(S4_AUDIO,	0),
+};
+
 static int meson_secure_pwrc_probe(struct platform_device *pdev)
 {
 	int i;
@@ -187,11 +200,20 @@ static struct meson_secure_pwrc_domain_data meson_secure_a1_pwrc_data = {
 	.count = ARRAY_SIZE(a1_pwrc_domains),
 };
 
+static struct meson_secure_pwrc_domain_data meson_secure_s4_pwrc_data = {
+	.domains = s4_pwrc_domains,
+	.count = ARRAY_SIZE(s4_pwrc_domains),
+};
+
 static const struct of_device_id meson_secure_pwrc_match_table[] = {
 	{
 		.compatible = "amlogic,meson-a1-pwrc",
 		.data = &meson_secure_a1_pwrc_data,
 	},
+	{
+		.compatible = "amlogic,meson-s4-pwrc",
+		.data = &meson_secure_s4_pwrc_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, meson_secure_pwrc_match_table);
-- 
2.34.1

