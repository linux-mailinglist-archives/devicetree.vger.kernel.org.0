Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08EE67032C3
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 18:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242224AbjEOQVA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 12:21:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242675AbjEOQUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 12:20:45 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB5E995
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:20:44 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 88585857D7;
        Mon, 15 May 2023 18:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684167643;
        bh=ontb/x9XZ0kw86B6BWIOYGU4b1G0OLncCYQ6sfzq2oM=;
        h=From:To:Cc:Subject:Date:From;
        b=e5/I6ZM3QKyGZ89NGohmDOZMQsh5f+bPakweKt3nhTPFjrOTMi4IsG8AlWbXYVdyG
         Id33jmoEWbUgs58ltdlwzaov8QxgIEZ0hk7EepNUV1sb9/no+GAvvMk1iEE8DhS0zz
         gFSKNdNOYpLIyuxMkd8a0RNFYIr/yG1gA8KRHRT+aavFUILj9XWAQcBSEMAHU7o01N
         aAaeVF72SDL0wfiVT2TT5+FgLw0zSVzvH6No9NaOXYUuI0kr0NzNGth67HTHkHv6vN
         5bKmQGgfWAgMQm4CLbUnpuj5WWDNtB+SY5oaXx//XZblOPCRmLdXIsNTEkk/RwlMb8
         2lD89RsL5tWJg==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Andrey Gusakov <andrey.gusakov@cogentembedded.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <rfoss@kernel.org>, dri-devel@lists.freedesktop.org
Subject: [PATCH] dt-bindings: display: bridge: tc358867: Document TC358867/TC9595 compatible
Date:   Mon, 15 May 2023 18:20:33 +0200
Message-Id: <20230515162033.66986-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
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

The TC358867/TC9595 devices are compatible with the predecessor TC358767.
Document compatible strings for the new devices, so they can be discerned
in board DTs. Update the title to match description in the process.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../bindings/display/bridge/toshiba,tc358767.yaml  | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index e1494b5007cba..0521261b04a9c 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -4,16 +4,24 @@
 $id: http://devicetree.org/schemas/display/bridge/toshiba,tc358767.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Toshiba TC358767 eDP bridge
+title: Toshiba TC358767/TC358867/TC9595 DSI/DPI/eDP bridge
 
 maintainers:
   - Andrey Gusakov <andrey.gusakov@cogentembedded.com>
 
-description: The TC358767 is bridge device which converts DSI/DPI to eDP/DP
+description: |
+  The TC358767/TC358867/TC9595 is bridge device which
+  converts DSI/DPI to eDP/DP .
 
 properties:
   compatible:
-    const: toshiba,tc358767
+    oneOf:
+      - items:
+          - enum:
+              - toshiba,tc358867
+              - toshiba,tc9595
+          - const: toshiba,tc358767
+      - const: toshiba,tc358767
 
   reg:
     enum:
-- 
2.39.2

