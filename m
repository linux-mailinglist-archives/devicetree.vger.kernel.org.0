Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EFFF580195
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 17:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236136AbiGYPUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 11:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236153AbiGYPUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 11:20:09 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7086A1EEFF
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 08:17:26 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5684C840F9;
        Mon, 25 Jul 2022 17:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1658762243;
        bh=s/nvNtWsvkUUPVDwDBds48qJRMI131j7hYdOlu7aNOE=;
        h=From:To:Cc:Subject:Date:From;
        b=WtlffziDyMWe39qf1WYglJgjNPZWAEN2DxPkRO3z/lxyIjsqpQcdiYK8R4rExLVcN
         MrN3dobXBDe4wav9teBIzSKEd7smWWmOVCia0DALHoeSWpehRNi4JJkUyshz03oQsS
         MF3io9IeQxBpPzH7ZnrfhKEJ+jyGMu9es1VcwU5b/yMYpI6hlBAzZHcj40W4WcowcL
         vBpPao+W0NtOo6jI7wrt3N9O6NhEGQmrcx2/woocfoo4/ZzpwRUXdNV66fkCLMm9Ly
         7bL/M4eC7bS4ieBYmuvqk8hrJ+QG4ePNs4p7Z1cczxdXVBofXU6oPmS5ypdQSm+Fpy
         J42kJPXI2j3JA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: panel: sitronix,st7701: Add Densitron DMT028VGHMCMI-1A TFT
Date:   Mon, 25 Jul 2022 17:17:02 +0200
Message-Id: <20220725151703.319939-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add compatible string for Densitron DMT028VGHMCMI-1A TFT matrix.
This is a DSI-attached 480x640 2.83 inch panel.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: devicetree@vger.kernel.org
---
 .../devicetree/bindings/display/panel/sitronix,st7701.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
index 6dff59fe4be14..34d5e20c6cb32 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
@@ -17,6 +17,9 @@ description: |
   Techstar TS8550B is 480x854, 2-lane MIPI DSI LCD panel which has
   inbuilt ST7701 chip.
 
+  Densitron DMT028VGHMCMI-1A is 480x640, 2-lane MIPI DSI LCD panel
+  which has built-in ST7701 chip.
+
 allOf:
   - $ref: panel-common.yaml#
 
@@ -24,6 +27,7 @@ properties:
   compatible:
     items:
       - enum:
+          - densitron,dmt028vghmcmi-1a
           - techstar,ts8550b
       - const: sitronix,st7701
 
-- 
2.35.1

