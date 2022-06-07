Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13258542599
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379927AbiFHAtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1842488AbiFHAJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 20:09:34 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B0001F0A7D
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:05 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MScox-1oMcwm1Lo1-00Sxcz; Tue, 07 Jun 2022 22:42:53 +0200
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
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
Date:   Tue,  7 Jun 2022 22:42:18 +0200
Message-Id: <20220607204226.8703-4-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:UE/dsbGoaW8um96Kb72CcCBjoIqPly7nhlflOJ/R1LK7086oAV2
 Flvf1GPuLx3NDJ3OToq191jbny7IZyF8BNxp+XtGkVg4cgZnQVov7EWN/MGmeSR2Ay81nCY
 nkrMFZcwtUqyZQW/hVpomRS03SAaNwrpRIjRa6R+wo8lVH5XMLGMG/3IYl6XKE6luEq6Ier
 tjY2e9TdGVHdcW9D+ELzw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fdlcL3qHbgo=:nHTsQuDu+UlZyoQQ11dz5f
 f3s0Dr4btHXHFPUKW/5Cyw8QmIuMHnnizwVFLuwG1ZcOpmzf6Il9rZG3ZR7he31nyTtxrY8m5
 eEsF6VEX7LE3nSdWuPs8PG1l9TDvImFv6r6E41sTuHQelxRcVEv9gC83ZeEtUms7OWBa9DGPY
 OsQlDaKfhcgYN/MIJylf+vGvMSAokd8lSovwkfIvAp37RSBOoKgH7clxXgB91IQIbDCItR/yZ
 arDr2F/p527laX+XEhH9jCGtzowWN8NpvVjs7mSXXg4KonsvvpHOzf+t4gpmmTsqtRomB+6LP
 rtSIE9Ulu1CX0dJCeXylg057egAKDRevhOw/51RrCU1T0uSYuoIZMeIoYgNjmeWYKSq2qwLyT
 nK4tX/m3LNLNql67A6SKC8kMuMYyY5EztsdDVezKKIUi+7zQhrLztITYvZ4cWo8emwbLJe+j+
 oYWeDk0E7aQSp9UM2F/+Vq0XJKGSwMYbACUrQRaff20hRhoYkFJ1OzdNkC8l4ZNZqIJIBMjDN
 0NeOlrGqy7g6uhhSfUaddOyCb9Y4Lhz97HXV9QZUwf30vImPSm3Fg0RMoe/2rNxdHkHNcPnWg
 ATHOGOpww0n/Vpk3YTQrxxPjgAiWOHUrxdmMNjy0d7ZsrmyMiYzM03HVqI4ktSjCAJOg8X3Xr
 VS9zA05R8o21yEUOGTTcZsAa2X+Ek6CPgSLqxc1F7cyEHbbg5S4A+BUzEam8jloFHgFmLdoFv
 Us1dV+Zez0NvAQSqx66RUZpnmORLNsDQ7rZzXtUq7GBB3m6xB6LaFJugyfs=
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
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml      | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index 883ab7cb96e9..894786640938 100644
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
     minItems: 2
-    maxItems: 2
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

