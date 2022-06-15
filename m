Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5FAE54D349
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237525AbiFOVGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231604AbiFOVGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:06:15 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B850029838
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:06:13 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MXpM2-1oDf2H3gzc-00YANH; Wed, 15 Jun 2022 23:05:57 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        "Ivan T . Ivanov" <iivanov@suse.de>
Subject: [PATCH] ARM: dts: bcm2711-rpi-400: Fix GPIO line names
Date:   Wed, 15 Jun 2022 23:05:34 +0200
Message-Id: <20220615210534.4906-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:IbST4/Io5HKIJ4OGOI614zgk28UWa/XmzshhaUGH+8p5FpvXG/3
 ADBXX+0XFwV1pf/akvJch0iheP6AjDrMYdBpT0rXhBO3xZ1OJfmTWrv1wm7qvL3zS7KV6MA
 Ws6/nzwzIbuaaOM8zb2eNIbu5b1Jr7Zqb+LvKeC1xm73niA4naZ2vPvdLPPmSAFyEi11i4K
 35ySWzW/Du2qYnEf6NzGw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iaR4d9Db5wA=:ZR5qCgiHtkKVXr83JfmAaL
 bK33jvBhXnSDanIZh1FEhy2GzuqTNkYp9JRaH4PAtOBY9GFdLcqlT+liSfSsrW2Em7RsKRzsQ
 6LkTXtBctZLCHwY8VIuqBFtqTcnRgy0FgPQxS7QO/mpVSdTjuIZn9W8eR954kYnMBU+QammS+
 8syG9fJlLGhvNpqwAjwLzp83KU8l72S0lJdNHtfPulFg5eqqqUy0KQO7xWLWhwkjxwXAaCnA3
 nr6ANH8yWwJu40V9tf8aYU2W/0UTPDkmWaLuZKwhgkRHAGwFeyeRHrX/A6v5rhu/fMMK/KoR3
 Tb69cACiruxIaNgSsKyKsRsiee6HOpfmYhTZwlJ2V1FfZ3akEPd7xpAs4dqVZ1/Lf60I5MhB+
 7J6atIYdly6cLQN6PkSBGArihTIyB1Qo7OSQVyBEye3WSbzpm9SmGDQ+zfPuf3z+ad+yqi6ru
 WMAkUKgEDcr+vKz2paQBIsjT6lrNopyVvHko9nJms7/6c82baIJyh97Qq8pk3mNjx4P2XqXGT
 DZYTA+QBtSZxpjXMU1GP5mnwkc897erBbkN9BF7kRoq28oTHjZMGikPL+mHCG/UvIR64tK7t4
 szasEujPH3Pm2kKtRUWovgozIYEV9kMZxI6xSHkPxqKj3CXVUbZIejtoNT0me2j7REfUjW9Rp
 Y/EW5LLMtTTpKXJGD6vlt6Bll55f8Y6XH0zx8Fyvk36XpJFzAgBOREUlXPPs8IrG3lF2Dtsdd
 GcNPqO5/YhnClMz7BXRet3Q8cXxL+yVTDEVYX+77URDzGhVbbMn1xKRtKrU=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPIO expander line names has been fixed in the vendor tree last year,
so upstream these changes.

Fixes: 1c701accecf2 ("ARM: dts: Add Raspberry Pi 400 support")
Reported-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-400.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-400.dts b/arch/arm/boot/dts/bcm2711-rpi-400.dts
index f4d2fc20397c..c53d9eb0b802 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-400.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-400.dts
@@ -28,12 +28,12 @@ gpio-poweroff {
 &expgpio {
 	gpio-line-names = "BT_ON",
 			  "WL_ON",
-			  "",
+			  "PWR_LED_OFF",
 			  "GLOBAL_RESET",
 			  "VDD_SD_IO_SEL",
-			  "CAM_GPIO",
+			  "GLOBAL_SHUTDOWN",
 			  "SD_PWR_ON",
-			  "SD_OC_N";
+			  "SHUTDOWN_REQUEST";
 };
 
 &genet_mdio {
-- 
2.25.1

