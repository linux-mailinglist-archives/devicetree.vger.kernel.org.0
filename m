Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80B9B55A984
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232657AbiFYLhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232496AbiFYLhR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:17 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9919516586
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:16 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MHnZQ-1nqAOE0WFK-00EvlY; Sat, 25 Jun 2022 13:37:04 +0200
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
Subject: [PATCH V4 07/11] mfd: bcm2835-pm: Add support for BCM2711
Date:   Sat, 25 Jun 2022 13:36:15 +0200
Message-Id: <20220625113619.15944-8-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:UteCT9pRFwQtihi85KY2nNhWGA4PPpJwg9ttEATnncvc8H2XPAL
 hTIMxS21YGMAUxjWK9eVByCUn5uNt437ftu6nUoQx2pdLMlBYH40Wcwf8snMY0AhdQQ0YUA
 0Sg3SMRY8adCURTyaBNSWCmOyMNNlx+FUG+gZyuX44rJo4ruqSSlGQqYvcyCzlb+YfJE/XH
 QOiIFTrbdZHqpVI9PB6tw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:/vTVd3zemHQ=:co7g9Oc2GYvNwk9vzUD26r
 GoavMAlkG5FBdYK5KRm6RgbmV8M7Ql2JTt/tbpZJfmnSrVkxqgTEX8TGqykdzJw/uu7ZamrAK
 rldqIq0xET/Q/yq/k916dzKu4ttW/WWaCIV28Xxs+eNhk/Xhy7djZQM9nhnydJgG5mCuxPtUR
 aGozr3kKCn0LEsrHqg9zp2wxCTTWpOr2Lo4dmwYsqZ/EXMMYbIZAs9s1ZNeV83keei5CQDSdr
 smCdr3t23zrG2oGDAd+C2EUskhv7nIaoE+sTS0TatAMvWsoxp0D2/0CsDnVxEpwAuIZrbFykh
 7gRj44x3DKfx/Idf9CuNaazb0X3BrDBcfDi9+w1tojGlB5tE0znSY20RArVHmdJiLAL98ys50
 8WXBA7je5TiRGBi6pTzQEjF0q53acOuh+es4M79ncizA/J1w5KNa8hY+JMcVjftUp0JaVZ76H
 9pZtwhdfQmw65zJt6lkNg6+tnWLwrZnrxXhwR3n71GK8pgbFn3GUZ2hojnxy6HP0Cz2dlVlGQ
 NUXeIAXeSGAcNQSfAOadkJaSiTHiMwylMMj3toJqXhXMPWv5uj7U06d9Aun72Wwy964YHb1Q2
 87jlKqyepGz2WUJEStz9g90o4d+11+Ch688O9oBv+zTPo4mnHglZ4dMKMY4JVJzVCheaDGVhk
 fRrDSapEGBcuVu59Yu8vET7LRx4Vx4NUCNjCfFNkbThzgtmDUHk04ZLbZQmE/u1+lplsvPc9+
 +tN5/8I7guJ5MZL7lc/IHFk+83kKXxC/8jL4u7QDdc3vzSxieSBYcaIG7g8=
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
 drivers/mfd/bcm2835-pm.c       | 13 +++++++++++++
 include/linux/mfd/bcm2835-pm.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 418c8a16427d..49cd1f03884a 100644
--- a/drivers/mfd/bcm2835-pm.c
+++ b/drivers/mfd/bcm2835-pm.c
@@ -42,6 +42,14 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 				pm->asb = NULL;
 		}
 
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
+						    "rpivid_asb");
+		if (res) {
+			pm->rpivid_asb = devm_ioremap_resource(&pdev->dev, res);
+			if (IS_ERR(pm->rpivid_asb))
+				pm->rpivid_asb = NULL;
+		}
+
 		return 0;
 	}
 
@@ -54,6 +62,10 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 	if (IS_ERR(pm->asb))
 		pm->asb = NULL;
 
+	pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(pm->rpivid_asb))
+		pm->rpivid_asb = NULL;
+
 	return 0;
 }
 
@@ -95,6 +107,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
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

