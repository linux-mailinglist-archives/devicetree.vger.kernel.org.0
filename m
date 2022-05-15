Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64CCA5279C7
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232971AbiEOUVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232688AbiEOUVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:39 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 808BC35DF3
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:37 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MNKyQ-1oF2cX0Uiw-00Okjh; Sun, 15 May 2022 22:21:19 +0200
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
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 02/11] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
Date:   Sun, 15 May 2022 22:20:23 +0200
Message-Id: <20220515202032.3046-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:HvOpsjTGFG8ydQxQPPL/ZfmmV8b3SXQZxN7l9il4O8dHbW3dB0+
 wZqL76EdcCCMGPDpTL3bhj8VMXQBYbyXP9QoxEB0gl1pU1WbVREUkwITN5ZQmT+wMOpb6tj
 bXf3Vr5C5qt448mEu0gJbYXYPM97fjq1ozx/xj7PL+LhEQF5MyWnobf27RpBQ8Ytz5O8+J0
 dc8dyf/ZlFk6cmQFjVA3g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:0Go4nnZ0k4U=:iGzB04ym5lTWiNhsWWm772
 aPrBgtUoYwkP54NKafO7BM88tWIubsHLxHlxEhXalqmqZzRGhWkJVHM31nZ3uZL7edL4atbFZ
 UtVXXInGCRDOK8SbAbuiW6p673Pfw9kU2EONw3ZGIQXPRguUVTD8shkhMeCLTRt59/tjcOgdy
 4waz57upoR+wj6MxnzSU/WLhe/cLfqwOUCdMdA4GvyBB2D1Eer+Tlp13bXnndSeumJbL+4Hfe
 V3+SWtLzOh9bJQ52KFNr3pNLWwzhlEUezh7OcCku9+ohAlSuD+kiG6zZGtGhDr2+WyEqdj7Bg
 cB4wgu/qLpaSsqXIyDY+0TVqXtJg2n7oUnLZM8BLrVx3uK5iKETqvx6v78SUryvU02LPG1gUC
 E3bYXmWort/0ZYHdmQSdEwChWXURDcMXZxklIQX9Uq1kYQxgxfEbTm6JAvfezQQ18FU8C5Se+
 15TY2Z4jl3Z1uVooQIzBrCVhonBlqKAYq9TGElGeug6gUvCm4zNk/hDqMT8rhf6ZTlfzOeFAI
 WshDC+fLUnEHlLfronzIZy4cbzUTfXVHmH77wjzAqndBZvTcg7op9O3pCGYwu4IVuPvlqO7ph
 KsAXFGHLJhqOMmWX/qCcQAeSMH6hQ65WIeOCZsSjRMh+EGzSl1svEONVZbTaY6VsSfbPRbfUz
 Oj3wmKXswyvmhww1yoj9E8l1HrptTvPCUgT1M6IrVCht7Agi51le1VTwg1R0gMKatKeXYKJFP
 re2GsIiQx6ccxES4
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Anticipating the introduction of BCM2711, of which we'll need to support
its new RPiVid ASB, introduce reg-names into bcm2835-pm's binding. This
will help to have a consistent mapping between resources and their
meaning.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index 5d1ff0f6c8ce..883ab7cb96e9 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -23,9 +23,13 @@ properties:
       - const: brcm,bcm2835-pm-wdt
 
   reg:
+    minItems: 2
+    maxItems: 2
+
+  reg-names:
     items:
-      - description: PM registers
-      - description: ASB registers
+      - const: pm
+      - const: asb
 
   "#power-domain-cells":
     const: 1
@@ -68,6 +72,7 @@ examples:
         #reset-cells = <1>;
         reg = <0x7e100000 0x114>,
               <0x7e00a000 0x24>;
+        reg-names = "pm", "asb";
         clocks = <&clocks BCM2835_CLOCK_V3D>,
                <&clocks BCM2835_CLOCK_PERI_IMAGE>,
                <&clocks BCM2835_CLOCK_H264>,
-- 
2.25.1

