Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E8215EB5EF
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 01:45:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiIZXpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 19:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiIZXpR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 19:45:17 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 345E4BA8
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 16:45:16 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9686E84BEF;
        Tue, 27 Sep 2022 01:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664235914;
        bh=C8gWIDs4Jz5cItlEC5PdGI7V8drgK9GC2bW5sHDcyZ8=;
        h=From:To:Cc:Subject:Date:From;
        b=v1Z6T9uaBNPppQ/epfPscPQTDY0JANoqvraXOQRxfFfjeegZqOUAjIf8F7kC6BsVk
         x+vN94AmrhB+JB47OEz+/w/dBuGfCATnmOxQoN+Zfub8T1zYoOvSu2krYnYiA5WfCo
         76ZhezfE4prgnxANWhOmBYg3RcVsmhqZ1lMXgQK7dvHy4Sjd0RHO1ojx7KPrY0nOMt
         +jtksQYd0pYEB0DyWfGW1eRyGMZTaoWs6Xve0lRNQGkPwkIVBaoI/FiTwhm2g4OQ+a
         lZxcVYAp0pOiRYMfa+Df2FwrvtQpKDbk4TAnU2/GQW8qAWxJgpnnwvpR8il2gs1Ih0
         HYFIWt8pa0v9g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] dt-bindings: display: st,stm32-dsi: Handle data-lanes in DSI port node
Date:   Tue, 27 Sep 2022 01:45:01 +0200
Message-Id: <20220926234501.583115-1-marex@denx.de>
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

Handle 'data-lanes' property of the DSI output endpoint, it is possible
to describe DSI link with 1 or 2 data lanes this way.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Philippe Cornu <philippe.cornu@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Yannick Fertre <yannick.fertre@foss.st.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 .../bindings/display/st,stm32-dsi.yaml          | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
index 54f67cb510401..c488308d7be13 100644
--- a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
@@ -58,9 +58,20 @@ properties:
           DSI input port node, connected to the ltdc rgb output port.
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          DSI output port node, connected to a panel or a bridge input port"
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: |
+          DSI output port node, connected to a panel or a bridge input port.
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                items:
+                  - const: 1
+                  - const: 2
 
 required:
   - "#address-cells"
-- 
2.35.1

