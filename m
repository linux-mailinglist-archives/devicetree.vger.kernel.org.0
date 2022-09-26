Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B76E25EB31E
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 23:30:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbiIZVaf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 17:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbiIZVae (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 17:30:34 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D995B6D543
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 14:30:31 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A0EEA8499D;
        Mon, 26 Sep 2022 23:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664227829;
        bh=x/RYZgcv8T/IAq7rRBEgYG3sMPjFOuK4IdWa0GUYQ1Y=;
        h=From:To:Cc:Subject:Date:From;
        b=Ir97rBh9A7ih9JsZlbxCI7uV4dNOJAMSwt15PYtawOWF2TgycvhkIBTj5jFw8Yig2
         iTyUu0brZoizqRu2xafhH99Oeyi04YawzhnpC1BGO9u5iP8tFNnb0vd5Cno5U8jXD2
         ToaIYe579SPWdYp0FZts4k9ugjcFckMaMkyFyktkWLbYbg2rvzxKWTWIAJfSbeMUmn
         p4hYYZ2q4KjmvWIQEQ+QoC2MTTFkgx2Cf/RA30V+kta6aPeqLwp5I9hAM6kslQi1Ko
         KectZP1ze1RlvoCqlv+J1StMkOup3rC0AfCkcBLyZ8RC4ucQ5FwrAeOvprLkfYi4rt
         1SHka3sw24ofw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Patrick Delaunay <patrick.delaunay@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/2] dt-bindings: arm: stm32: Add compatible string for DH electronics DHCOR Testbench board
Date:   Mon, 26 Sep 2022 23:29:57 +0200
Message-Id: <20220926212958.505561-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible string for DHCOR Testbench board, which is a testbench
for testing of DHCOR SoM during manufacturing. This is effectively a
trimmed down version of AV96 board with CSI-2 bridge, HDMI bridge, WiFi,
Audio and LEDs removed and used as GPIOs instead.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Patrice Chotard <patrice.chotard@foss.st.com>
Cc: Patrick Delaunay <patrick.delaunay@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 4c605bccc474e..44f5c5855af8c 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -59,6 +59,12 @@ properties:
               - prt,prtt1s   # Protonic PRTT1S
           - const: st,stm32mp151
 
+      - description: DH STM32MP151 DHCOR SoM based Boards
+        items:
+          - const: dh,stm32mp151a-dhcor-testbench
+          - const: dh,stm32mp151a-dhcor-som
+          - const: st,stm32mp151
+
       - description: DH STM32MP153 DHCOM SoM based Boards
         items:
           - const: dh,stm32mp153c-dhcom-drc02
-- 
2.35.1

