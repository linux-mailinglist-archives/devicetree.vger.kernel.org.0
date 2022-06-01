Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C751A53A57C
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233234AbiFAMyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348090AbiFAMyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:23 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B59826FD18
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:21 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEFrX-1o3mF10aAf-00ACtN; Wed, 01 Jun 2022 14:54:06 +0200
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
Subject: [PATCH V2 11/11] soc: bcm: bcm2835-power: Bypass power_on/off() calls
Date:   Wed,  1 Jun 2022 14:53:44 +0200
Message-Id: <20220601125344.60602-12-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:VJ7rsWMl2Jg6ImIz2fwWQ2RcRoEdGoGRnSkGfgd+kiIdqPBZXBz
 FTTmYp/RctCMbyTHdTsch14j6WX8+ssEbwhKFNWPW9pbjSTdb3hdhoUjh0H5eq2mhqB6GRn
 uNPWCQnybPaPyD56voqxZuZoFxrC1GeZjXzdR3AVaR6fSCJLSFBJ7AJg1nJZnCOoEhiIYZF
 Lgsv+YobADqv5P4hLKOmQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:W1/nx7AxilQ=:YBbbgkjQ6JYV56Q16ggyBa
 Abg+TLjOsl6UEQ1hSO3rg6VdJz1WbLY+q1Lu60mFggSeT2kVB4oT+Hu769X42belhTaRScRJh
 39cQM9s0/6xUCKxNXndT2QCCt+F4ANQc4vX/lDlIPHHG6voKRHts5vqO+XHiUWibB4AK8VJdk
 Ez/BctJGedw4EL70rQp48w0g75yw0i85khmKPojS5jWh9tmL9kvNltJ2KbdDtdAhCVzArj4on
 W9kxtY0ybZ2dNb4mbbX4dkS3nPF1L4kJj2ZCdwxW6gsyF0EFlXY3ORnxbBdaYyufRh3NUqKnf
 WR7KNfVn8fXEg0NjVd3HMEFB24RqxQWpMbLEqW60HBDGh7lDYUrpzVdog0SLSq3VE/K8MAe/8
 wOei+S5GqiYIiC2j6hWTywVOGjAN9YONJP2/u5CRZ6s+p2eWWSoKoRBYtAY0eTxt1Iyx/RCi9
 Un42NVZvpVoYVgw39RMhGHYkq2KbiwIja59pHuMDJ3VeK9iVvYq1TxMHTU1TkBKGOALN1cUoV
 e83m+32ld87P/NJfJLFJ7SpqDsTy0D4W56q6kahy4OYMMKNQ/GK2n7kZA5wGPG4cQwluDH3Jo
 vndfFFuNPXG3Y5OPy0uIDjGqbP3aZeJE546Ym7sUtL7vffvwAzWl86GnJPgTbK6zwj0+alfi/
 PyHpJyUnjABFXjdP69VLZbqAMG3VRZ/GR1KjzpxDLmHNHcDUZpn6+5MkxMawZciSFs8A4HrhR
 xszGuWbPQgW7aD0TEkVDfK3w1RIpMFH6uyov4J1iIu4zu75VZ6Wpv+m3qQA=
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

