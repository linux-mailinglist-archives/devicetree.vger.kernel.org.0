Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9BC55A981
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232501AbiFYLhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232671AbiFYLhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:18 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA4F167F0
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:17 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M7KG2-1o1lEf3Wyi-007oDS; Sat, 25 Jun 2022 13:37:01 +0200
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
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V4 02/11] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
Date:   Sat, 25 Jun 2022 13:36:10 +0200
Message-Id: <20220625113619.15944-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:eKIQue7G9SB6Q5BwxAewshoebIZdiStDCRzFQz6Zl18hup+jE2T
 8eVTVRQtNALSGekn7POD5EMsULaL2SO7bGphbmbm+saG6zt4FkCic0/ZWDkpoj+no483ZS4
 Cr+VVNJ0QhLXK4exwkK/v/Zfe25vMOeNO9YcNAOL2+Nuy19VoLOJRu417p9k0pHsJvtJHcf
 59xNnh3u7eXDZXcVO7lRw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ybvKKnSQ6Mc=:aaEI4HeR+KABosF8GpXTVy
 itkXOvX9TSmanh5D9DD36S50cAQ4oPcSj46NwhdE0bAnKeSjIa7fGsWxAi5wXdjQnO9cIrhfm
 7drzM+mRRwvvY7T/QoBlqZgLTGepIgjwcSBIY+PyIIfhw46ZsMaP7c2OeJ0M1BxUfkqOmNY7P
 bNPkNDJ/DvwvZHyonWbiA23x6wRpFY9QydrIWy0HAulwG6r5S7giKLGJYFRzmJ7tk3WE5UStL
 2X0A9GQt9sfYis32b1+wTez+eTQqMVBS4nX9bWrbk2VHLMjt933IB5frYnrQS/Hkt9ZWdbZCU
 B1QFNBMKCZdUcCDms5XIeg9O0SmqqRGVXq3+00vIuXniLuWhy7bMgBFKhRUNyQ68MifN1NpBk
 sznElp43lOGrzeBqUzMlZDWXCd+6gCfiFBgs/k5u758iIWCh9vS2B5sYn83TEBLHAD+AJ+WnT
 iEsOgmb7po1XkIK1yYsl6PKh8uaQU1SKhAqxCt1nxJmpKnbQD0b/cdYECpmip2TKC3uUUJQPR
 IYnw/oF9QlngKFIYNRnBCNGHpdSh/KqBY9yDar5A+BZWPJUx4THZDkbkE6htz6cq7kTrGTGeR
 DxvZGhjb3qyZ7s7YG4TFSgpanSw/LYNCFS7uMknOqr1AqJ7bQojlCEDqKN8lcEw34SGiiAkcW
 S3/WEKBxrVoN/RT7BU9SNMJPukFUV2NsoT26ycFjJaL9AhiGC93SLSIEG5Aa2zOdOc19NJUI3
 snN6IHmkLAKIHOsXnaioaYK43W6LNC4Lf+Jpe8AxP9sh+vbQIILe2t8Q8/Y=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
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
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
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

