Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6074B4FB098
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 00:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231882AbiDJWHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 18:07:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237340AbiDJWHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 18:07:47 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A788043AE4
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 15:05:34 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1E3E883ABE;
        Mon, 11 Apr 2022 00:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649628333;
        bh=Gu6G5uINK49NeXJKTp7oQ7lxXIrzKu5MJ2DF2ERhN4M=;
        h=From:To:Cc:Subject:Date:From;
        b=IppMvkUaU3UVd/iwIChaz3ZVL8NNePNFToBWQsDVFha002A1q4TR04yatsvwU7D29
         IHndoDTuHUxbX57ML4hxXvJ8G4//kMpZTRuwI1E2ltlwxvQdaY48Djrm7iIfFcN9s9
         efLywC5QNzpEr7Kq9elFMQZcmgLvHcWwTR9eEl4+Gi4ihjpcnpNaBbGlEJilMIfsWM
         Dr+4EAOr4HNY1ZUcb8d2zSDYS7o4pP/pOMagES/bX6lpg3HF+QlTKDgbGBRY2xmwYa
         f3zUEDTdgCbNdBop3IKTJdebi0dyktVn18KrKhjCI/50CYn5cNOCqGvE888vlAsVu1
         0L3iG4y2pQVZA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Subject: [PATCH v3] dt-bindings: rcc: Add optional external ethernet RX clock properties
Date:   Mon, 11 Apr 2022 00:05:14 +0200
Message-Id: <20220410220514.21779-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
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

Describe optional external ethernet RX clock in the DT binding
to fix dtbs_check warnings like:

arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dt.yaml: rcc@50000000: 'assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>
To: devicetree@vger.kernel.org
Acked-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
---
V2: Add AB from Gabriel
V3: - Describe the optional clocks and clock names
    - Update commit message
---
 .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml        | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
index a0ae4867ed27e..7a251264582db 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -59,6 +59,14 @@ properties:
           - st,stm32mp1-rcc
       - const: syscon
 
+  clocks:
+    description:
+      Specifies the external RX clock for ethernet MAC.
+    maxItems: 1
+
+  clock-names:
+    const: ETH_RX_CLK/ETH_REF_CLK
+
   reg:
     maxItems: 1
 
-- 
2.35.1

