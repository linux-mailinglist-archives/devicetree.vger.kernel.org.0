Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7E053A57B
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348090AbiFAMy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345865AbiFAMyY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:24 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B52AD6E8F8
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:20 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MFshF-1o13UD0z1D-00HKR1; Wed, 01 Jun 2022 14:54:02 +0200
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
Subject: [PATCH V2 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
Date:   Wed,  1 Jun 2022 14:53:36 +0200
Message-Id: <20220601125344.60602-4-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:vnscB3sbTQELFDI4dZooeDCghTEq9aNglXFxaJJHfAVkczNgyHi
 TsWx+F4EutCUdq+zeDaO6WpuOa3UMVA/KqS+FwtZ2SJND+5oTgrCLQj+Q5QUxnSLZYQk7fX
 Mrj6rFgMdMgjldnkLL4X3C8uCpL9xZIQS9ENPHlE/7cVUu0sXu9JJjZ63NAcxsH72JAv9JE
 +JHgyKYu3BHKK9tpQrVbw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:hFGZU7ttmDc=:wl0oxkYpvoUQ+/gefIezgN
 vrsT5Ehj5H03Fr5RhsZibhjc0TSnMDVXkV3+vsnqYpoJtN13uAH5dqhgac8RMatYfYxtpRmku
 tJP8Ht+X+FhxuiE/1tvXq3IDJVTq1R6dcqnHVj8pxJ8noOA4Mq+8M66WEVSFQqmVR41EzB9f2
 2pygr2c334QdDOZ/B7bk2nu/nM771uzgFgqcxyBRHlHo543bNCV/HW20DCFUm1lodfmRk32KL
 8qYWt5OCXTXMyR9ujEzrRLfMP01ch/4PLIdz/JcFdOj3ONZFt3rA9BUJUyF+qtXt8QDtgQOSv
 3dSl7iNwPnNj2sYhZFhU17nCxI4sLvfJsff/BNmM68dw8qX4/ZcKxZJTfkfFuAy7FV9f7uL2+
 DD6eMbFkRADAFdV7RVCcA4a3MMacWY7V6LgAuaUDD0HDLCt9OpSHnsrup5Rey7jo17amTKAQ6
 uYHxHXL2Gr2MG2tzFRZbBaOB//gj0j2ex6m8KHEZi4P+S0ox76+zwvEgyXwx24ZgqOsqi5yVc
 ry19dRbyg8WRkcH+1tryMGtNe873pzjGwfjYMtzRGcHLgycf66s2kL/sMgvyXt0Os9fAPj2IJ
 ZmsCIZ1X4Az/xufqYdp1WXwoTlRUIwMgatUKvr5+IrgCUzpqH+COhtTFGgZIRzUWq6vx/euvi
 WmmRNmiIBkkSjT4QHPnX8nW0o0i/f2J642zA6GNTWnaMYdKiZhf4EuRVhrcpwtWFx1gTChmSm
 HnvypekzEx8pWMyZxp2vDYPq95IOv004F7GhPmyEoRtE8ezYCHZq1wdMdF8=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new compatible string for BCM2711 and the option to provide a
third reg property for the board's new RPiVid ASB.

In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
of this driver so far. The old ASB is still be present with ISP and H264
bits but no V3D.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml   | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index 883ab7cb96e9..f448f034a33a 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -19,17 +19,21 @@ allOf:
 properties:
   compatible:
     items:
-      - const: brcm,bcm2835-pm
+      - enum:
+          - brcm,bcm2835-pm
+          - brcm,bcm2711-pm
       - const: brcm,bcm2835-pm-wdt
 
   reg:
-    minItems: 2
-    maxItems: 2
+    minItems: 1
+    maxItems: 3
 
   reg-names:
+    minItems: 2
     items:
       - const: pm
       - const: asb
+      - const: rpivid_asb
 
   "#power-domain-cells":
     const: 1
-- 
2.25.1

