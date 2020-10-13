Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E25C28CEB9
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 14:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728212AbgJMMvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 08:51:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727260AbgJMMvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 08:51:06 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85577C0613D0
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 05:51:06 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1kSJlE-0007le-2A; Tue, 13 Oct 2020 14:50:36 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1kSJlC-0005qL-Lp; Tue, 13 Oct 2020 14:50:34 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     linux-edac@vger.kernel.org
Cc:     Borislav Petkov <bp@alien8.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rrichter@marvell.com>,
        York Sun <york.sun@nxp.com>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 1/3] dt-bindings: edac: Add binding for L1/L2 error detection for Cortex A53/57
Date:   Tue, 13 Oct 2020 14:50:31 +0200
Message-Id: <20201013125033.4749-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013125033.4749-1-s.hauer@pengutronix.de>
References: <20201013125033.4749-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ARM Cortex-A53 and A57 CPUs support error detection for the L1/L2
caches. This patch adds a binding for the corresponding driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/edac/arm,cortex-a5x-edac.yaml    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/edac/arm,cortex-a5x-edac.yaml

diff --git a/Documentation/devicetree/bindings/edac/arm,cortex-a5x-edac.yaml b/Documentation/devicetree/bindings/edac/arm,cortex-a5x-edac.yaml
new file mode 100644
index 000000000000..de9325b688a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/edac/arm,cortex-a5x-edac.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/edac/arm,cortex-a5x-edac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM cortex A53/A57 EDAC bindings
+
+description: |+
+  This contains the binding to support error detection for the L1 and L2 caches
+  on ARM Cortex A53 and A57 cores.
+
+properties:
+  compatible:
+    items:
+      - const: arm,cortex-a53-edac
+      - const: arm,cortex-a57-edac
+
+  cpus:
+    minItems: 1
+    description: phandles to the cpu nodes this device handles
+
+required:
+  - compatible
+  - cpus
+
+examples:
+  - |
+    edac-a53 {
+        compatible = "arm,cortex-a53-edac";
+        cpus = <&cpu0 &cpu1 &cpu2 &cpu3>;
+    };
-- 
2.28.0

