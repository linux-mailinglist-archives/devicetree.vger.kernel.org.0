Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2EA55ADC4
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 02:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233580AbiFZAVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 20:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbiFZAVX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 20:21:23 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 058F713E8F
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 17:21:22 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A4EDE81A02;
        Sun, 26 Jun 2022 02:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1656202879;
        bh=2+VzDUUThiI1ROiEciRv+pLrxIIEoD+pHIMT2yd+Fxs=;
        h=From:To:Cc:Subject:Date:From;
        b=I3EuzIGCf3zrPzZ7AubGI3pt16yq5UUcQt+bFa0MnP6q2s/US/7mKYkSzCzDxUtj8
         llAqJ7uvNvtNHUbGzuSD+6Cx/Pgp/3i1hdd/LqpT5pgklzK7GiVklBCZrXW9oYT11f
         N05DnQ58C1gN8Y7mIRzIQfNNrNNC74fvs1W+dGFoormsfOF0ZHRsfeNIb9oBcAu5xG
         ftmKHZQ0ijzqKLDt1YUHBLD4FVkM++iIj1e7PQVsKIYxb2z+50bFPkXaIs8sKm7cnj
         95G5Iqx/lLox0SWBZGqqaXsbLEznYOJCBxPk2K8mxfvWTgQEzmNnMuFa2oyc1FAtGs
         9fQi37PBvhlVg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Patrice Chotard <patrice.chotard@st.com>,
        Patrick Delaunay <patrick.delaunay@st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 1/7] dt-bindings: arm: stm32: Add compatible string for DH electronics DHCOR DRC Compact
Date:   Sun, 26 Jun 2022 02:20:59 +0200
Message-Id: <20220626002105.198854-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible string for DH electronics STM32MP15xx DHCOR on DRC Compact
carrier board into YAML DT binding document. This system is a general purpose
DIN Rail Controller design.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: Split DHCOM and DHCOR SoM entries
V3: No change
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 8b31565fee591..4c605bccc474e 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -59,12 +59,18 @@ properties:
               - prt,prtt1s   # Protonic PRTT1S
           - const: st,stm32mp151
 
-      - description: DH STM32MP153 SoM based Boards
+      - description: DH STM32MP153 DHCOM SoM based Boards
         items:
           - const: dh,stm32mp153c-dhcom-drc02
           - const: dh,stm32mp153c-dhcom-som
           - const: st,stm32mp153
 
+      - description: DH STM32MP153 DHCOR SoM based Boards
+        items:
+          - const: dh,stm32mp153c-dhcor-drc-compact
+          - const: dh,stm32mp153c-dhcor-som
+          - const: st,stm32mp153
+
       - items:
           - enum:
               - shiratech,stm32mp157a-iot-box # IoT Box
-- 
2.35.1

