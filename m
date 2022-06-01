Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3764F53A580
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344918AbiFAMyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351149AbiFAMy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:29 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD746FD34
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:27 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N9doJ-1nhrg12yCj-015ao5; Wed, 01 Jun 2022 14:54:04 +0200
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
Subject: [PATCH V2 08/11] soc: bcm: bcm2835-power: Refactor ASB control
Date:   Wed,  1 Jun 2022 14:53:41 +0200
Message-Id: <20220601125344.60602-9-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Ig4+vtjVmnUOYvMLZ2d4Qk3vLDd8u7U6svJsfy+ssKl3gEGWgJA
 VZB7WC0Qn8GPRH87kxuYceKCOFjQ/2pW3Dp5EFwzDfVv9UUcxsmdYcFd02+fWIagA+l2hfi
 JkzaF5ojVXxkyobvyNQRHaJMonSeE51rtTxNnA0SqK/ut52wdaX5/4IJBNd7npSnPl6iCNd
 2Is3LedXgP6pKQeMhMYpg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8afz+10XBLI=:t+cC3CIIwTk+CWNjSDMwPa
 1MW9daXkLIfKMPF9MyYEELoqTEMuJSL+Jqh9+uoUgsFBaYfqJqSWTZwcu/mGb/nwlfPZN/N3g
 O/ZStFJuX282EBKUSdkpNQ6PFlRx7mhbfwMqt4+MbNy4bmxJwwzH/KZrOBizDjtAjtcrxjpEJ
 km6ANnPGzUBZpE0wz/99YjmMitNv6vw8D2PNG9QvR6d7JohEzY9QIp5KCiTNYoM19oUmPb7Ar
 EtAghpqNuRbU70wMLAmS1ULZPacjvtWE23bcpHVV3miYtAfo1zdErJT455n53dIk0HqOJ7hjF
 WyxDWYVQf4nUD4DpEnLyL+GImqb9imAWVYwnVuZRYbP9h2uRcSaEdJ9u7gR9GqA8cwgsZFUe0
 s81kLjoIeuV1t/Dnlp0Kd0CH/QUMzICxnrrFGleQKQ9TOZSHfTiVY50XGd7xA37/wzwaTtV+I
 9HeYAQPY2jdFhONmIr63KBW9IMdm/4a9WZM5lRGnUZfY1GR/iZQxvIy5tfJXACYRWT8R+Zlvi
 v0BVzVYDtHizpSsBhyijeg6DuuTeA77JTwwNusvpLV3bdfwSpD8XO4rEUDONrL1mrKVuWmP2m
 MNmU/eZHTUKyf9TWkp+oCGlFUsDBsi1acETDGC/pWFNl7it342AJe/kJjbyWv4JOJbkMq365h
 gvdXcTy4dGjc4BWTIG50eZ9n5ytGzQ17JDbqn+y249sZaZBImKiyeNHMAtjr24r0Mvruv6zxz
 fSsVVzVfU2Yhrj9Yb/tptwvpjKIgWI/xk98IqJTwIY4aBDkuUb3ln6OU7Rs=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The functions to control the async AXI bridges are almost identical.
So define a general function to handle it and keep the original ones as
wrapper. This should make this driver easier to extend.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 1e0041ec8132..77dc9e62b207 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -148,7 +148,7 @@ struct bcm2835_power {
 	struct reset_controller_dev reset;
 };
 
-static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
+static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
 {
 	u64 start;
 
@@ -158,7 +158,12 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 	start = ktime_get_ns();
 
 	/* Enable the module's async AXI bridges. */
-	ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
+	if (enable) {
+		ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
+	} else {
+		ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
+	}
+
 	while (ASB_READ(reg) & ASB_ACK) {
 		cpu_relax();
 		if (ktime_get_ns() - start >= 1000)
@@ -168,24 +173,14 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 	return 0;
 }
 
-static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
+static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
 {
-	u64 start;
-
-	if (!reg)
-		return 0;
-
-	start = ktime_get_ns();
-
-	/* Enable the module's async AXI bridges. */
-	ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
-	while (!(ASB_READ(reg) & ASB_ACK)) {
-		cpu_relax();
-		if (ktime_get_ns() - start >= 1000)
-			return -ETIMEDOUT;
-	}
+	return bcm2835_asb_control(power, reg, true);
+}
 
-	return 0;
+static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
+{
+	return bcm2835_asb_control(power, reg, false);
 }
 
 static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
-- 
2.25.1

