Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D08A755A97B
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232682AbiFYLhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232401AbiFYLhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:18 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49E3F18371
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:17 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MgNxZ-1nS9Fe3aPP-00hy2z; Sat, 25 Jun 2022 13:37:05 +0200
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
Subject: [PATCH V4 11/11] soc: bcm: bcm2835-power: Bypass power_on/off() calls
Date:   Sat, 25 Jun 2022 13:36:19 +0200
Message-Id: <20220625113619.15944-12-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:2PrwkBUhlX3feTxtsVZZDn4SLPgtv9Owu+n+ReAxpWPwW+CUQu/
 CTWiEynQbYzHpcIvmpdxk4zbxImg9Xfro0H4ROK2q+C70L+C4IqHLfkJ1PUWyCHIaDheqcW
 OYSBuHy0/F4ungU8+2oIHg09DZ4gxRqMYdGZDuzXnIwAMVDQKD+zmpkj7n2U8teZGqk1J+t
 3JV96p6oLrPy10pqF4q4A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:TsRRSqpYVLU=:frROenGdWb1y3SOA3jkZIM
 qQ9IleGV+nFEDrD+ysN+HWBXyUnlppwXIKyOHW/jL2fBRB+S/FcNk0DCRuT3GzDe0cU4z/L9N
 YHnq4tOO/bA1fL0quxPu716Tt/HPH1dWmV8NZiWZbuAA8jXCMEYdQVuwBkLRDycqbvYQSBeSY
 farJCjkJhCv4zfqdadiyMjKeiJhNpb5cyZODifh1hfSt5d458L8aNQu/UKwkLDNXWu2xJDPyb
 DnaYJ01yHvHGpQcctK9nv/mTatgqxFNuB5+MFadoUvgAZ2s2aPDG5AMWrVoEVOPMAEGxiMZXK
 tQdc1AmjwwOEjup63QLQEu/HB/oDBkabnZ8GotOdddIPTLEH7QgOycOaWxw54NhWEFgl17aFq
 GPpSG4PMhhaB67zxKOvNR1+0ADdiPCH9trwPXIJPlQAuKCUeNrekHwe4SYbzg/ZWRs7MxbxR7
 f0Y1pe/Oari0m9NNwjnBxZoM4sS6l6+P3ooXtemoJNzyipzEnmMVdSZDO7enYWfiJh/09TiDv
 lCzFLHbGi+p1mGlzblqepsDi0VU4cscgAMPZCm0Yh/ce137cThJ4/LAeHHfkflq6vYeZc93Qp
 j47IdV4gyIElS9Sd9y26XaJHnANo/uu/QgXE/9weBI+NbiKXNypnLW1IvwIy3mSIx6f1fnJcy
 /49dGVAQoDqfJKV2tKc80KGeKL7xNI1Y4otedAvvbfw32icKYCIfMEN53LH0AlQA6O7OMu2Bx
 rz6pQdTOBZC1FFNIijTF24UE129FXiijW1fDMp+4rJYN/wEzH7eHZD5EIJU=
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

