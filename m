Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6E1253A588
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243444AbiFAMyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233234AbiFAMyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:22 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 406FF6FD13
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:20 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M5wY1-1ntNzM0wkF-007SY3; Wed, 01 Jun 2022 14:54:03 +0200
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
Subject: [PATCH V2 05/11] ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
Date:   Wed,  1 Jun 2022 14:53:38 +0200
Message-Id: <20220601125344.60602-6-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:J3gr76mkrEF30e7xXTMppHw0iRcruH80FKzqzmU7rUKpoooFCHq
 goBqwXCScdRNbYa8tNLO/Jfes4ZJLZJfbjTXDy5ItmYq/6x4LMqnAi66MoxYowIn3VMGloW
 UkKZ+JHErYThfw5bRM6AhoIG6CHA4l9v9oUTBPUGv+z5ia59HmZgnAto2LwAtIUZXG/gTmr
 YBjH01N6nRnHK7gl2UhpQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:rbZPQHIUjVE=:gPOtmf3qQE2Bnok00CljEi
 0eUYGvD3JneHAPVQBz+JqbTZB8M7RPUpQSULjFdUgAWaq7wQ4wFGY9/VCIkBflB2jn4PMaATt
 G3zDA33FmCkrvM1R8iQVTnIPvx6aUr7aEa9qdseNb/ZtOi/DN4x8QpOe8n0W99Ioncn/udLBF
 AHdwtXfipR9CzZeEF2Hd0xdG57/+nXZTciUocujOf3A90HMlCA79OytzRRlHpR/k/hLGa0/ek
 JkwJBEI3C1MLWBI+ORjBjHdo1quKCjr++bo0ATq8G83jVHOoCURbUqDwg9X3mql8tJvALefTS
 7L+v+zdFagtvQ4EC67Z9afgjUirzSA5YfnpEe0nYntzw29Jb8oyeOcw+lOqh1J1oOfVWqrTDt
 YBROQQI6j/h69S/gQRrPDMoIhloHDLiIdHhPmV+4ec78AiJ3K4sZaKDbOevtv5foaXVbFBMID
 2Bm63S5+Og01ZZoyuMnKMWcUO2vhmOVRxjlMl4RbJNhiJ1vQyGL27T8BWVbGMAgf7tVmZw/Hk
 rX28f2Y3vNMiBvdZRQQkvhWuXJGRxl9TsVel3hIWpe2T1mPvcNyq+5Z7qffzYvR+z9GmVLwoK
 WDTnIkiqAifs/WGhClZvHetsAZBJfbwDJz9EACcSHhMcyf4mWq1vToIGTC+ILBG7nRFRQbRjF
 mtnJ0JUWMA1V1GWkFrPICqOCEo5tapYlvGrQSp2tgnIz70XEQIYClBpmtiGAacicaBerfXhb5
 8C7YnC5q+rTjRJZ/v17j6fm3VPxjHk/nLvWNrIXHQA0+70o92Ik03kC4ffA=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

A new compatible string was introduced specifically for BCM2711, so make
use of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index cbb47e2c9434..5eca5207c212 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -107,7 +107,7 @@ dma: dma@7e007000 {
 		};
 
 		pm: watchdog@7e100000 {
-			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			compatible = "brcm,bcm2711-pm", "brcm,bcm2835-pm-wdt";
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
-- 
2.25.1

