Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC9494305B4
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 02:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236325AbhJQAOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 20:14:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235752AbhJQAOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 20:14:33 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0296C061767
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 17:12:24 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C1ED1831FD;
        Sun, 17 Oct 2021 02:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1634429540;
        bh=nMyyC1ffyhplrYOOI4OCiWtgLEJlx8kMwdoTQPMj+oM=;
        h=From:To:Cc:Subject:Date:From;
        b=sMM/xxQHz0cBPcFer8ZdARE2E7EA7ohTWJAPV/3UM4sZpMfGC7c+bjnAU19CXk4Li
         JIIkPb4Mha6i4mFEzCk2JAfHaK02kSKiQd6wd4kh3Kk12oROO9NtiCPwDcahjk+kgu
         +89ub+A5vZ/z4BNJ1iS1veuQyUzKoxPP/qO8IGEsT3fFucpwzTArVkXccbeDJ/O9wM
         QWYbwztvNE57IBpQ/eD/cJxJsxD09F03v6dbIIzzZdBBAFoX3IUyZFrUKvqP3/EPyH
         rXr7d87qM4yJcHaKsinuaPUCGyfrysyZPnvPw0TwDhOKa0WAPdZ/OvkjAeTFebhi2A
         n4e/r4aDvoJ2w==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: display: bridge: lvds-codec: Document pixel data sampling edge select
Date:   Sun, 17 Oct 2021 02:12:03 +0200
Message-Id: <20211017001204.299940-1-marex@denx.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The OnSemi FIN3385 Parallel-to-LVDS encoder has a dedicated input line to
select input pixel data sampling edge. Add DT property "pclk-sample", not
the same as the one used by display timings but rather the same as used by
media, to define the pixel data sampling edge.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V4: New patch split from combined V3
V5: Rebase on recent linux-next
---
 .../bindings/display/bridge/lvds-codec.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 1faae3e323a4..708de84ac138 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -79,6 +79,14 @@ properties:
       - port@0
       - port@1
 
+  pclk-sample:
+    description:
+      Data sampling on rising or falling edge.
+    enum:
+      - 0  # Falling edge
+      - 1  # Rising edge
+    default: 0
+
   powerdown-gpios:
     description:
       The GPIO used to control the power down line of this device.
@@ -102,6 +110,16 @@ then:
               properties:
                 data-mapping: false
 
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: lvds-encoder
+then:
+  properties:
+    pclk-sample: false
+
 required:
   - compatible
   - ports
-- 
2.33.0

