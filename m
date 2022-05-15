Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4D7C5279C8
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232688AbiEOUVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233112AbiEOUVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:40 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81C9635DF4
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:38 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MZkd5-1oMQb71GTv-00WlUa; Sun, 15 May 2022 22:21:22 +0200
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
Subject: [PATCH 07/11] mfd: bcm2835-pm: Add support for BCM2711
Date:   Sun, 15 May 2022 22:20:28 +0200
Message-Id: <20220515202032.3046-8-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:4Si2iYUKDyfIR2VHN4xNZ0Z/q2PQv44pgS66WVd8M3m1i6viOYR
 oRgb2yw1kWXBgrmCAZIMMsk/gtPpggZxhQcI/AKhgvz+VJMfftnk0H1rpHFNrR/jrAEFgZI
 oUmIxK9pozZR611xU4mlawbjl+n0UQ00Uy4XnduezRvQK5rSP2V1p8Bmod0NiawibRq3+NO
 i3E8MqKpJSB1ARgeGI/mw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:pfukOn779hw=:1m6QlStlv6APXT+MSX+2i2
 ezFuRRGV/sc2LQ8wa39xRg4YG4VserQbNqXkJ/BLy1Fx9zxYhAh7VThHDjdbAghQ/0W+D4SJS
 TADTHngJvIzBWiVJCiQr9okKhsHCuUj/J9vy1x3yhqFI69C7hnzFTegeK8zvYdn8d5LJOy+CH
 RsRiGVr1DGSsHoHhn2tnxYSX8E2Or430SG8D/mZhCdVIaBjXf4dYkI2ZDk4ya0fWr1Zc2mZpI
 j38Q/uw5qo1Z7VUWAsD6ZNWaIEPMjbMh1qfC5/7AU7WLOKTKNIvhA1JJmihIB8GAYBBFaXsj4
 rkyNL+VZKqSIzRPrzpXiTafBWVRk+0xWHRahc+f0rh9MNaL2hLisARdyvPvBr+FUBHiXbi/PA
 V34ekwt/shVG2E9BDKq1hynJumCL+O+TwCvaQLZJIy/8dz/emw6QyPhQK6jKemlRm+zwoU1pd
 +Fj148Cp6mFQE8dOy4Slm3kZ0PGcz7g6srXAfb2GBiMIKXGEPp7+7c5Qlgy9SfHAScyPi8IA8
 8ha/ZcJ4Nvsc8u1bAmvGmSrPIZwluJhtaFeZKJe11haFy1dOMIMe7+P+64BR936Wj8y/sKAvh
 E7VjqrcjHbwJvIMZSYaSpKhBqLL5dATBBGfhV6t1aYvJRaoLQGXzNmmOZ5kbVH0m/Q9Qh2foS
 +XGVT9SWJIPTeNfj+7gWI2j/KoVXO6K4AgawEFQf2G5qghEJtwaK95aGTHIXGH7CYhnMpXKcn
 ojVjXSR63E5NV6t+
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

As per the devicetree bindings, BCM2711 will provide both the old and
new ASB resources, so get both of them and pass them into
'bcm2835-power,' which will take care of selecting which one to use
accordingly.

Since the RPiVid ASB's resources were being provided prior to formalizing
the bindings[1], also support the old firmwares that didn't use
'reg-names.'

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/mfd/bcm2835-pm.c       | 18 ++++++++++++++++++
 include/linux/mfd/bcm2835-pm.h |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 1656d786993a..da110767c6a4 100644
--- a/drivers/mfd/bcm2835-pm.c
+++ b/drivers/mfd/bcm2835-pm.c
@@ -28,6 +28,8 @@ static const struct mfd_cell bcm2835_power_devs[] = {
 static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 				struct bcm2835_pm *pm)
 {
+	bool is_bcm2711 = of_device_is_compatible(pm->dev->of_node, "brcm,bcm2711-pm");
+
 	/* If no 'reg-names' property is found we can assume we're using old
 	 * firmware.
 	 */
@@ -39,6 +41,7 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 			return PTR_ERR(pm->base);
 
 		pm->asb = devm_platform_ioremap_resource(pdev, 1);
+		pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
 	} else {
 		struct resource *res;
 
@@ -50,11 +53,25 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 						    "asb");
 		if (res)
 			pm->asb = devm_ioremap_resource(&pdev->dev, res);
+
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						    "rpivid_asb");
+		if (res)
+			pm->rpivid_asb = devm_ioremap_resource(&pdev->dev,
+								res);
 	}
 
 	if (IS_ERR(pm->asb))
 		pm->asb = NULL;
 
+	if (IS_ERR(pm->rpivid_asb))
+		pm->rpivid_asb = NULL;
+
+	if (pm->rpivid_asb && !is_bcm2711) {
+		dev_err(pm->dev, "RPiVid ASB support only present in BCM2711\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -95,6 +112,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 static const struct of_device_id bcm2835_pm_of_match[] = {
 	{ .compatible = "brcm,bcm2835-pm-wdt", },
 	{ .compatible = "brcm,bcm2835-pm", },
+	{ .compatible = "brcm,bcm2711-pm", },
 	{},
 };
 MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2835-pm.h
index ed37dc40e82a..f70a810c55f7 100644
--- a/include/linux/mfd/bcm2835-pm.h
+++ b/include/linux/mfd/bcm2835-pm.h
@@ -9,6 +9,7 @@ struct bcm2835_pm {
 	struct device *dev;
 	void __iomem *base;
 	void __iomem *asb;
+	void __iomem *rpivid_asb;
 };
 
 #endif /* BCM2835_MFD_PM_H */
-- 
2.25.1

