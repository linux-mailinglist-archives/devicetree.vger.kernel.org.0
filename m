Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5DF153A585
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344809AbiFAMyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352301AbiFAMya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:30 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59A936FD26
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:28 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N8XLj-1nixbe314D-014ULV; Wed, 01 Jun 2022 14:54:03 +0200
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
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 06/11] mfd: bcm2835-pm: Use 'reg-names' to get resources
Date:   Wed,  1 Jun 2022 14:53:39 +0200
Message-Id: <20220601125344.60602-7-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:KRIALsDrTjSa+6xmrcLvnKCepvkokoF2ewcSsTHi1pIqsHCzucn
 /gqn6GxvXN5JyhD+rUR7k5CKXp7LTqriSCHXopR297+BQ01F4xHjYT1d3QVUh3J+6SNqH30
 jLSOAvtWgzSpJRO6HUiW8W8W26d1aSCydazBxlHem+Eu5qhsZrc26sdhAWJ1TWFSkyohlx0
 rrsn6WgWswrCFIvbZDvLQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:lFQyxgRSU2Y=:kPPRWky3gL/f6rWgRiosNQ
 bWm9fHyelePdomYcnX5LuVIuFcDE/5Sk9M67NXYKJY6p/OU7+EKVvU8SSndCeylgzXJvmChKl
 e48lRoAyl/LGTykwNYpIEf4q9BHN8C9/hrtyItLiWEhQ8PAlXf89wAk8g0P3ibg7hYySEELkt
 8pfUy97kZQfbA6z2RbQZezSYTblXyBEpF9tSczSxLr7hEKy7/tgAdRnwaL/m0w4DvlH6wRx5j
 MLWxB0B/9d5fDgJGSfhul9PDKG1Yds9sz/IEjpEgc1mBc+jr65YS5EuaAZA4ggzTMcgSKlZ5u
 SaFGtZ0ex4p39IMN/Dd80GERwsA/xNsmddV3QNFBXsKCGUXuQx4i4aQChr6dSNu9mcRk8zRG5
 TSL8aCUVBtVNRRGuhFCB2Pymm/AftFHVxi+pEzpGBY7QCyuo+/V80+2SAXMQ1TaAzgqIxL2YV
 ygB/0fqbJq4UeXrRDMHrI8bJ6lEaItyjfKwLqkDFNxzgg8RzjDN4MVIxeucdKynP/ybxaffeP
 bUMkEDj25nmOCVY0u+z2zXC2cI3ImDcXO3f5YeSzIMTggLNd1e1loBVyh2bFqvIV3tJR8DyvX
 jJ6z5E6pXw1nP1C/HgliCFqmCmfal01PFblW20gzueOHc1wL5D/Y5VSSOxurmqisgLJ+f3wxH
 iPPTiy3KdI8YC0go1qc4Zof+Y26eeLM6ENaDbbyTJn8yb5xib0e7CtRrfTE+YR5Ndrt9jCCEw
 ah0tvMmPoUs0YmMKRZ+sb5uG01hEWWqMWGEXdZ4/Zaz83N0PMzz1j1khhYY=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

If available in firmware, find resources by their 'reg-names' position
instead of relying on hardcoded offsets. Care is taken to support old
firmware nonetheless.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/mfd/bcm2835-pm.c | 59 +++++++++++++++++++++++++++-------------
 1 file changed, 40 insertions(+), 19 deletions(-)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 42fe67f1538e..c1e81a4541d7 100644
--- a/drivers/mfd/bcm2835-pm.c
+++ b/drivers/mfd/bcm2835-pm.c
@@ -25,9 +25,41 @@ static const struct mfd_cell bcm2835_power_devs[] = {
 	{ .name = "bcm2835-power" },
 };
 
+static int bcm2835_pm_get_pdata(struct platform_device *pdev,
+				struct bcm2835_pm *pm)
+{
+	/* If no 'reg-names' property is found we can assume we're using old
+	 * firmware.
+	 */
+	if (!of_find_property(pm->dev->of_node, "reg-names", NULL)) {
+		dev_warn(pm->dev, "reg-names are missing, please update your DTB.\n");
+
+		pm->base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(pm->base))
+			return PTR_ERR(pm->base);
+
+		pm->asb = devm_platform_ioremap_resource(pdev, 1);
+	} else {
+		struct resource *res;
+
+		pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
+		if (IS_ERR(pm->base))
+			return PTR_ERR(pm->base);
+
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						    "asb");
+		if (res)
+			pm->asb = devm_ioremap_resource(&pdev->dev, res);
+	}
+
+	if (IS_ERR(pm->asb))
+		pm->asb = NULL;
+
+	return 0;
+}
+
 static int bcm2835_pm_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct device *dev = &pdev->dev;
 	struct bcm2835_pm *pm;
 	int ret;
@@ -39,10 +71,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 
 	pm->dev = dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pm->base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(pm->base))
-		return PTR_ERR(pm->base);
+	ret = bcm2835_pm_get_pdata(pdev, pm);
+	if (ret)
+		return ret;
 
 	ret = devm_mfd_add_devices(dev, -1,
 				   bcm2835_pm_devs, ARRAY_SIZE(bcm2835_pm_devs),
@@ -54,20 +85,10 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 	 * bcm2835-pm binding as the key for whether we can reference
 	 * the full PM register range and support power domains.
 	 */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	if (res) {
-		pm->asb = devm_ioremap_resource(dev, res);
-		if (IS_ERR(pm->asb))
-			return PTR_ERR(pm->asb);
-
-		ret = devm_mfd_add_devices(dev, -1,
-					   bcm2835_power_devs,
-					   ARRAY_SIZE(bcm2835_power_devs),
-					   NULL, 0, NULL);
-		if (ret)
-			return ret;
-	}
-
+	if (pm->asb)
+		return devm_mfd_add_devices(dev, -1, bcm2835_power_devs,
+					    ARRAY_SIZE(bcm2835_power_devs),
+					    NULL, 0, NULL);
 	return 0;
 }
 
-- 
2.25.1

