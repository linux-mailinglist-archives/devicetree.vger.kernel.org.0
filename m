Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D765B54221F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:46:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377634AbiFHAtR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:49:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389928AbiFHAgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 20:36:24 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 878A137B528
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:20 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N3sNa-1npm6W3bUW-00zpbQ; Tue, 07 Jun 2022 22:42:52 +0200
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
Subject: [PATCH V3 02/11] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
Date:   Tue,  7 Jun 2022 22:42:17 +0200
Message-Id: <20220607204226.8703-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:ScX2DzfWhJCjhPEZb9S4fBK8Yxpiie8QXDn7g5Pczowbl9B7rNk
 eCIPHxW1g2N6tnyruYcDTURu6kzg3rfhHpZ2m2zLumTcAQuu1CZ5O36n0jpy/Xkw9FTLyvs
 5LTnRQbEIT5LdOh9466rtSfihZnT5yovzT0YkvgrDQ8J7Cl6+/f80DC2GvnrS4lXEngzQsm
 2v4rjgk9MonJPKbulQkGw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:DM8Zds5ASIw=:2u1Q45Qo2iHICcBr9QwbBe
 2vnoe+Zu9BvjZ26v+dlCNvTJAFICt6S1+P7g7B+dqnCxXrxaG0oWausaUEhNwrh/OhlTnaoc6
 8o4h9Qmxoje9ybgOK/j3pmJJtYJSD9jwN+uRoN+tDkSGtMMEpXCZqAz5ypomuGAIbILebcmEZ
 JaQXr82psAXMIUwnXtt6ul7fwBhNLL3EQrGOEQNcnlwfXl601lEY8vpqmPhmrdCvSvlUXhscc
 E4UGQVcJDIAifJJvHIgDTEulXD18NiaKarJyzTtpEu0wUzwoy1vvUtgxkZQp7+J5m6ZbkMwh4
 vMiO28YxKWGNC75HRn/3GhL66qHCi4BFN90Jrh4MD9pvW8o+BauM2hSivMKTM9I45EqqvYSjI
 NxVg5V3ABX1Jy0+VxXTcW3eH2hKjeO1H776jNfys7cAHQ2IDUS/90khP7u9wKfZObecW85mht
 HFi0hdeAeeiIZHXvPahHBbj8747NWJcAGON0G8w7IKTuwdwzmq4uDdNMu4MAiDdimGIl5R4mm
 Jdk/J1cCCJjYvSpZQbGz7bx5B44hJTHNWjXJGwVM7aL2PhrQNil3/Wis5g0LlKzYZ3gb9gZR9
 o4yYIGVO/qv3BKD3XS+LQ9qPdnZYA+JxXZrxmZVqeABxdRq3IiQkc8R9/qbziq7WN6ygQGiT2
 wG42JRPoA0SVOWZi4PEeiKqU30VJoKTdLvVzYPkHwD/LZaZcERbR9Kg93wnpmJqSi+3YMlcuZ
 rNERvVwj6VGSXOuR0ZJT3EUVaeEfuwqf8i8vLGrO50YC4+W8G60+HOEL/B8=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
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

