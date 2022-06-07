Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD5B85424AB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbiFHDWs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 23:22:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231946AbiFHDVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 23:21:55 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18AAD1F0FE4
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:08 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MxVfj-1na6uH0ufB-00xuiT; Tue, 07 Jun 2022 22:42:56 +0200
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
Subject: [PATCH V3 09/11] soc: bcm: bcm2835-power: Resolve ASB register macros
Date:   Tue,  7 Jun 2022 22:42:24 +0200
Message-Id: <20220607204226.8703-10-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:TO0tcJhnc6nhVz7iEf0cEFHoHRyEGHAlr/i1E9NHLoKByewzB/J
 hyUBqfRDttjveiaVdHwzt357GJF9Oe6GPSorJlyJYsJ5LqZipZbWt9lvELJWl4laaX5tlUm
 7Fvbk+lHu4r7NW5p0LowYno4vuCyDn70kiREiTozMnEjCqd7ZlbWB0JFTI/3/mVxIoppowk
 cNbeHiKvO8e25/ssZmC1g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:n6ovhqRBigY=:cuHDaTY5kjmUVkxZ1plKZr
 AVWZoZ4tF9bspBhvblEcptCiOVy/kJk2kOnboSUMH9ggtJiQbBh8jUXAWm6eFyHJjIksa6wx0
 849a/w4l5wkY4m/i9RFxz9JUUG68qQVRAUh1p+xsIkk9OVr/9Te+/AwRZYIiIjUzOTMNOVhiu
 zbU18MvXAzkSfFMRx3rQGjWuGwoKWEwZ9zY1bS5N3T9bshvu/WDfz8A5VVOSbOY3Lnk7bXiGv
 INQcpO7AjE91DhceUohDZR3ca5tvBS/bDSbPTCEiMzo9jTWA08r62reHSo9zv7CvGzuVvJRhY
 ALCMxCxX+p/3m0ENqmPEBYR/q7zpBPcYLBMoHCRRWQVDt1TWcucIJmaHM8mfpDSs78KHGswSn
 9Nv4uvvYhA5MrJDNsVxV+I3m9ZInSe/3lpE95zXeSlMAZ5Oen7L6bie07hhOW9zGyKRViVNx9
 sAupSSvmThqOUeKjwVEIdon6PwDYSsUiKpXrgBOJC43auaW2+lG1wcqcd4C45fr3f14xNMU93
 BI7KcDdN44gSaKBptz2Q2pVESDugcEY9G8zvsYBaHzjVYKqXYYTZ5fp8kxo7mkCvIeIEgX381
 r99a8EoHIP0ZVgfPRV1HdhjovBt35DWcz8A4HCQGVqqaQr5Cow0WDlil0v2htjfZnK9IZZXVI
 6McKmCMgKAdzHNEuLijWZZRP/S9jA3hih61AHfX0tiUutLDg/Eid8JuSdd5BGFJYpHKtMITnX
 u0jSp++CbcXRhrQ+0k9L925kRsdhwXUyF+J2BtzqCWrdb6zVFffWiu9GEmw=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The macros in order to access the ASB registers have a hard coded base
address. So extending them for other platforms would make them harder
to read. As a solution resolve these macros.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 77dc9e62b207..9c352f66e6d5 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -126,9 +126,6 @@
 
 #define ASB_AXI_BRDG_ID			0x20
 
-#define ASB_READ(reg) readl(power->asb + (reg))
-#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
-
 struct bcm2835_power_domain {
 	struct generic_pm_domain base;
 	struct bcm2835_power *power;
@@ -150,7 +147,9 @@ struct bcm2835_power {
 
 static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
 {
+	void __iomem *base = power->asb;
 	u64 start;
+	u32 val;
 
 	if (!reg)
 		return 0;
@@ -159,12 +158,13 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
 
 	/* Enable the module's async AXI bridges. */
 	if (enable) {
-		ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
+		val = readl(base + reg) & ~ASB_REQ_STOP;
 	} else {
-		ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
+		val = readl(base + reg) | ASB_REQ_STOP;
 	}
+	writel(PM_PASSWORD | val, base + reg);
 
-	while (ASB_READ(reg) & ASB_ACK) {
+	while (readl(base + reg) & ASB_ACK) {
 		cpu_relax();
 		if (ktime_get_ns() - start >= 1000)
 			return -ETIMEDOUT;
@@ -622,7 +622,7 @@ static int bcm2835_power_probe(struct platform_device *pdev)
 	power->base = pm->base;
 	power->asb = pm->asb;
 
-	id = ASB_READ(ASB_AXI_BRDG_ID);
+	id = readl(power->asb + ASB_AXI_BRDG_ID);
 	if (id != 0x62726467 /* "BRDG" */) {
 		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
 		return -ENODEV;
-- 
2.25.1

