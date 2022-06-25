Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B65CD55A97E
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232496AbiFYLhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232665AbiFYLhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:18 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2002165AD
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:16 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MN4ux-1oLm022tlN-00J2bb; Sat, 25 Jun 2022 13:37:03 +0200
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
Subject: [PATCH V4 06/11] mfd: bcm2835-pm: Use 'reg-names' to get resources
Date:   Sat, 25 Jun 2022 13:36:14 +0200
Message-Id: <20220625113619.15944-7-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Ugnti44o7yL+JwvplNxLQ411MRmMUBvCV+ZWKFIrGgVUrwju5NF
 1LYHQTAgCgY05WAEvaUEwu0gieCM8CKrAr85QOe32CINg8B1eetZRSO2mtXr4flbHktgJe0
 1osFZHOAqkfb5B47JfPmnxfkuGeLlA489VUxAHc4hA5B7vnjdLlVH0br3z+N7R6UfTaFUBy
 MBlVPyBs603vCHNM95tvQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:dJnlFu0L3U0=:ukHMvfuynzxy+kApSIYOtT
 LAThcdySVM1zkbhRf9NCuRHvou3f1KzubMJ0qxefYBGGOsnn5nfjEpWgIjXLQO16Yimo8ByZf
 rAW3xeHJB6Jc3egCFIV9B7aHLjD6o948THWWGpD7pV5/3dk780AAdF8AYhbktQHyPu1KDiFv0
 +6uCqwq0/2LtL4rz6hssR9NddmzJMGmAffkX4URgcZk9+p89vKi73rmdL9cIQXLIkLYja3uBi
 iJyAwioQ9jDlDbMSszvdAW5A8KpbO0y65hxRuA5o10DPHLEIAK/7d1AQy+NuYlKvyqm3sjCBt
 BI0hMvXRh8vYU8BNympa/XXbSPOhV9B5JFnh+1cdDoUBL4A7To7a5KCjkz7oR1JpbSsKhXsLd
 LtnKDK6XTTcbFkMJe7BfRVzeffBcwL3IpU/SA8vtO748heMnaQqkJAAGbJ2GnzDwd3mfEEkfn
 93/vGLTc5BH8k4Mo8HpJQsdcXbTDD1K8+CL+ouNHCTLKSk0YriLKzMUt2okHIvBm8FUjVH7FM
 oeMoodA+w2L5m631w9dNI0+wT+XGwSh4ta6gg5MofGbtMjl8Cp0cZH3L1Gi8aCv5m6TH9IAcm
 sNtnRjaQrQIRiiO3tmFhb85AeS8GJ4hKXHW6OGNiThwaoBi0nynLaTrdfBZMQQyn2X6opzUB6
 i9d4xr8UQYJBvmD0hOIR4c+iM0yft9bWsgWsf9nyzmLws31MB3J3xhh3wMNmIDPJ1KC+GgBNg
 bddJgmYOhfzyrAOnULbGlB/a6mRbfOF63ALoPnJEyY3f0o6+M15ZsjhU27Y=
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
---
 drivers/mfd/bcm2835-pm.c | 61 +++++++++++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 20 deletions(-)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 42fe67f1538e..418c8a16427d 100644
--- a/drivers/mfd/bcm2835-pm.c
+++ b/drivers/mfd/bcm2835-pm.c
@@ -25,9 +25,40 @@ static const struct mfd_cell bcm2835_power_devs[] = {
 	{ .name = "bcm2835-power" },
 };
 
+static int bcm2835_pm_get_pdata(struct platform_device *pdev,
+				struct bcm2835_pm *pm)
+{
+	if (of_find_property(pm->dev->of_node, "reg-names", NULL)) {
+		struct resource *res;
+
+		pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
+		if (IS_ERR(pm->base))
+			return PTR_ERR(pm->base);
+
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "asb");
+		if (res) {
+			pm->asb = devm_ioremap_resource(&pdev->dev, res);
+			if (IS_ERR(pm->asb))
+				pm->asb = NULL;
+		}
+
+		return 0;
+	}
+
+	/* If no 'reg-names' property is found we can assume we're using old DTB. */
+	pm->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(pm->base))
+		return PTR_ERR(pm->base);
+
+	pm->asb = devm_platform_ioremap_resource(pdev, 1);
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
@@ -39,10 +70,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 
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
@@ -50,24 +80,15 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	/* We'll use the presence of the AXI ASB regs in the
+	/*
+	 * We'll use the presence of the AXI ASB regs in the
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

