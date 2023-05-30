Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3A9716D81
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 21:28:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231664AbjE3T2Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 15:28:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbjE3T2X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 15:28:23 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 882FDC9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:28:21 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DD90A84725;
        Tue, 30 May 2023 21:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685474899;
        bh=74yrgDjiy+nRid1MTrqtiXJbiSydFdg8y0JXfRIV7ro=;
        h=From:To:Cc:Subject:Date:From;
        b=a8K5m9EsuP9G8vO2eyB9UwOH0qA5AroM/V4xfUkZxvhcOsBFDnphryflPivDEtdo3
         aJxbUwMuVNDe4KQnKDYSu0IxMW1KvrQM3n/IKu78p5aGd1SHraazPX+YA6QydutHDx
         K8HUV6dbdMu0ceY19NFto3m9QxTNdK0dk6na0GwhP5sfpC0D+TeMaV0vl0Lmg3MdVw
         oDqAn9O+W2PursVD1z9/iyGa+rA5tWI1P/eyWiNRvWBnRg5mOJZ+axdLJOrJSuHvM4
         gEbmghxhrmrmtEoLjAY/emKGFXPgpOi30jlnTKUoy67e3X7OqN5mv0SKzZDzxQtBRC
         OMnLmcDAEOdIw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
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
        Robert Foss <rfoss@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: tc358762: Document reset-gpios
Date:   Tue, 30 May 2023 21:28:04 +0200
Message-Id: <20230530192805.648646-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This chip has one reset GPIO input, document it. The reset GPIO
is optional as it is sometimes not connected on some hardware.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml   | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
index 81ca3cbc7abed..6c1de0b217228 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
@@ -21,6 +21,9 @@ properties:
     maxItems: 1
     description: virtual channel number of a DSI peripheral
 
+  reset-gpios:
+    maxItems: 1
+
   vddc-supply:
     description: Regulator for 1.2V internal core power.
 
-- 
2.39.2

