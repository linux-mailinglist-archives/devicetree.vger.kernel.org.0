Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5132B3D67FB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 22:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232411AbhGZTgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 15:36:54 -0400
Received: from phobos.denx.de ([85.214.62.61]:51846 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229646AbhGZTgx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 15:36:53 -0400
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6F4F2833A8;
        Mon, 26 Jul 2021 22:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1627330640;
        bh=rauE+1kO9XPBRX/theDn9mFQbfOaN4CD6lB/WP6DY/U=;
        h=From:To:Cc:Subject:Date:From;
        b=a8dvzvBnuuBQ+Z5hru1HfNYCStjR4jCZp+7+FiulPW4lbAKSJHYc3wnkfuHSQ7JVT
         3lASU5/zpxN7FtKZp7u4RD0x6lnmLUJCI+En6DE7qIOHDO0izv4AweKTAKFLeXIeEF
         mAGTqFIAMmQf0XtaXBn4IJ6/x+L/9iH003aWd2VSyJHOT363QTgVQR0CfcFwppIT+7
         4M6ZDCNGm9dSf2iSD0Z0WLjPhgRGwksd0VS42N4LgetkFQZ1qH2aWwSkio4SFgx3IW
         T64WF8nFq9u0E76Mf3+b3YKlVvNItAiy+6x2RNDMyhbf1Z/x1hpD7gjVxH1Ah9p8QX
         Gxww2Kdfsk+ow==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH V2 1/2] dt-bindings: display: bridge: lvds-codec: Document LVDS data mapping select
Date:   Mon, 26 Jul 2021 22:16:47 +0200
Message-Id: <20210726201648.396798-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Decoder input LVDS format is a property of the decoder chip or even
its strapping. Add DT property data-mapping the same way lvds-panel
does, to define the LVDS data mapping.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V2: Rebase on latest next
---
 .../bindings/display/bridge/lvds-codec.yaml   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 304a1367faaa7..33e0c08933b72 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -64,6 +64,15 @@ properties:
       - port@0
       - port@1
 
+  data-mapping:
+    enum:
+      - jeida-18
+      - jeida-24
+      - vesa-24
+    description: |
+      The color signals mapping order. See details in
+      Documentation/devicetree/bindings/display/panel/lvds.yaml
+
   powerdown-gpios:
     description:
       The GPIO used to control the power down line of this device.
@@ -71,6 +80,16 @@ properties:
 
   power-supply: true
 
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: lvds-decoder
+then:
+  properties:
+    data-mapping: false
+
 required:
   - compatible
   - ports
-- 
2.30.2

