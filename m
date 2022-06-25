Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B19B55A979
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232680AbiFYLhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232682AbiFYLhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:18 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 341C7167E5
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:17 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M8xsm-1nz05v1cla-006AK8; Sat, 25 Jun 2022 13:37:05 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V4 10/11] soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
Date:   Sat, 25 Jun 2022 13:36:18 +0200
Message-Id: <20220625113619.15944-11-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:CrAi4k9Wo8hscyvh6c49EdnfeKAOjVeZNKoVyBNv8a+wSJRWS4z
 X/dnARLoxXrNsaNJuB3fMJjmvMU76kAJIFnvdg7ZQFqHQJk2a5jmXokxxiyn0ZCZMCPrFu1
 oMYRVrOpRUgB03KFIBxMrvNUpKINUwNKaiGQTrfgKzP69Kye/ORXYetqhdDfvk4CyeKOHr+
 GjUm+OE04XcpEs0z20hmg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:l/7/A6MLRNI=:mqVwQO8FHcu1+Z0dh9v62s
 1NGbvXmwIPOM/x6UOc9ib/+79IjAd/vEQgGf3cmWwuyBMn+t1eyVHS8SppX1T4E3sF2BBuadT
 CHxr+zZpE2ck1uSpoLY06yDbvhsmtx1l42M/2+5uvhUWxF/J1CRe+GU1dxO25FEsuWGgfgBKI
 i0RUZaSJ8FCO1gRbM6yckG2hhbi+W49uO9hNEEn9opj1SReUcaogh8Yno0lf3trxV1v9txL4O
 7kTHjWtpVzIsjTfCPaTW97LvZhjJFV5W1utVL9ApqKeO5ujvAT/90xM/D9jGFF+m0pvqQ/RUi
 7clsRhNyzgDagcQ5LIqBRl1vyuBI7FKmsO2Znyaor+nH/CmD/Qd3UlkX9TIkrhK1vM4meKeex
 76oBBDcuHzgE0v3t2/0Wk+mWEEYS1sapIX5kM8WDc1SSD+g9fWBiYP5wxuS3ArVMhYT79Msyg
 xrABKXhUXIVvCJ8OsBDlW20jAY1R7iUaCp/9hUNoocbYYYbpwaOhcc+XSYtNwXrQ0fe2SZ8ZQ
 +/9f/Ui0NZgNzvT7XioW6jTqbGLbnfjrNLbW5cS366R30OPPlpRjam5t4oHWlZIVXPGlA7LSl
 uBWGVOobtJ5BDz6jmc8gHLSN3rR7eYcTRgoRBvIli2Ma1AIofEQLj1jCPpMEnC1Jwl7P+PeKZ
 bgMk6nmJFOcyvs1DgMrapS0QSfZmx6P9viKM1F+XE4jvuZfrEbDl6SNRet6tUJpEyJzsspnrW
 uJDtszOpgc5XvM2VVA6b8h7Xrx6nDuPM151MokCtQxGQ9DkMd+l9Vxr3Euw=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
with the ISP and H264 bits, and V3D is in the same place in the new ASB
as the old one.

Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
BCM2711.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 9c352f66e6d5..1e06d91c0739 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -126,6 +126,8 @@
 
 #define ASB_AXI_BRDG_ID			0x20
 
+#define BCM2835_BRDG_ID			0x62726467
+
 struct bcm2835_power_domain {
 	struct generic_pm_domain base;
 	struct bcm2835_power *power;
@@ -139,6 +141,8 @@ struct bcm2835_power {
 	void __iomem		*base;
 	/* AXI Async bridge registers. */
 	void __iomem		*asb;
+	/* RPiVid bridge registers. */
+	void __iomem		*rpivid_asb;
 
 	struct genpd_onecell_data pd_xlate;
 	struct bcm2835_power_domain domains[BCM2835_POWER_DOMAIN_COUNT];
@@ -151,8 +155,15 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
 	u64 start;
 	u32 val;
 
-	if (!reg)
+	switch (reg) {
+	case 0:
 		return 0;
+	case ASB_V3D_S_CTRL:
+	case ASB_V3D_M_CTRL:
+		if (power->rpivid_asb)
+			base = power->rpivid_asb;
+		break;
+	}
 
 	start = ktime_get_ns();
 
@@ -621,13 +632,23 @@ static int bcm2835_power_probe(struct platform_device *pdev)
 	power->dev = dev;
 	power->base = pm->base;
 	power->asb = pm->asb;
+	power->rpivid_asb = pm->rpivid_asb;
 
 	id = readl(power->asb + ASB_AXI_BRDG_ID);
-	if (id != 0x62726467 /* "BRDG" */) {
+	if (id != BCM2835_BRDG_ID /* "BRDG" */) {
 		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
 		return -ENODEV;
 	}
 
+	if (power->rpivid_asb) {
+		id = readl(power->rpivid_asb + ASB_AXI_BRDG_ID);
+		if (id != BCM2835_BRDG_ID /* "BRDG" */) {
+			dev_err(dev, "RPiVid ASB register ID returned 0x%08x\n",
+				     id);
+			return -ENODEV;
+		}
+	}
+
 	power->pd_xlate.domains = devm_kcalloc(dev,
 					       ARRAY_SIZE(power_domain_names),
 					       sizeof(*power->pd_xlate.domains),
-- 
2.25.1

