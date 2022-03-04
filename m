Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6B8E4CCAB7
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 01:25:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236850AbiCDA01 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 19:26:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232429AbiCDA01 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 19:26:27 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85686F118C
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 16:25:40 -0800 (PST)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 46A6D83874;
        Fri,  4 Mar 2022 01:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1646353538;
        bh=KteTsNlUV4jO5Dv06xgPXWiQEZPHDJaIeMgVZpRUyNM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=AghBRlulhYU1xI4BuW7V3wZh4Pix3ELlDbUq5YuxxauUXqF1UDg8O4Shg7wP/qw0F
         OnWhudxzsM7Guss7/V/HoPgwDcIOf0RCxf/gg/KI0iJtYyq1ptvVZD/+cZtIEdqHzs
         y9XAqqI2OvSsFV9QyMn0UqUqjXf7W+SYeCnetoLmSMsfRgC5BLrjp7RszfiDZA6Jqf
         QeruqzVv9bVBqjg5OadcWXoj+uaKS1JnXXEszoMSCDknol7aFUpKpvTKYncsAFwfOF
         i9/7xis32DhsGahTAwq6/1hg5/qp1XzlzCxBbl4Q9t1ho4fBZ0ijv43+LC7bS82eu3
         SifToYUJmhbng==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH V3 01/13] dt-bindings: display: bridge: icn6211: Document DSI data-lanes property
Date:   Fri,  4 Mar 2022 01:24:56 +0100
Message-Id: <20220304002508.75676-2-marex@denx.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304002508.75676-1-marex@denx.de>
References: <20220304002508.75676-1-marex@denx.de>
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

It is necessary to specify the number of connected/used DSI data lanes when
using the DSI input port of this bridge. Document the 'data-lanes' property
of the DSI input port.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Maxime Ripard <maxime@cerno.tech>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V3: New patch
---
 .../display/bridge/chipone,icn6211.yaml        | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
index 62c3bd4cb28d8..f8cac721a7330 100644
--- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
@@ -41,10 +41,26 @@ properties:
 
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description:
           Video port for MIPI DSI input
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+                minItems: 1
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description:
-- 
2.34.1

