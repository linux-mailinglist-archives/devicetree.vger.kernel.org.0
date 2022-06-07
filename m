Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15B885422E7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:50:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354803AbiFHCrP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 22:47:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383688AbiFHCiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 22:38:19 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D758618147C
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:06 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MeC5x-1nNQPR3QkJ-00bK9z; Tue, 07 Jun 2022 22:42:54 +0200
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
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 06/11] mfd: bcm2835-pm: Use 'reg-names' to get resources
Date:   Tue,  7 Jun 2022 22:42:21 +0200
Message-Id: <20220607204226.8703-7-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:cG6fF3HSl3wZfTdJIQrZ3NSavkU6zLTMc+DF7as8181ABXIf328
 26k5rYqFUQfdBJVscR2loQHpdwcnqlsf8x/USEycm3kC1UZoOv5j8N0tohhcA3+W9Pzqci3
 zZx4n+JyAn8V0VVqBlWpC7KLYmriT5gM9MU8gPcKlXrLr579VMd7U1WBqkl8vviEejDoVC1
 SnhLXJapQ4DUBVBG9HMOw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:vPnd2XOPMCc=:w5NZEE7QONOlEW8iiUbdSy
 jwX/weY8plWR32CEYu32DPRdcRiOiYcLU8efhcXfSt4YKaXLLtt23oE5qCBQF6vmBocl7w05M
 QspjP9b7GyFMPj3Y3P2iXbFoC+p7k72v/Pp2tY9aDSN7gni9EE9uA/kAKxAnwzhKL8pO8BYqp
 3lDR3YGil1V2jVia8NCjfv7spm66axanCQ5ApmHwYCzUqPKucbrm5xJtMnnrmaWmkgy6PpTYy
 c06IZ8B924eFpzQsBzneZNeP7yu/l4HQIwhNxRhGdD72fZ+VLcsZ5Pvr4u+QqR9XxZVWXr+z/
 vgbng/7YawuNqYz5KqMnntTy8Ylyy+vgXas5pjj2iyODa1/kQgdvmxF70feRF3LU/JlhzYuZp
 pfIuXyk91A1O2FnQw8j5l6JIPUE9jS0pXwGLl6IZpcZ3yX0FHN6O0x0ZeBKvVBAyiLm5p1+mr
 5p3Hu30o6RelUA2d/FA9CZJLj+PKeVGtNKIG2pUTuAVwjMe7UIaBctx7eOvBYTRDcCdJwdGaA
 UQeJ7TVAbD298FaItvy/t66coc28Nt8cXcoqyBkE90+WDoz0Ez+33dIEgXYoCyD1WOhjr+8NN
 VYsjKytqGRuMIQL+CupbttWof5asW+LGGxBV6e25T1rM1uE9b/dyyCw9c6pOkdyYX58nleZDk
 UbH4tdUXQpQRVBZ6pH0cSj6ZFcpGDmNoWcp1l8JbKjXfJvFTQDRhpWKyefpPlOQLlup3haXJk
 S4ySMsZGaqmXucnQHV8jjVvNegpJ4k1VOfrjNNvqCr+Tp03y7L2gMQ+MwNo=
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
index 42fe67f1538e..ff0dae5a026d 100644
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

