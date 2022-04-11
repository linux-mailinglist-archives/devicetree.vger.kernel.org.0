Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C18744FC55F
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 22:02:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233105AbiDKUEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 16:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233371AbiDKUEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 16:04:43 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6935A1A391
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 13:02:28 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N8XLj-1o0G6P2vXV-014XJ5; Mon, 11 Apr 2022 22:02:04 +0200
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
Subject: [PATCH 3/6] ARM: dts: bcm2837-rpi-3-b-plus: Fix GPIO line name of power LED
Date:   Mon, 11 Apr 2022 22:01:40 +0200
Message-Id: <20220411200143.4876-4-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-1-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:ZCHLLXUIKg4bqQR6jWljmHMjyMhXdWmz/I9yYD3589SFZ2uHunH
 8GMxp7MOX5XdEdhd7KMH2hONgBjNTA71mLB98GK391syMrizd/TVenpM2tmcgBMbArRiq8J
 BS5l/UGLCrLsSED33/dYEGYxIt6RC4vBUml1XJ47utgrUBb3zDe/8XNZMP2Zi/+/+rM9Ijq
 H4FyQxOu32gW/n+Jqu7+g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GGs8j0FKpVY=:8aP1dwZAscSf5YXOOmZqYp
 fz5x3/Vm65y234t9jd8D0BNyqok8W3nhJg31y1OMT4ZJj/oPAb05E0qL173DGbv2OtLYCHK1A
 Bvxu5NG0nGDV08q58tIo9AZJqOKR2Wp9GdzCzJ7zJg+mHho3GxvBWPgNJqXqS93eJvAo5mRP5
 RrA+ltRH49OEFFwTqufJXUOTbwGYg/HEYgbP6ViUJBLsef5vEqiWj1sUuHZbLq4PLagRUzMw7
 oBZVlESfKef6C4CghXCRJJCVTFCMwIIbzVOiF062AmYrvmhK7vhn72KJAcn+O6U+OSGaTKup4
 Hp9Jw1Pqg4m0ulESa4w/lYYVMblyjqg2Z3nGkdFdGI7zOea6QFY9hStKFHnpm8LMPL4z4OdCL
 dNdB/7o811qdnP8Fgtzta7kUZIt3doZfh7QfeSYO+hNTsQE6nMP1kwq64D9Ekn7VOSe3RLvRw
 Wyw/5S9ME4jPTMsGDNnMD3QuVDgbin9lWxRFmjqFffgpzCn4IMVHRXy0f/mthwJMnwxfgEZcK
 fhkxAVs4/d8MMhPQn9U3/eFFBqIgQo/QL328s6pC1eUCRnjNHiiG92znwjRTn9QBV/cCw03B+
 vnAN/7jcwG9R9L0E4Z3PF8TlSHsqcpCkizqQX6T3/aqcraVfucdKsefmoxhLRrWfVhucMTlNZ
 U226oYWjuFVwSq7PLUq7dOTVIKK0tnwN7Yr8lAdAHA/6MlKRcvPy9FJZV+ALxpeC0mYuYsaDl
 mH55PdYv54BvtpY3
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Phil Elwell <phil@raspberrypi.com>

The red LED on the Raspberry Pi 3 B Plus is the power LED.
So fix the GPIO line name accordingly.

Fixes: 71c0cd2283f2 ("ARM: dts: bcm2837: Add Raspberry Pi 3 B+")
Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index e12938baaf12..c263f5b48b96 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -45,7 +45,7 @@ expgpio: gpio {
 		#gpio-cells = <2>;
 		gpio-line-names = "BT_ON",
 				  "WL_ON",
-				  "STATUS_LED_R",
+				  "PWR_LED_R",
 				  "LAN_RUN",
 				  "",
 				  "CAM_GPIO0",
-- 
2.25.1

