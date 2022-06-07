Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECC1D5424A8
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359116AbiFHAtN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:49:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1840648AbiFHAFo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 20:05:44 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE2B1F0FED
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:09 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2mS2-1nmTFT1DiO-0137vM; Tue, 07 Jun 2022 22:42:55 +0200
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
Subject: [PATCH V3 07/11] mfd: bcm2835-pm: Add support for BCM2711
Date:   Tue,  7 Jun 2022 22:42:22 +0200
Message-Id: <20220607204226.8703-8-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:lSN9giWbbHxeuBSiJpMoDq20z00DV4EofwBJsKST/GGjLhUr4vG
 fR86G2TAFazCXYlSoX5imST01qdRBOnDMns6h5CxkYYXiUer1XewXbKcnVDdvAerv139fR8
 NE+6qFekxhNbPOKcjvlYJNBEuI4LfVXY7bl57ar88UZsA/URuQnCvAAQUzTUDvZ/J3d/NfA
 0rEAG2hqSdDAwvyPAWSiQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:93fKr1PEShA=:iUPwPqxF2c6CKKz1QBXk7V
 OdP2fIrIlktq4vng1TFO78a0Oom0nNBv9cVD7Hi33vxf43/FLjZWX8l5zQh1mq7CBCkU1K8l5
 jHWuBZnBnjeTRkUJlIivj1MumffNZAnVRSfSfZ/M2pSqCe5ncR86oLCrGNNnobswTI0yY2boY
 +TQbrkoa+dby5OOYLtaB72bBG3ebP1odNE8TERmvF6d76v25cHEN+Pj9P5+rAy3NWKWk32qK/
 SZcRvCYRe49gYBFvMYpMZCqXvr9XwEQnKeDPlYhy6kfRFMa6iw7fDOFHnuzc3/SpiVKdk66pq
 FvE7Mqsq1nNQITj62dEC9xR2/R0xxSsT+wconmd4SBI0XBWsT+AOVna88WnVVySC0GYbrSbki
 BSdQ4itSe8Egt/2bhEMCCNat1bllLp4K9Bp7QxdIKqBWq2bD0rMSsPEB2QKBdc69l5xyqZQxg
 ipD6Np0xthOJW45lT4lVJC12RDvS7MY6csBepeCkwSdCIeN0epgfaeCrdvxk64BmnCc3mqUg0
 O5whBSMpctz/IhwBw/Wgr5OYxRubCMhPYahI0XBiu2ehGqGiXquoBqpDcoQgPAuZaWWA34Z21
 VpZ1jXOKSyP1fkIwZstIwjTU+t6aeFG8G79fojzAYBXPAe0KnXMHS5IcmOUWMVB8Qo7OCEDTj
 2QYMSrUZX3M1+jKOpTkzpP0yNIkABDhn52ePuBKV6LMkIeb2dVBFNkR0kENk1zEXYFgOduGZd
 1MbzbDYzISRXc+MSmtu/3ErnriwtT6kGqTd4CuNa4gAeDBA4jdUmymDEUiA=
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

As per the devicetree bindings, BCM2711 will provide both the old and
new ASB resources, so get both of them and pass them into
'bcm2835-power,' which will take care of selecting which one to use
accordingly.

Since the RPiVid ASB's resources were being provided prior to formalizing
the bindings[1], also support the old DT files that didn't use
'reg-names.'

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

[1] See: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
---
 drivers/mfd/bcm2835-pm.c       | 21 +++++++++++++++++++++
 include/linux/mfd/bcm2835-pm.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index ff0dae5a026d..4a2be669674a 100644
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
 
@@ -50,11 +53,28 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
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
+	/* Ensure that rpivid_asb is set only for BCM2711, so subsequent
+	 * driver can rely on this and don't get confused by broken DTB.
+	 */
+	if (pm->rpivid_asb && !is_bcm2711) {
+		dev_err(pm->dev, "Unexpected rpivid_asb register, please fix your DTB.\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -95,6 +115,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
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

