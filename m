Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 455585279C9
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233724AbiEOUVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233059AbiEOUVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:40 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81A6735DF2
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:38 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1McXwD-1nKJNR0aGT-00czwE; Sun, 15 May 2022 22:21:24 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 10/11] soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
Date:   Sun, 15 May 2022 22:20:31 +0200
Message-Id: <20220515202032.3046-11-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:/fM6OPNtRTKLgroxg6P+k+A2l+bkQQQWlbyybbize/YASC+t83X
 kdU1dW3QG5zFrcc8pyOjvjJ6yXQjx8lLLjy67BWcwiZQ+ix/NyhV85yRWgrr8DC3y6Ld/0P
 fK1r2paB3eLhpVDlXZsPfdIUGrzlVg2ZMqZOro0ucklyV4G1wskb7nH60q+bDLgM0/T+wcU
 NXoPYPIEBjgjcG1qWWIjQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:bSEQsKQaPLo=:5oxFBjZxP2gIaziTg9zJ3b
 4QrxNfA9a/JD8J6v06/FEQI1f4ZZwFddBDxa6SEnHrWXy2F2oV3yGiR3RE4r7jo38qpYvHt/O
 MEpVT+eWjMlnmAS9C12UNc0e9QWfnKN6gCy2gsANk20Nyp2hPsd0swjFp6t+pTqVy6RKyw8qA
 /l8Ha++tUDzZh3WbitqLAr+o2aUmntLycyDNBnpLTdgG0G+6x/p1Q22SAhdG2yGBEjREBRGRh
 TGEvEwakNDChHGzVlJNjqj/pmm3lIc1ecKzulYMfpNeu2cycRuKtT4fvHg3FxKy66wAX/R4pu
 OkBR7pU2QwDmssjaXk3ANXZ6MdYTh7J8YN+egn4wNGnuEcovQ821zyAFMbKMKOGn6tiTheH19
 66vIrd9Pyw2pRP3OzDX5hMhlLwwd/T4M4PWUgC04DzZtR7AUNlSpkp1Xjw+mhkJ6eNiS8NaQ6
 iVDKB4keilZ0vb1g5GBxMo/n7Ovhyzqxuj0m5nGGLbAS6Kxrrf1a3aLY2fGTQ93WyzAZq/Bsa
 IvQMlbMvF4SkxptIVRJ65QeUtoqGPbLfmPb0SzYy525sQZGKV6EJkDr215ojo8bNHiINATN/v
 IFMe+BDupZpJ2faoFch0jACIeoIeyak2+vvgD2i1NqHb1sxDcLLV+CQj4qukp1j7EgPRVHzMz
 Yxp0rC2WLQCR5+Ec/roBQARcVnDEpZ6Zq+W9ceaoGxkTYX12Mpai1WjkBvVinam2BGt9GGNBc
 BRUlGEPdFKIDM3I8
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
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
---
 drivers/soc/bcm/bcm2835-power.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index fa0a13035794..1e06d91c0739 100644
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
@@ -151,9 +155,15 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
 	u64 start;
 	u32 val;
 
-
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
 
@@ -622,13 +632,23 @@ static int bcm2835_power_probe(struct platform_device *pdev)
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

