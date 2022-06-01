Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DCE053A586
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348488AbiFAMyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346585AbiFAMyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:23 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 287C16FD17
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:20 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N1Ok1-1np0HG2n99-012qRj; Wed, 01 Jun 2022 14:54:05 +0200
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
Subject: [PATCH V2 10/11] soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
Date:   Wed,  1 Jun 2022 14:53:43 +0200
Message-Id: <20220601125344.60602-11-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WouLfZ1osNAWPQehDCkGwbZo627Mf9I3PQE1xt7m4oyeoNlXdcW
 ANpkxNd3g3qxMq7y9AnI+dRDXQsyQWRkumpsRoxNAknn6yP4zEDQ5rK2gkFda82PncixtCw
 cI3G8srLvCF91lybgdCHXKaMIOtFhzPLoGdAMFpV+W/5+Hs3KnCwr0SD+H1vpdbPzrKIMiR
 ebr87Z+YyPFVAE881ZG8A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:avN3EM3rIUg=:KZYZy+3bqnsqBcCJ+l/Oli
 jN4OcD2GtiB8a0KHQxmFJYF0QhvBrXCmBu2XorG58J6CPJ4b5LLnodUrNaIpYPbL+QJxto6H8
 rD9YyXLG0PPZqQZRwHKQc9vw1xPbJG4YsS6t+fyVhYxeovuVoojNs2sOErcuyMdMm5e07eMkM
 X3P228D5J9egPzPBke1Y4YctVq+u1gv4lsgvZPOFNNsi4X30B6Q+qdenGhaAN0EV27bWETND2
 MZI2m242wqVFOZQNQiiMUGO5WNCgmw46tg2vbUfhvPow0yfz5mLT+azBPm+QCsluebqNNg9Ns
 IY1KBJswszM25WAW8O7N7jT8c7xugLRlZnqT3yidbbMHqQw2ME42kpGbPXk1JN+eLnzP7rJFm
 Es4M3wtJIr+mvCQfvuwsb4eQhzqGCizrnjPslP4dPmUrnNLLbNgEVfbKpFoeff4vFVYn83eHn
 LIfYKnrr3JF3zjQ9i0ibCwusIdtzqwFX3LmaI6J+yvxX5g0TplOoFGr7w7WOgeyz/m/uSTaPx
 QXyE57P8+cfVUTJMTt/upkfMwselynLBtBeqjDlP9jhyQupF4U4FTxSLOXbJIP7BH73W1KC/X
 wL5I3Osf//KKs4/yz9tKSw43cDaQka3Iv4VAHgRSvG6zdGtT/yaXkHS9SeN9Pm68HSchBP95F
 1b7K+f9jg+2maqpeV9WpH3fnc6OT/iU+zlCGZPmW8ITfs3mNuJyPl0RNoup8p+6NC/Jm4KFqj
 GGKbTLENb0xO3xPk2uB4z0xZFBdJDjFU0qm6I93sjPyr7vTs6V4JyWNpUOs=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
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

