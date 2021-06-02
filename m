Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8A639949C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 22:36:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbhFBUiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 16:38:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhFBUiR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 16:38:17 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5DBDC06174A
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 13:36:33 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B752082C9B;
        Wed,  2 Jun 2021 22:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1622666190;
        bh=hfU/yKi5mpOcGpZeDTw2N2X5DFbPyKVPDaJRQc3RheI=;
        h=From:To:Cc:Subject:Date:From;
        b=sE9ZbiRftMBOHSLaFm1oQbMFSCMgi4DOcyh7GgReWUL31RzlBBBqACjvfm2lSkvkP
         u0j9D1NtMFSTiUvQ+9eMBZHOweDFSx60yJ4FwiacTOfvpaU3IBSZ5wXYBBti4A5uCp
         4g6IBToyYJ13ErPVYGKiMe9ZLbs72DT9FpJsF2riBaI3p3HeBI14b25X8YQ/7pdWYd
         hTjtqNLA2OiijMRx0ElzaogYy3c0CSJ14fKS3Je8KGagbKpdN24aiwCocill2nHArn
         RHPzqG4jr04ylS2R+w5bqK4gcl3dJbg71lljUnDvBQchGcrBja//s5k0ozRwERZt9+
         NbzYwYOQ0UCbw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     ch@denx.de, Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Antonio Borneo <antonio.borneo@st.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philippe Cornu <philippe.cornu@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Vincent Abriou <vincent.abriou@st.com>,
        Yannick Fertre <yannick.fertre@st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH V5 1/2] dt-bindings: display: bridge: lvds-codec: Document pixel data sampling edge select
Date:   Wed,  2 Jun 2021 22:36:07 +0200
Message-Id: <20210602203608.419192-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The OnSemi FIN3385 Parallel-to-LVDS encoder has a dedicated input line to
select input pixel data sampling edge. Add DT property "pclk-sample", not
the same as the one used by display timings but rather the same as used by
media, to define the pixel data sampling edge.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Antonio Borneo <antonio.borneo@st.com>
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Philippe Cornu <philippe.cornu@st.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Vincent Abriou <vincent.abriou@st.com>
Cc: Yannick Fertre <yannick.fertre@st.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: dri-devel@lists.freedesktop.org
---
V4: New patch split from combined V3
V5: Move the pclk-sample into port@0 endpoint
---
 .../bindings/display/bridge/lvds-codec.yaml   | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 304a1367faaa7..cacafa61e3f52 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -54,6 +54,14 @@ properties:
           For LVDS encoders, port 0 is the parallel input
           For LVDS decoders, port 0 is the LVDS input
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              pclk-sample: true
+
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description: |
@@ -71,6 +79,22 @@ properties:
 
   power-supply: true
 
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: lvds-encoder
+then:
+  properties:
+    ports:
+      properties:
+        port@0:
+          properties:
+            endpoint:
+              properties:
+                pclk-sample: false
+
 required:
   - compatible
   - ports
-- 
2.30.2

