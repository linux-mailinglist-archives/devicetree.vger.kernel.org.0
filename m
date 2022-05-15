Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B87A95279C4
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbiEOUVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232102AbiEOUVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:37 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA8435DF2
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:36 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Ml6Vg-1nTLmN3Pci-00lYf1; Sun, 15 May 2022 22:21:19 +0200
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
Subject: [PATCH 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
Date:   Sun, 15 May 2022 22:20:24 +0200
Message-Id: <20220515202032.3046-4-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:gDrmecDgKFIq2+EdHQt+MGyYGBomlnSecRvr5kKkqGpll7UdUAI
 y4xJXEfAD8GU6wd4IVKvuVIkZ7rDGUTizEBKL9k5wicTpYl7LvKyq2porHXzqnz0DygE2oi
 JCPCTk2Bm+I8MqYUezbgsg44+HMScwr59KYWvuKo5c5pe9Yam+bX16UkDNN2Z283vXKNyIN
 W6DF4i36EF4W668sMxIYw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:rCConZGf990=:auNaV7MWxMDUnu+z0ebF0k
 HJBkZbMPo2KltOJZbsuNh1OSIMC62U9m8vaxr5zmJTZaSQyT9hAlYfspJcWgmFsmAo3gFT2f0
 uHy9i6lTFm9AfdRowBqVps7UFZVEVbuiM0/raKqY2PGo4GjBs/j+UjbClMnYbvh6dqGOLYK+e
 SsjLMliWObaKkotoNMz9Eh/mxbWhUACmPHBE/jwPRwGJWJT6g9HmTEgDfTPRMaHgxmmMV2nES
 fN04EmdX22q/aZyb1fL3Fln9G6wPc3ivkWrafQZmFlgbdvx/wEuDqYF946UsdeYIHk8d7V7lT
 bNG6B71fE8LyimiE1KkCbiy3VhXVDeiHF3lJgGZD/tQFgnJavwNWjBzVQbUbAoIo2byuIKwyt
 OysLIIIFLTff8J2aqSn0Akid4wOP+MELFiO6vjGbVOgdyjcOpVV351B2iRGnopPrtxhelra6A
 nuJab0Ona11rygg1PuZWW9Fuw72KPQU3ie5Kt71iLOOJRtB6H2HSJ36SwVRrmoc/KWl4aQvK3
 7nnYOh99FowbmizAdh/SMxn0iZrCB9cAZPNUD+2uxUq0PLvbXoQWJZUd6+/auxx9u7+l3Usx9
 S+JpOTLOnMsD9v5crP9QCAUNfMsD2zpL+3WK3tns7jDuH+w0N0Lc5oy/H9EsrVd7aaabMz1Io
 MMaX6HkpSeq3LCn9qv26u6Rz1HG2/+p67mYcx3r9uUg4fNTdnayWA9+p5AnQ/ILMn7eADnY2X
 rS8R9C4TPOfG6PXv
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
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
 .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index 883ab7cb96e9..e13ce98d1753 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -19,17 +19,24 @@ allOf:
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
-    items:
-      - const: pm
-      - const: asb
+    oneOf:
+      - items:
+          - const: pm
+          - const: asb
+      - items:
+          - const: pm
+          - const: asb
+          - const: rpivid_asb
 
   "#power-domain-cells":
     const: 1
-- 
2.25.1

