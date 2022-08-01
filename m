Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7440C586BC6
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 15:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229943AbiHANSJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 09:18:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbiHANSJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 09:18:09 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C6BD2B267
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 06:18:07 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0184384488;
        Mon,  1 Aug 2022 15:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1659359885;
        bh=7u1j7bRHd+HUoYk010/j4ga0au7FJj/EVBZkBw4gTMQ=;
        h=From:To:Cc:Subject:Date:From;
        b=fK/E5KSxDerRpzmgY5dilY4OpNdzj4Bwz1l2oeRy7ETJfciIaql/zcSxLytsCtI7E
         yG5avFe2FV9oZ38kWoUWfs0xYryBhrG3VVzjkOqdgdVXhwjeLrkWzdK2y+18DD6c7K
         bQcdZqmryTERSIohCYYSUaN5nDzxNKwjHmcKVumL5L4FF7quqsGA54xYCviMe2O3Am
         8/L/24yaWsCgPci3tIk+P/x4ZCVjnOuqvLnAXo9uWKTUHZG+AiM94QzKZDMHwcSIYB
         qRgZrlmnP5ViJcTtM7zdc0XKpKEpmq1cu8YP4DHsykHKK3q+q8+02ew2GUBTEiIGk+
         lRqNj3lUUrEwg==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support for external REFCLK
Date:   Mon,  1 Aug 2022 15:17:46 +0200
Message-Id: <20220801131747.183041-1-marex@denx.de>
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

The ICN6211 is capable of deriving its internal PLL clock from either
MIPI DSI HS clock, external REFCLK clock, or even internal oscillator.
Currently supported is only the first option. Document support for
external REFCLK clock input in addition to that.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
---
 .../bindings/display/bridge/chipone,icn6211.yaml         | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
index 4f0b7c71313c3..18563ebed1a96 100644
--- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
@@ -24,6 +24,15 @@ properties:
     maxItems: 1
     description: virtual channel number of a DSI peripheral
 
+  clock-names:
+    const: "refclk"
+
+  clocks:
+    maxItems: 1
+    description: |
+        Optional external clock connected to REF_CLK input.
+        The clock rate must be in 10..154 MHz range.
+
   enable-gpios:
     description: Bridge EN pin, chip is reset when EN is low.
 
-- 
2.35.1

