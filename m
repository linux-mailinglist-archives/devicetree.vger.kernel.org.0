Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9286553A57E
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245704AbiFAMyW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243444AbiFAMyV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:21 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7B9D6FD12
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:19 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MWRe1-1oJgGY33pj-00XtLj; Wed, 01 Jun 2022 14:54:01 +0200
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
Subject: [PATCH V2 02/11] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
Date:   Wed,  1 Jun 2022 14:53:35 +0200
Message-Id: <20220601125344.60602-3-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:hoeQwmxA/GVKZVg04Z1I4YVKsDf+Tkzv3IjzWT+YESlmWrUeb9z
 9hyjgyh6nKAr3O3XFJ/DWw8WMq+yqIPwdJqkkRyTUWVLA3b2ATAm65Ai+ZfI49/vxl7kYfs
 J//4xEK41NYKck92BinoO6pi7SvhlFm/qfXnYxGO7AirG2SbVL+Q1FD64Obn0bUV4ZwrCr7
 9mEXdQvu8rkTRpMk9c9og==
X-UI-Out-Filterresults: notjunk:1;V03:K0:/co0h6Oweko=:CiTZM66RBCzXZ15gu8rYWN
 ux+T+gTbIkzFXpcCKQ5x7kYxXZUtgSLoz414nKkf+OpyZsXkFN86p0kjEC6fdiq4s9gqou9tW
 GxIqV0fxRO8sFTtBmauXlvPM4VA4NRVwcpLdvGvZWBOZwfZLZO5zzWYJQxSNUjVbx0rzeN3De
 mX295BChcEiRCpVEq2IXEcDESBIwIztzbkcwoivGi0pNiClSnsp7gV/YZFxIvpKlBV7J3IT5O
 xgHLCoJS2jn+Y56RvEgsydr/mpUDuCD7KHc6zSPZwiicRbjGFQGfP27DIjdNj6QZhr2D88wip
 sqWrBaC2plTEMzDmA6ya/eiwmALcHxj1aSegMIjLi7aFB0VYdK8vcGTF3tNIvpNhG90wvCAtC
 mnncLiw6pOtCyjuajh5Aa3ZdH9HQaq7dlm7fH65dAVLkW37iSH6Vkco+cRf+OCZRhoLiZtMsC
 bcMQdlKoZM3mMtqTxXyxWaYuICh/tBvdQucxvyWEDHCxTrvy6Fk2uJ7jHUE0X40heKnJm8iJw
 K8MSGhMCFVdMtVDS13LI6xiUuh+czoWg2eni/2g3RcO1TPtUUEKFVcxzAAKhFhbDVnNrRV9jy
 qysDDB/misMt5/pSq8GlZGGl8xFrRhuBKDdbPSKcuBOdOKHCvZFIn3g8RCHz+QUe/LTkQHlnq
 iLnDIFdtIVfLT11CpXKCXHj50Ma+mQL+BO7FTGj37xjksRh0hA6PcS4IMahnwVAz4TRe/yJiM
 foDa2QOioOdSyHDOt2wjKk1Tw/5WYaCYv1167tM6tuyRqMEntPZrChuz/3M=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
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

