Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AAE755A97F
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232665AbiFYLhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232680AbiFYLhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:18 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5244818375
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:17 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M5g68-1o2Iws45D0-007Fie; Sat, 25 Jun 2022 13:37:05 +0200
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
Subject: [PATCH V4 09/11] soc: bcm: bcm2835-power: Resolve ASB register macros
Date:   Sat, 25 Jun 2022 13:36:17 +0200
Message-Id: <20220625113619.15944-10-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:2Q+QGWZHXKoDRXMZbItjZVy+ekN4k9/OEdA7/MWmTDYVnB984us
 x5IuLOc2VaLLyn3ssu+Zagtx/NbiqUjDSgDGGKgZz4ouACMw/YZ6vInlNKaHil4GlSjDv6Q
 w41UpwcPsJU/cBTQGsEu5ujJyGEQQjEKL6jaqnmf6mpNsO4sKNO+S4O5MnYVbGj0qkd05NU
 GD+bj9BFAtQlklcHW/oDw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7w3fkUy2Q+Q=:6/f5oej7mFGkwVtxeIRJKo
 zlqZcyqgxMtnJ94jp+dz6qjbsx1mUmxOtpyuHxwrO1K7Hs2sEZ3SRhNkYS0Yji17mGva0YaIh
 ywi879gK6AtUOVfQM4pcbH1QyKQf8HRp4UYOivow2iNqhjDRjBrPyEK40w82X7nal68RqCAAU
 fPgDqlcm3+KxyHGgjXMUJoETv7wNWf/qShrlWJcM+xmuVJinEwg7iTHjLMGWpRZhupTuLE2AE
 04/9wGtNEa8w+QC4YzmbCai5pEZx8vzwHSY629SjjLGwbA8E02Z2Ov52/qsMtAeNB0GhZcyb9
 wS7XdYtEgEVAY2qQM4awOm5p4934OPYLfl1bvK5tnsxrmhEp7cXW3dUmLRcN26qTdjrKzhE4x
 vIxg46Ahybamcfxvra0dm6RXkhq4eFk1OPT9CSTMS1FPSV0bjxOqvVSdZF4a8pK8WYEJtLGJJ
 ugoClZRyvoQ6P/AdleCFMWr++kRJIwAsAFz4Hjhkokpzs7kyiiYsSv5Lx2DRrTbgNZ0itWP9j
 n6GjJHdAUVvsbUzacjBvq/GZmalGXmmADRVNsip4l5uTo7LBGplxNnjaThGe5GHDMEXpwtEZp
 dKZMGKXJREJa3u3zCzprKMrjX94pjA00MPb2tM4GTy631EE9UlTy5K+S2dSKwEoprGTXdkkdc
 KpK0XEMw0Q8OzC8rJvEgHHzd9KfwMGhO/ouu8k8qdhFS/matrv7DaDLp7iuNWVnaVPdF2ldHx
 9XggfwQyyARZ2B9jJCsDpIHXoZHncF6JWZzeTuUc4HIbLWt3wglSBpNsqdo=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
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

