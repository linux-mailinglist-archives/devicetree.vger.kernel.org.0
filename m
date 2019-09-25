Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13570BE944
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 01:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728907AbfIYX4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 19:56:04 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:59904 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728647AbfIYX4E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 19:56:04 -0400
Received: from pendragon.bb.dnainternet.fi (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 55A6397A;
        Thu, 26 Sep 2019 01:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1569455761;
        bh=LsxsQWRMWEie0cMQDmjcsjqNHiEuOtzzJDQ7Itfkjzs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=NOWd+y9dfBkrDuDWulKfhZFlNCdN+eYq+s8ErZlHtrTTr8DRW1B9n5vz9dcSmVefA
         eLpyG649kPMP1IbA9WypT88iGpUUctqISToSK4sfkZAg+zRDhZQTY6XXmOmVQzhMNH
         qUqWwVVR24zZF0uNoOyaE4y8IMcGxcfUy0hYaVco=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Satish Kumar Nagireddy <SATISHNA@xilinx.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v9 1/4] dt-bindings: display: xlnx: Add ZynqMP DP subsystem bindings
Date:   Thu, 26 Sep 2019 02:55:41 +0300
Message-Id: <20190925235544.11524-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com>
References: <20190925235544.11524-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Hyun Kwon <hyun.kwon@xilinx.com>

The bindings describe the ZynqMP DP subsystem. They don't support the
interface with the programmable logic (FPGA) or audio yet.

Signed-off-by: Hyun Kwon <hyun.kwon@xilinx.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v8:

- Convert to yaml
- Rename aclk to dp_apb_clk
---
 .../display/xlnx/xlnx,zynqmp-dpsub.yaml       | 153 ++++++++++++++++++
 1 file changed, 153 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml

diff --git a/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
new file mode 100644
index 000000000000..e72264a5215d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/xlnx/xlnx,zynqmp-dpsub.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx ZynqMP DisplayPort Subsystem
+
+description: |
+  The DisplayPort subsystem of Xilinx ZynqMP (Zynq UltraScale+ MPSoC)
+  implements the display and audio pipelines based on the DisplayPort v1.2
+  standard. The subsystem includes multiple functional blocks as below:
+
+               +------------------------------------------------------------+
+  +--------+   | +----------------+     +-----------+                       |
+  | DPDMA  | --->|                | --> |   Video   | Video +-------------+ |
+  | 4x vid |   | |                |     | Rendering | -+--> |             | |   +------+
+  | 2x aud |   | |  Audio/Video   | --> | Pipeline  |  |    | DisplayPort |---> | PHY0 |
+  +--------+   | | Buffer Manager |     +-----------+  |    |   Source    | |   +------+
+               | |    and STC     |     +-----------+  |    | Controller  | |   +------+
+  Live Video --->|                | --> |   Audio   | Audio |             |---> | PHY1 |
+               | |                |     |   Mixer   | --+-> |             | |   +------+
+  Live Audio --->|                | --> |           |  ||   +-------------+ |
+               | +----------------+     +-----------+  ||                   |
+               +---------------------------------------||-------------------+
+                                                       vv
+                                                 Blended Video and
+                                                 Mixed Audio to PL
+
+  The Buffer Manager interacts with external interface such as DMA engines or
+  live audio/video streams from the programmable logic. The Video Rendering
+  Pipeline blends the video and graphics layers and performs colorspace
+  conversion. The Audio Mixer mixes the incoming audio streams. The DisplayPort
+  Source Controller handles the DisplayPort protocol and connects to external
+  PHYs.
+
+  The subsystem supports 2 video and 2 audio streams, and various pixel formats
+  and depths up to 4K@30 resolution.
+
+  Please refer to "Zynq UltraScale+ Device Technical Reference Manual"
+  (https://www.xilinx.com/support/documentation/user_guides/ug1085-zynq-ultrascale-trm.pdf)
+  for more details.
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+
+properties:
+  compatible:
+    const: xlnx,zynqmp-dpsub-1.7
+
+  reg:
+    maxItems: 4
+  reg-names:
+    items:
+      - const: dp
+      - const: blend
+      - const: av_buf
+      - const: aud
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    description:
+      The AXI clock and at least one video clock are mandatory, the audio clock
+      optional.
+    minItems: 2
+    maxItems: 4
+    items:
+      - description: AXI clock
+      - description: Audio clock
+      - description: Non-live video clock (from Processing System)
+      - description: Live video clock (from Programmable Logic)
+  clock-names:
+    minItems: 2
+    maxItems: 4
+    items:
+      - const: dp_apb_clk
+      - const: dp_aud_clk
+      - const: dp_vtc_pixel_clk_in
+      - const: dp_live_video_in_clk
+
+  power-domains:
+    maxItems: 1
+
+  dmas:
+    maxItems: 4
+    items:
+      - description: Video layer, plane 0 (RGB or luma)
+      - description: Video layer, plane 1 (U/V or U)
+      - description: Video layer, plane 2 (V)
+      - description: Graphics layer
+  dma-names:
+    items:
+      - const: vid0
+      - const: vid1
+      - const: vid2
+      - const: gfx0
+
+  phys:
+    description: PHYs for the DP data lanes
+    minItems: 1
+    maxItems: 2
+  phy-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: dp-phy0
+      - const: dp-phy1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - clocks
+  - clock-names
+  - power-domains
+  - dmas
+  - dma-names
+  - phys
+  - phy-names
+
+additionalProperties: false
+
+examples:
+  - |
+    display@fd4a0000 {
+      compatible = "xlnx,zynqmp-dpsub-1.7";
+      reg = <0x0 0xfd4a0000 0x0 0x1000>,
+            <0x0 0xfd4aa000 0x0 0x1000>,
+            <0x0 0xfd4ab000 0x0 0x1000>,
+            <0x0 0xfd4ac000 0x0 0x1000>;
+      reg-names = "dp", "blend", "av_buf", "aud";
+      interrupts = <0 119 4>;
+      interrupt-parent = <&gic>;
+
+      clock-names = "dp_apb_clk", "dp_aud_clk", "dp_live_video_in_clk";
+      clocks = <&dp_aclk>, <&clkc 17>, <&si570_1>;
+
+      power-domains = <&pd_dp>;
+
+      dma-names = "vid0", "vid1", "vid2", "gfx0";
+      dmas = <&xlnx_dpdma 0>,
+             <&xlnx_dpdma 1>,
+             <&xlnx_dpdma 2>,
+             <&xlnx_dpdma 3>;
+
+      phys = <&lane1>, <&lane0>;
+      phy-names = "dp-phy0", "dp-phy1";
+    };
+
+...
-- 
Regards,

Laurent Pinchart

