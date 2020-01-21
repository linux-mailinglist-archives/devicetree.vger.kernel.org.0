Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D412143C02
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2020 12:27:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729413AbgAUL1e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jan 2020 06:27:34 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:47580 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726052AbgAUL1e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jan 2020 06:27:34 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dafna)
        with ESMTPSA id CBB7F29255D
From:   Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, dafna.hirschfeld@collabora.com,
        helen.koike@collabora.com, ezequiel@collabora.com,
        kernel@collabora.com, dafna3@gmail.com,
        Dafna Hirschfeld <dafna.hirschfeld@gmail.com>
Subject: [PATCH] dt-bindings: convert rockchip-drm.txt to rockchip-drm.yaml
Date:   Tue, 21 Jan 2020 12:27:18 +0100
Message-Id: <20200121112718.18466-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dafna Hirschfeld <dafna.hirschfeld@gmail.com>

convert the binding file rockchip-drm.txt to yaml format.
This was tested and verified with:
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@gmail.com>
---
 .../display/rockchip/rockchip-drm.txt         | 19 ----------
 .../display/rockchip/rockchip-drm.yaml        | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
deleted file mode 100644
index 5707af89319d..000000000000
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Rockchip DRM master device
-================================
-
-The Rockchip DRM master device is a virtual device needed to list all
-vop devices or other display interface nodes that comprise the
-graphics subsystem.
-
-Required properties:
-- compatible: Should be "rockchip,display-subsystem"
-- ports: Should contain a list of phandles pointing to display interface port
-  of vop devices. vop definitions as defined in
-  Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
-
-example:
-
-display-subsystem {
-	compatible = "rockchip,display-subsystem";
-	ports = <&vopl_out>, <&vopb_out>;
-};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
new file mode 100644
index 000000000000..e4ef1a02196d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rockchip-drm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip DRM master device
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The Rockchip DRM master device is a virtual device needed to list all
+  vop devices or other display interface nodes that comprise the
+  graphics subsystem.
+
+properties:
+  compatible:
+    const: rockchip,display-subsystem
+
+  ports:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      Should contain a list of phandles pointing to display interface port
+      of vop devices. vop definitions as defined in
+      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
+
+required:
+  - compatible
+  - ports
+
+examples:
+  - |
+    display-subsystem {
+        compatible = "rockchip,display-subsystem";
+        ports = <&vopl_out>, <&vopb_out>;
+    };
-- 
2.17.1

