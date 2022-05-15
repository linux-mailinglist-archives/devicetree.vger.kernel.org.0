Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B3745279CA
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233059AbiEOUVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233179AbiEOUVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:40 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB43D35DF5
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:38 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MrQ2R-1nVpyd3W9X-00oZSW; Sun, 15 May 2022 22:21:24 +0200
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
Subject: [PATCH 11/11] soc: bcm: bcm2835-power: Bypass power_on/off() calls
Date:   Sun, 15 May 2022 22:20:32 +0200
Message-Id: <20220515202032.3046-12-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:AM0pUZJy0xWo5m49ybRT1aE4KogOzmCzVRRc51lDsfppyqziW8p
 qXa0MWDk24XlbJUaOYgvsg1fuy7rmQiimR+fGYefcUSnAtxEFNedH78UiTX6vyUaFepfa9h
 RwQbpbNkSId3Jl6cHKMN2ks3vQ1o32KFsbZCY9gWJWqdDNyWpa+gcFU7qH0UkwM56WcwHmn
 wc4iKSLJ3aK5YEbxhpL7A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HE/ehCz5E9E=:SKkkkeDKunTh+09gigVGOR
 P0HH3FaHI8oiylGV844J4/J9JSWalv2BCHNnBfQP2TvXPUOGfsCuOv5u7mAyj+7OneCoz8PU6
 DZueQwndkOnHMJCjzav0C4rxox+EbvHh1dfYLRvLejGvLiHIDMqbZkvfyuZ1H6rOB60090oIH
 RA0ZCV3YSLriKC/10b/JoYOnF7xUg9G+RDQwcCGtuCR0TXvDJlJE+EM3Q/dSrnwVGJbA0b9vy
 aE9uPSQGG7btK0QSA6xuKjcP6WZl1U7KJK40ZXcGgRxgDD5AzoUkzR++UdcRfS+1AnbBP2b9c
 OC6KvI9i79qyEcl8AXYWlzHXQXnEYfajw4Mq3kfc+97u0L0N+9UHNDBbIzsJIs8nKRZA+jBMf
 dqtg33rKP3qL8z2qRJtuAzf2v29xvAgWVHZ9E8gk0xcbLIRuazpfZxh3/ikfs28YsatmQT0z/
 P47HZ+KkNPk082Hg25Y3/t/GS85aQ9hZOud23dGdvx6nmGGEKUHWMYmovlGUrlxkyeAIfmhbK
 9AFjgeel2Ee4XpImGI8Qfl7OiUzE1/7EsYdmiVh1Q4jitgaYFxd60bSY3ElTpMyPdTbLdwjmo
 1wReojduhV3fkJ95qSgIYfLzAUUeQE0sPOboK+vtvaFN+l4hPIxcshBRXKwsT8IgjmyvvNqUY
 lWNBGZ6SLxII58e2VWZZ2Qb4Ou7iBHX1pu28+s1bmkDBESOKv5BpepQ6ExY8ToGIeu4D38HMO
 23Pl9EE/NZ/qLw9d
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
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

