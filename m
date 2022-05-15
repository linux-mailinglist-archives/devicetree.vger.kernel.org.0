Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B759F5279C5
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232102AbiEOUVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231891AbiEOUVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:39 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA9571EAF0
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:37 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MUpCz-1oGM3E2aK9-00Qjsw; Sun, 15 May 2022 22:21:21 +0200
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
Subject: [PATCH 06/11] mfd: bcm2835-pm: Use 'reg-names' to get resources
Date:   Sun, 15 May 2022 22:20:27 +0200
Message-Id: <20220515202032.3046-7-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:CMkjM+dxKS19+f0NnafvR4zTuYK2+uCtLEdF0TAXa3g67s/sGgz
 /bQlBsGqTr03dg6w9dwkQfD4EkfI/SkRUh+C4nSqn+0QheLryE/4xyTREt9SLNTNpZK1P1u
 n7lPfBxsNLZBL6L3PoQi2CgKK5aJR7+HWzN3DzSpRrE14DfctYiti8A1AAHHkHJ2NF6Mvuq
 4+NtsVRJr/jzgc3efJnRA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:IBPrTA7w700=:zqLHdXPLbiprmM8VSnI+xv
 dpd59o301tzViqVR0w+sei3Le3VYd/S7GwIQ3EQXIWyBcgK8n9AcGWP1YY9x+NxkH1rKpvFsI
 a38bU8tNDad0N71OZsdQ6o6rMSBqmdzqqpOfrsaCdaGiMVNUIQREcLtZgktB5D3mbdl3+zwDc
 Udd8up0ViGJN+mJnd2dqym2HHivZFVIy1aRO4sliTt1D5TBrlfvLKI3oGvWwIJTSpTV5VN7go
 PvZwHJ0tKMThE5meMId09QhLcmHZYfB62efrLkcIqEJypdDVPkW3hngG+xCvriNeltJShNh9j
 s8kBzd244FpAcunqac1ETdf8D//jY18xFcJVBuniydd4SriN7sfzL592G8dBRH2whfPCPohcm
 0eNKrefuWGIp/SD6FlSpKo4QBRCx7cO1ro7qQWV0vo2byPpl5MWXQ1U7PQB3o43hdUz6vAgAQ
 TM1JDK+jvhS6XWs2iXArz4CWOml+J3G+CTcv/No7lVqA/jqet9BqM2PE9ZONHt2cTm+965tgf
 Tca6epv8NsfYW0VKq4oQIh+8MNo3R8rQcQUX1hscndKgGuxQS1QNgHSOU9Z+ZeCappDORdgkc
 IQB3XHphHaKq9DEA/fSeTbhSje6Yb2ZsZOq/Amftgt1syVK3HKVKiHw9e/o6bSyHz5Wp5/xkE
 GPmkthXCK/TKFhp2nt1P4utTejPy5k7/max/u3tzxkEckJbyzMEFW3bV+rtKM7WEW8InJXMGq
 GkLZJTm4j/I0lLiu
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
 drivers/mfd/bcm2835-pm.c | 59 +++++++++++++++++++++++++++-------------
 1 file changed, 40 insertions(+), 19 deletions(-)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 42fe67f1538e..1656d786993a 100644
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
+		dev_warn(pm->dev, "Old devicetree detected, please update your firmware.\n");
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

