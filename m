Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFCB853A582
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346585AbiFAMyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348321AbiFAMyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:23 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B64976FD1C
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:21 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M89TB-1nrB4J0sTr-005Ggx; Wed, 01 Jun 2022 14:54:04 +0200
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
Subject: [PATCH V2 07/11] mfd: bcm2835-pm: Add support for BCM2711
Date:   Wed,  1 Jun 2022 14:53:40 +0200
Message-Id: <20220601125344.60602-8-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:eoCMsoXQgaQCbqLEG+0vcMzD3Q3Cof38P0qGymrgLmHtCmtN5WL
 5fMLWYzXHiEITgTcgCV3o2OHBasBX2KXNCrWUNEAtXmP5O+xiLwobrX01OksgY2Cad2rICg
 OWP8B1LGkstwJilWUJEFQKPuJUfFEzANODpKQrkrBnBaj77qZp4SlefXh2h1PqV1lCM3be6
 NVEsnDwG79+anVFXTmUFg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:sMHrttctx/E=:tWlTZd2Y5d9iI/3U+HZREv
 K3N8VlvGp8lNV1rZ//TRC7tY/HpebMynZPJmNEV9YTlDc3XQWi3eE5LVjcnvQ+CEDtdghfZ7k
 /mHiBFkvVPbW7f4C3InyI4QGOyubV+3tuG1PFYhTZ3P9pWTzsjUmJC7C8Yd4yowFShbg5xlGg
 Esa3Ei6jr0chrJcUzvMPyt93oMs1wV1Xe0t/F3bGCbJ+4gebDPNafFJEl1fGqZad5aMV3OUz+
 b7q+RF5WtKP8OxhLWGJDwbtWr4SEAPu0rzXkjWLfpaBKE0ORZgTTmnL9or6UoRLaMWusOv6hj
 fVlnunQ9O6dVM7zNz9th4AJfjPw8EkAD/Ns1/mXhfK/0tx+rbDIItaCu4ZmX+kkQi2HzQ2A6h
 tQK2uSA7boL41D2A4V7hKUgolSOpbUDEfsBzGUGH4vhqReSTIRdy+3wkhz683Sr+fMIQPql9O
 g8npVOFsTe4BUpN4AppPDmBjgAmrVguTOa6En/HO5PYvjbY0Nl9sXFN1eWxeyiiBgMPa9tAXS
 t2lSDIchyEI2SPUP0gwQOghTW8VlSbz0RXv6jCgmxexy5pTeI1JWoUXByYGv3qqx2zmooU90n
 1VGcMqH4pnIVAus0Eb15VXcHbvVhojHrdOfRFZRfTa27iAjGAINe0ai+xvmeNzstqsztDm04q
 gZlS11DbVioklmJ4ndAM06vXMNbKTuJTMTHJ1nMXAr0sQjihDcX6Tvnlhuj4mukVq1J5KvxFD
 y1zAuypbn165Q7h87Leb2Cr7ogscz7uZmIU/rC7IQqU0iitZmC8cYuUo2J0=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
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

[1] See: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
---
 drivers/mfd/bcm2835-pm.c       | 21 +++++++++++++++++++++
 include/linux/mfd/bcm2835-pm.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index c1e81a4541d7..e65aee6f9b84 100644
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

