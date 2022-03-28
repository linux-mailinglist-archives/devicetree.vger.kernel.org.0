Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4618A4EA2C1
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 00:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiC1WH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 18:07:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbiC1WH5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 18:07:57 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A9F294A23
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 15:01:10 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0B48E83F8E;
        Mon, 28 Mar 2022 23:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648503832;
        bh=ikFbxRLY6YsnW1GtcB9kRDAwdtkQHHF08J/T434EDuw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MpLDSmBtW1L9xphdzK45PgmUS1V8J+fivcXODOIfRiOZyWQGDcOpwxtXqI3vT5Hsn
         34eK1VNLqozP1KNpRWm5SZuZ4Oa5dPR+4UCi2JoLkTCbm5YV0GdltP74HcaumdVLKk
         prd/2s802HDuEQ6d7q3WKomS+tITAzUfAFK+d6Vuy1jljNJzgIeSMY4VweQizee3el
         WBw+ecZqLrCv8+rk0Unl+J+HMQh9lbTiQo7/Y3LxfCJatDgbcWIXaT8MsltxY6sHUg
         U82ML5PdTnq8GOvEATws52+K3/wuJf6XiWhksSzq87HPIQ1clelU6eqsSlqKL+ZW2V
         AS0dsKol3ShHA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     l.stach@pengutronix.de, Marek Vasut <marex@denx.de>,
        Rob Herring <robh@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH v4 02/11] dt-bindings: display: bridge: tc358867: Document DSI data-lanes property
Date:   Mon, 28 Mar 2022 23:43:15 +0200
Message-Id: <20220328214324.252472-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328214324.252472-1-marex@denx.de>
References: <20220328214324.252472-1-marex@denx.de>
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

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Lucas Stach <l.stach@pengutronix.de> # In both DPI to eDP and DSI to DPI mode.
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Maxime Ripard <maxime@cerno.tech>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V3: - New patch
V4: - Add RB by Rob, AB/TB by Lucas
---
 .../display/bridge/toshiba,tc358767.yaml       | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 5cfda6f2ba69c..ed280053ec62b 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -53,11 +53,27 @@ properties:
 
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: |
             DSI input port. The remote endpoint phandle should be a
             reference to a valid DSI output endpoint node
 
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
         description: |
-- 
2.35.1

