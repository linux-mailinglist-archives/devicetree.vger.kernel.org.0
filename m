Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E19F24FC561
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244932AbiDKUEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242334AbiDKUEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:44 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE4F1FCC0
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:29 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N5G5b-1o3XtR10vV-011Dux; Mon, 11 Apr 2022 22:02:04 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 2/6] ARM: dts: bcm2837-rpi-cm3-io3: Fix GPIO line names for SMPS I2C
Date:   Mon, 11 Apr 2022 22:01:39 +0200
Message-Id: <20220411200143.4876-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-1-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:+Y2/h/UhOpq7zYmlchxGscteFLKGnVlEUPDN5aV1Pl/fzeE96+0
 e6e2ToX75dZG9iVS03J4a1tl0G4iVDJbNeoZSyq2JUOC9a/RN20Ks/OX5KjEsQUCE9JWNqG
 44vTKpagC23Oq8pQvnasOAWdM9SxVq/9cXQvaKvuZ2p6JfubxbRlzJ/NgLaN3eTIWrb5Cl3
 XjxFGNsphSUrc+nJe0R4g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5Tj3V+sfIq8=:KucHuiyyqXZ0GFsYpFU6KE
 YIpAWcY54zn58ll/byYKfFQBN6HDsRFNsMrEeJZtuG3ijRc4CgsV3Ax9yg/qgQHFybeCehp06
 4FlmhAas/8BowU+NLLvsl6w312HYCNsSF9Ypah4A0D29lV8by5kOLp2tTQ+Mndq0oPIUaGFYi
 6fZADjcFCZ6ky+U9ufBDoT9sFuuoKJPRsdYMr6DFE1ut+oN4MnfWfzVRxTfztwjHx0oL+y81g
 vIm+IxBS2c+3kybrbjUlPF8L+UtAGsWLDmuVJyF17XdrC/Es4bkdawtQ6VsljouuN5IV+IUKa
 l29JCn3RJWUmuyPpUJ69bzev+BqDodENvK03GJc8WAgIplt5ho6nd3Pik+heFXsuoVfVyG4ml
 JgTNcVSCIZ8GPqCQRyZJ57xrLR5lItlpJMLV1KP4Z0uYYcyLhLNHzyUXCqa5D6CiA5gX2HMCE
 mffQjUZ7wsBYr8dueU0zgA5AQpI5q7oQJebOaEZGL5jj3iX/Sbt3HDWFZxn0sIuB5wYwb7z0W
 2O4Af00cBJgHML5rw+qRnv4RxkJ97rhYSnFE7oPcTKSr8lNXoLtuLI9yAHRmK9HeG5Jmq49gB
 6uj5VDFTb/VgKsCXdGeKe7EzQkyj4mUuynx6Ag/lbFWBBRgIy4bf6Ax+6rMskD5zybkn9N87L
 FpZLReFuQg90dE4fpXrFgq0C6k+0QymNOR9xttweLCV686dMwNWhk4LB/jcJC9elF7qspqkww
 lnavyWNurWMG340R
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.com>

The GPIOs 46 & 47 are already used for a I2C interface to a SMPS.
So fix the GPIO line names accordingly.

Fixes: a54fe8a6cf66 ("ARM: dts: add Raspberry Pi Compute Module 3 and IO board")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
index 588d9411ceb6..3dfce4312dfc 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
@@ -63,8 +63,8 @@ &gpio {
 			  "GPIO43",
 			  "GPIO44",
 			  "GPIO45",
-			  "GPIO46",
-			  "GPIO47",
+			  "SMPS_SCL",
+			  "SMPS_SDA",
 			  /* Used by eMMC */
 			  "SD_CLK_R",
 			  "SD_CMD_R",
-- 
2.25.1

