Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3FA1344895
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 16:05:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbhCVPFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 11:05:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:36224 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230182AbhCVPEl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Mar 2021 11:04:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 806A36192E;
        Mon, 22 Mar 2021 15:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1616425481;
        bh=6aNu+y/gscX1PhxE9G8qUuQ/7rZGFNAjViEikyMdts0=;
        h=From:To:Cc:Subject:Date:From;
        b=NgsnHaRlUJrAyeTx71Q6I9gUFq3vVdmdTiyf//lnp+WgV+irANNPUfRbn1dE+K/7W
         L11mUqO4HiyKgUxF6+ECMipkjjl31mC3XLzK4Rush9UGamO+i9FP9HsCfeHMBGXnos
         WzX0OaudZRgwcrAdqGYXPEwl2asY8xskxnijCePp6Yeapn9N268gcFEKjx65mLdVzO
         6NW+KLFTJCFWK8+vmvNsKHTRCRIC/rdb5CFc0pHWgEUDhJsA2Tr/LjdmH84K7M3FQe
         pnAW931rqPbXu1Pi+3gBwEAxtMOzq2DLL9qZQ0MPvoo2XiGrB5bphEfed5BczLpC7a
         G+0Xcq+Ut1HDQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: documentation: add clock bindings information for N5X
Date:   Mon, 22 Mar 2021 10:04:06 -0500
Message-Id: <20210322150406.2411162-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the N5X clock bindings.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../devicetree/bindings/clock/intel,n5x.yaml  | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/intel,n5x.yaml

diff --git a/Documentation/devicetree/bindings/clock/intel,n5x.yaml b/Documentation/devicetree/bindings/clock/intel,n5x.yaml
new file mode 100644
index 000000000000..9f022cff57ea
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/intel,n5x.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/intel,agilex.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel SoCFPGA eASIC N5X platform clock controller binding
+
+maintainers:
+  - Dinh Nguyen <dinguyen@kernel.org>
+
+description:
+  The Intel N5X Clock controller is an integrated clock controller, which
+  generates and supplies to all modules.
+
+properties:
+  compatible:
+    const: intel,n5x-clkmgr
+
+  '#clock-cells':
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  # Clock controller node:
+  - |
+    clkmgr: clock-controller@ffd10000 {
+      compatible = "intel,n5x-clkmgr";
+      reg = <0xffd10000 0x1000>;
+      clocks = <&osc1>;
+      #clock-cells = <1>;
+    };
+...
-- 
2.25.1

