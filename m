Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B71365279CB
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbiEOUVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233281AbiEOUVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:40 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51DA735DF6
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:39 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mr8vG-1nW6xZ2jGo-00oITd; Sun, 15 May 2022 22:21:23 +0200
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
Subject: [PATCH 09/11] soc: bcm: bcm2835-power: Resolve ASB register macros
Date:   Sun, 15 May 2022 22:20:30 +0200
Message-Id: <20220515202032.3046-10-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:tRuXr/NcWiagAyMCNC8Bv6us8sxURSZzdQ7aPD5wKLaX5A5J4tu
 OLs9ExQ9AtejcsXt40LVzIixorLLH8hTqLxhkRSKhYq7DjMDshq6n29tU0Unr073yve6jtK
 sJmSM8ztCdop11QII7iGllmf4Kvwwf5TxSE6JblAdL/5kxkh3eFrQf0oxdxJ6NyDqElxQNu
 Cg6H6TZYrOFJEBnztgM4g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:IArgAF7lIF0=:JUsiscSwkp1tfDbi/w9Cl8
 gdvTqNLqq1nngmEjWFOoFtYxL9BoC+4PT6eTNbo1QdHevjiKZ6kYP+jH+m133sreOpg27p5RK
 HhTHD9tYMvTE5+rAOzd0sILq1rwtab/fWUhUmqcPmNW6fxXy97cAon84XUlvAzHDoqYYthR8j
 b1kBxDOMC2ozY7jAMWp5Yyw7eIUBxYUCocNPjYD0hEFYZXxmYuDlt2H0MbmlA0tc030fMdJWv
 LM3L3IkEwHHchLkwUEqudfBRx8xLHp+b0LN4FSVE8r1QMUGE7Iazd9LZ0GtLBegz3mTNhByHl
 mp5M4/Xa2x/RyMYeN1AzLNjW3K097COlLaOFq49ZrxL8+4CRGRdhx/d7jdS2dvEImc9pA30jN
 mO5OPqvxR8mWvJ8OeW63P0sX4+A7nDV+KC9UKtEyasve7wQlzc6Fmqu93BlmwYBVX7mvVIrka
 iItUekLxA6+PYiKFkaEbo1Z275ItQa7n90qpGUxcT73ZE2q0fKPww2Cw9m1wV4CQbAAinmUCk
 HTrGo2Z5n5lrxVZVJ1ArM1YlvXBykmwBMDhPLG/LALPvIDe2hisY6hb8Usw/Eur2lhonrww63
 EbwH6cCjpeaf9uqtIojebkr8oLqnh3jbT6N2eW8tqV4CT51VbZSDZAYrnjXM/Rwsvb/8RpJyz
 RapkQcaXiqG/geDD03DFaEg7pqwSiC6O28z5V6OSciQdatOePXsUPzkst/4brVl7TxmQoO7yA
 FyZvRq1NowvaT/m0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
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
---
 drivers/soc/bcm/bcm2835-power.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 77dc9e62b207..fa0a13035794 100644
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
@@ -150,7 +147,10 @@ struct bcm2835_power {
 
 static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
 {
+	void __iomem *base = power->asb;
 	u64 start;
+	u32 val;
+
 
 	if (!reg)
 		return 0;
@@ -159,12 +159,13 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
 
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
@@ -622,7 +623,7 @@ static int bcm2835_power_probe(struct platform_device *pdev)
 	power->base = pm->base;
 	power->asb = pm->asb;
 
-	id = ASB_READ(ASB_AXI_BRDG_ID);
+	id = readl(power->asb + ASB_AXI_BRDG_ID);
 	if (id != 0x62726467 /* "BRDG" */) {
 		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
 		return -ENODEV;
-- 
2.25.1

