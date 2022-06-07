Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 900915421A5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:44:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377285AbiFHAtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:49:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1840656AbiFHAFo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 20:05:44 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E0741F0FEE
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:09 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MG9wg-1nzimL0mIW-00GVPU; Tue, 07 Jun 2022 22:42:57 +0200
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
Subject: [PATCH V3 11/11] soc: bcm: bcm2835-power: Bypass power_on/off() calls
Date:   Tue,  7 Jun 2022 22:42:26 +0200
Message-Id: <20220607204226.8703-12-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Wtkv+hQrAAMAAjclZalXUshwgD8klBrtNAKDIEssOEpe7Z/SDqq
 99TZ71KP6KKymnZOpRenvM8uqfxL0STiZ9Jbhox1of2t+kiG8mDYh6/yMieUzMb3g5GNwMe
 xBx9nt4vjWuOM5preX2/9BriLsl4R0qhq+rwnqO3BI1eqKb5mIS45j1flL4dRTK4W/bzRj5
 Y95BL6BxSwArG+qYiy0Ng==
X-UI-Out-Filterresults: notjunk:1;V03:K0:eek+58zNOOs=:ekds34yXcLWY2ZWwiIpxNi
 uYRPIb99Wfa3fSUtOKbSus6urPys4OvgWtJ09/vM4/bHa9btMdtRGSykwkyd/Ee7d+ii5YpXY
 B+NPldToOUReIjP2gC2hpdkuUc6Q28ZIam3H2BoFr/NrZN9FvrARhW5S/6MPYhDqEoNy5hmeO
 xq4NpryUrTwzNd+mRngVS3X1klb80ypiTgLezrfIQqEu85sH/dEQs4DXdYk1y64gxd5kYyA9H
 qoB1zETJ7nVk5F+uAsHYRIcWkUxCoYR7+bv7EAqdfycv6KXsymH1qHHzMTd0TjRYJmXiTL4rh
 bQR1I+9U4VsdnqroPh1xh+qxncwlksm/hW5F1ABmykHRREgWV3v9Fg4KUq2zOeZgfAre6CNJ+
 qVLO5e1tKWw8l82zCgwmjU1492auAhtfhq5GEPUJCcGj8kXRx5otr6JaGTU7f+iTSPpDLt6aV
 LUUiLAylxCD7NqP4Z6aT+Axujyu1+D5sr3DPKCmib9XYY9olbEZLe5KTrBdUsnnaFY73M7d0p
 wZ2DX6EarjHVMxr7sdksNVDzJ8UvPrXOiHdHnNE673VP7T26mjsBvMKz5CFzGCms36C/oOxID
 HS0453CF/Tm6Op66LVpx/BpUk9oTPFHjieomNCtSotgRd9uP97h0KVbxZNmSDFQ5Xon1RRdvn
 ufXis0kYUjqbOXDIoE5pKrfth7nu28OFwpuod58F+EPFZRBHP+/P8lmFb3cbb0Zya0wm7ofMX
 hOMGShcrMtDh4rY5hzJnNrxxr1YgfJ46FiBbXD2LQZcN4xEzznrEWykEzAI=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Bypass power_on/power_off() when running on BCM2711 as they are not
needed.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 1e06d91c0739..5bcd047768b6 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -198,6 +198,10 @@ static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
 {
 	struct bcm2835_power *power = pd->power;
 
+	/* We don't run this on BCM2711 */
+	if (power->rpivid_asb)
+		return 0;
+
 	/* Enable functional isolation */
 	PM_WRITE(pm_reg, PM_READ(pm_reg) & ~PM_ISFUNC);
 
@@ -219,6 +223,10 @@ static int bcm2835_power_power_on(struct bcm2835_power_domain *pd, u32 pm_reg)
 	int inrush;
 	bool powok;
 
+	/* We don't run this on BCM2711 */
+	if (power->rpivid_asb)
+		return 0;
+
 	/* If it was already powered on by the fw, leave it that way. */
 	if (PM_READ(pm_reg) & PM_POWUP)
 		return 0;
-- 
2.25.1

