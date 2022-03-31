Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F0154EDC9E
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230237AbiCaPWS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:22:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238176AbiCaPWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:22:18 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4987199516
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:20:30 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9A46B84217;
        Thu, 31 Mar 2022 17:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648740028;
        bh=ZIkR9SkRv0ul7ayt+CWTjtEITiUhjfkJtOrGuaZXy3Y=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=C49n/T//rc3C5s1yD0GW5EPxehLUFpYzL+yG61lXlTe2eOTSN8mn0FtaiSbnMQZmw
         ujfcC6twhVWzGM78SQG0gCGaQNOZulyfICxxGqGpa2haJcaEAK039wJDWWTYaHCVYq
         ETTPgQn3y+RDDJjHB4Y9vLn/jDPtiJWbyUaEJSzHrfZA25IGCVJyGunn7l+R7GIUJ5
         0X6wbx3RohvkpTeY83gBskAAW7dfp9QtofqdaGq2xxl841ZBV1AAVvnx+6Wr48GxLW
         RQ/EOclFYJibKXvhTYt31V0AhlsCzo5kyspUmSWIruuoQtUybVdYq4pzNt9CzMEQHh
         R+Uu9TKTxY7hw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     l.stach@pengutronix.de, robert.foss@linaro.org,
        Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH v6 01/11] dt-bindings: display: bridge: tc358867: Document DPI output support
Date:   Thu, 31 Mar 2022 17:19:42 +0200
Message-Id: <20220331151952.13221-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220331151952.13221-1-marex@denx.de>
References: <20220331151952.13221-1-marex@denx.de>
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

The TC358767/TC358867/TC9595 are all capable of operating in multiple
modes, DPI-to-(e)DP, DSI-to-(e)DP, DSI-to-DPI. Document support for the
DPI output port, which can now be connected both as input and output.

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
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
V2: - Rebase on next-20220217
V3: - No change
V4: - Add AB by Rob, RB/TB by Lucas
V5: - No change
V6: - No change
---
 .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml  | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index f1541cc05297..5cfda6f2ba69 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -61,8 +61,8 @@ properties:
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description: |
-            DPI input port. The remote endpoint phandle should be a
-            reference to a valid DPI output endpoint node
+            DPI input/output port. The remote endpoint phandle should be a
+            reference to a valid DPI output or input endpoint node.
 
       port@2:
         $ref: /schemas/graph.yaml#/properties/port
-- 
2.35.1

