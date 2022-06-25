Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6B0D55A978
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232077AbiFYLhQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232314AbiFYLhP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:15 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D335E165AD
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:14 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MiZof-1nPwJV1E1f-00fmBt; Sat, 25 Jun 2022 13:37:02 +0200
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
Subject: [PATCH V4 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
Date:   Sat, 25 Jun 2022 13:36:11 +0200
Message-Id: <20220625113619.15944-4-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:9i2EdGao2jACaRbPfZ3kMAkkiOtV3z8AnV9nkD/4AYq9RKzOezQ
 8Y+DXMPruMRnurlQV8GoNEE1wJDauVO7D+3jvkczdgh5iDs4kvEmSjjM6prP9L2k0O5Cp2f
 MRuDnoOIWzPGu4nCTXMFyX1TAGFuEENsNvrodz1oLKLIbPueZDmc8CVupV/qf1z5Aig3kvF
 1QLxfE9ayHvVgXycAMbig==
X-UI-Out-Filterresults: notjunk:1;V03:K0:WydDqxAsRgc=:UGsbIQ0dg6dlD5weOid7l5
 7/IzsrLNiOctKJJopWMZdrY4aweuyf4m0b81X6n8VfDCqqdiFWGPhQvNkWVU5A8KoJy1VwujS
 p7g/5OjwlIkq1XvRv1EQbmUGE9jlzT+Wi/L0TtKhEYRoA+R6aT3XhqfpdOLhAa6JB5yuWxQHB
 GE51KyONEXOFcAQi/hpMX9gY8kfWiXLYKxa+FJRd7aIar9FHnAzTDWtOQWPdPmnulh8M7udjG
 YtFqMe2SscqER9FZwoml+Zx/gH0Q1Les+V77yjuPYT5IaF1lFZBMUtnnsCExTHWQOzbck6Y4O
 /TpSYepuHZn/LPaCpLDHGUGlPNfyaz4D1YQXOSK9MH9IYb+cuPiCd80C8TDoWo+45RkP31uWX
 7T/adyvQLWH9qjdMBNajmLGoB8gUf2fU71gAoFPlJYOhM4i/SyiW9gslbTogQeFgzo7ExH4aA
 e6FcIB5xYj0pZVIdMRzSXkp3zlFNo3gSG/pMLSabknGLF+tMerPqTiNRBPFJW7oYf9h16VTHy
 LQrmdumduECmrQzkB8wIRyq/o8SN943oGeFeP9i5k2Ukkakds9GpL7bAidHB+mzVpYGQ9L3+2
 PJmWdwzdnlaDCZED6X/vVN7bOQ65j0/rT3ubHgBFF1tyTj862eBYgdj8bqvqbeLsMC0zUq6XI
 Kdj0xS8y/ima5KKgdcCaB/XTwo9QVNd9RI2b69Xd4lPH/I3UdCysg2EVDd0dydQ2CRG7nO+Fj
 i9R1HfOQ7gzhNWIm8V5ZaekaNV/HHDZ6JSWJpjLdQvRJb3SPWCQhbEi2IpQ=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
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

