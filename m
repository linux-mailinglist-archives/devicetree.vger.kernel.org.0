Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 079DB298695
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 06:48:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1769600AbgJZFsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 01:48:13 -0400
Received: from hqnvemgate26.nvidia.com ([216.228.121.65]:12115 "EHLO
        hqnvemgate26.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1769588AbgJZFsN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 01:48:13 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9663070000>; Sun, 25 Oct 2020 22:47:51 -0700
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Oct
 2020 05:48:12 +0000
Received: from audio.nvidia.com (10.124.1.5) by mail.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server id 15.0.1473.3 via Frontend
 Transport; Mon, 26 Oct 2020 05:48:10 +0000
From:   Sameer Pujar <spujar@nvidia.com>
To:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
CC:     <p.zabel@pengutronix.de>, <kuninori.morimoto.gx@renesas.com>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 2/2] dt-bindings: Use graph.yaml reference in docs
Date:   Mon, 26 Oct 2020 11:17:46 +0530
Message-ID: <1603691266-32643-3-git-send-email-spujar@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1603691266-32643-1-git-send-email-spujar@nvidia.com>
References: <1603691266-32643-1-git-send-email-spujar@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603691271; bh=M/TcSXPDTe/NMZOLI7hcsZ02Sj/I4NQt0Zbt67pfXFk=;
        h=From:To:CC:Subject:Date:Message-ID:X-Mailer:In-Reply-To:
         References:MIME-Version:Content-Type;
        b=OmFcIuY1DobErumdd8agOOLGEyjNOPHtwjFp2fJxW9VloRykGXSzysYm4785AnSLR
         C3OLiPE3XmVyzbDI/IRlGLq5qvx0HvjyPEnZ2RQTFv5A/RtO/wpFhVPLxuQHyNfnaU
         S+qivEO6uN8xs1i6jMD6PlKTBvqzQ10SNsx229Y5d+1DMzZX+fUNbx8XONxSMgyZyI
         hCfKgtnauAfBoJMfEwXXstQl6I1/HB0NWW4sOvGJWK+Dez2QiLZdEVUAi9leEhgFzN
         6GeKcLzUU7A1FiToUMugeZko0nOi/kahLzaC4Az+YUBZwFX2uKFDYvzSnbSc36Cg55
         a4wBexn5FkzNw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since graph bindings are now converted to json-schema the references of
graph.txt are replaced with graph.yaml in various docs.

Signed-off-by: Sameer Pujar <spujar@nvidia.com>
---
 Documentation/devicetree/bindings/arm/coresight.txt                   | 2 +-
 Documentation/devicetree/bindings/connector/usb-connector.yaml        | 2 +-
 Documentation/devicetree/bindings/display/arm,hdlcd.txt               | 2 +-
 Documentation/devicetree/bindings/display/arm,komeda.txt              | 2 +-
 Documentation/devicetree/bindings/display/arm,malidp.txt              | 2 +-
 Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt | 2 +-
 Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt          | 2 +-
 Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt      | 2 +-
 .../devicetree/bindings/display/bridge/analogix,anx7814.yaml          | 2 +-
 Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt         | 2 +-
 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml   | 2 +-
 Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt          | 2 +-
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml      | 2 +-
 Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml         | 2 +-
 Documentation/devicetree/bindings/display/bridge/ps8640.yaml          | 2 +-
 Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml    | 2 +-
 Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml   | 2 +-
 Documentation/devicetree/bindings/display/bridge/tda998x.txt          | 2 +-
 .../devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml        | 2 +-
 Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt | 2 +-
 Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt        | 2 +-
 Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt      | 2 +-
 Documentation/devicetree/bindings/display/imx/ldb.txt                 | 2 +-
 Documentation/devicetree/bindings/display/ingenic,ipu.yaml            | 2 +-
 Documentation/devicetree/bindings/display/ingenic,lcd.yaml            | 4 ++--
 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt   | 2 +-
 Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt   | 2 +-
 Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt  | 2 +-
 Documentation/devicetree/bindings/display/mipi-dsi-bus.txt            | 2 +-
 Documentation/devicetree/bindings/display/msm/dpu.txt                 | 2 +-
 Documentation/devicetree/bindings/display/msm/dsi.txt                 | 2 +-
 Documentation/devicetree/bindings/display/msm/mdp4.txt                | 2 +-
 Documentation/devicetree/bindings/display/msm/mdp5.txt                | 2 +-
 Documentation/devicetree/bindings/display/panel/panel-common.yaml     | 2 +-
 Documentation/devicetree/bindings/display/renesas,du.txt              | 2 +-
 .../devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt       | 2 +-
 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt  | 2 +-
 Documentation/devicetree/bindings/display/st,stm32-dsi.yaml           | 2 +-
 Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml        | 2 +-
 Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml        | 2 +-
 Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml          | 2 +-
 Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt          | 2 +-
 Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt           | 2 +-
 Documentation/devicetree/bindings/display/truly,nt35597.txt           | 2 +-
 Documentation/devicetree/bindings/media/video-interfaces.txt          | 2 +-
 Documentation/devicetree/bindings/media/video-mux.txt                 | 2 +-
 Documentation/devicetree/bindings/sound/st,stm32-sai.txt              | 2 +-
 Documentation/devicetree/bindings/usb/mediatek,mtu3.txt               | 2 +-
 Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml               | 2 +-
 49 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index d711676..97a6c1c 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -141,7 +141,7 @@ Coresight components are interconnected to create a data path for the flow of
 trace data generated from the "sources" to their collection points "sink".
 Each coresight component must describe the "input" and "output" connections.
 The connections must be described via generic DT graph bindings as described
-by the "bindings/graph.txt", where each "port" along with an "endpoint"
+by the "bindings/graph.yaml", where each "port" along with an "endpoint"
 component represents a hardware port and the connection.
 
  * All output ports must be listed inside a child node named "out-ports"
diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 728f82d..f3e6df0 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -125,7 +125,7 @@ properties:
       power dual role.
 
   ports:
-    description: OF graph bindings (specified in bindings/graph.txt) that model
+    description: OF graph bindings (specified in bindings/graph.yaml) that model
       any data bus to the connector unless the bus is between parent node and
       the connector. Since a single connector can have multiple data buses every
       bus has an assigned OF graph port number as described below.
diff --git a/Documentation/devicetree/bindings/display/arm,hdlcd.txt b/Documentation/devicetree/bindings/display/arm,hdlcd.txt
index 78bc242..8308ed5b 100644
--- a/Documentation/devicetree/bindings/display/arm,hdlcd.txt
+++ b/Documentation/devicetree/bindings/display/arm,hdlcd.txt
@@ -19,7 +19,7 @@ Required properties:
 Required sub-nodes:
   - port: The HDLCD connection to an encoder chip. The connection is modeled
     using the OF graph bindings specified in
-    Documentation/devicetree/bindings/graph.txt.
+    Documentation/devicetree/bindings/graph.yaml.
 
 Optional properties:
   - memory-region: phandle to a node describing memory (see
diff --git a/Documentation/devicetree/bindings/display/arm,komeda.txt b/Documentation/devicetree/bindings/display/arm,komeda.txt
index 8513695..6111f21 100644
--- a/Documentation/devicetree/bindings/display/arm,komeda.txt
+++ b/Documentation/devicetree/bindings/display/arm,komeda.txt
@@ -26,7 +26,7 @@ pipeline node should provide properties:
 
 - port: each pipeline connect to an encoder input port. The connection is
     modeled using the OF graph bindings specified in
-    Documentation/devicetree/bindings/graph.txt
+    Documentation/devicetree/bindings/graph.yaml
 
 Optional properties:
   - memory-region: phandle to a node describing memory (see
diff --git a/Documentation/devicetree/bindings/display/arm,malidp.txt b/Documentation/devicetree/bindings/display/arm,malidp.txt
index 7a97a2b..6bfb75a 100644
--- a/Documentation/devicetree/bindings/display/arm,malidp.txt
+++ b/Documentation/devicetree/bindings/display/arm,malidp.txt
@@ -30,7 +30,7 @@ Required properties:
 Required sub-nodes:
   - port: The Mali DP connection to an encoder input port. The connection
     is modelled using the OF graph bindings specified in
-    Documentation/devicetree/bindings/graph.txt
+    Documentation/devicetree/bindings/graph.yaml
 
 Optional properties:
   - memory-region: phandle to a node describing memory (see
diff --git a/Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt b/Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt
index 46525ea..5bfaf1a 100644
--- a/Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt
+++ b/Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt
@@ -4,7 +4,7 @@ Required properties:
  - compatible: value should be "marvell,dove-lcd".
  - reg: base address and size of the LCD controller
  - interrupts: single interrupt number for the LCD controller
- - port: video output port with endpoints, as described by graph.txt
+ - port: video output port with endpoints, as described by graph.yaml
 
 Optional properties:
 
diff --git a/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt b/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt
index 0398aec..abedaef 100644
--- a/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt
+++ b/Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt
@@ -12,7 +12,7 @@ Required properties:
 
 Required children nodes:
  Children nodes are encoding available output ports and their connections
- to external devices using the OF graph reprensentation (see ../graph.txt).
+ to external devices using the OF graph reprensentation (see ../graph.yaml).
  At least one port node is required.
 
 Optional properties in grandchild nodes:
diff --git a/Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt b/Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt
index 659523f..321eff9 100644
--- a/Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt
+++ b/Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt
@@ -84,7 +84,7 @@ Optional properties:
 Required nodes:
 
 The ADV7511 has two video ports. Their connections are modelled using the OF
-graph bindings specified in Documentation/devicetree/bindings/graph.txt.
+graph bindings specified in Documentation/devicetree/bindings/graph.yaml.
 
 - Video port 0 for the RGB, YUV or DSI input. In the case of ADV7533/5, the
   remote endpoint phandle should be a reference to a valid mipi_dsi_host device
diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
index 3ba477a..d2f7960 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
@@ -47,7 +47,7 @@ properties:
       A node containing input and output port nodes with endpoint
       definitions as documented in
       Documentation/devicetree/bindings/media/video-interfaces.txt
-      Documentation/devicetree/bindings/graph.txt
+      Documentation/devicetree/bindings/graph.yaml
 
     properties:
       port@0:
diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt
index 525a4bf..1cbe052 100644
--- a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt
@@ -19,7 +19,7 @@ Optional properties:
 - reset-names: can contain "dsi_p_rst".
 
 Required subnodes:
-- ports: Ports as described in Documentation/devicetree/bindings/graph.txt.
+- ports: Ports as described in Documentation/devicetree/bindings/graph.yaml.
   2 ports are available:
   * port 0: this port is only needed if some of your DSI devices are
 	    controlled through  an external bus like I2C or SPI. Can have at
diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
index 74d675f..0d591e6 100644
--- a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
@@ -59,7 +59,7 @@ properties:
   ports:
     type: object
     description:
-      Ports as described in Documentation/devicetree/bindings/graph.txt.
+      Ports as described in Documentation/devicetree/bindings/graph.yaml.
 
     properties:
       '#address-cells':
diff --git a/Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt b/Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt
index 33bf981..6ae52d1 100644
--- a/Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt
+++ b/Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt
@@ -29,5 +29,5 @@ responsible for defining whether each property is required or optional.
 
 - ports: The connectivity of the DWC HDMI TX with the rest of the system is
   expressed in using ports as specified in the device graph bindings defined
-  in Documentation/devicetree/bindings/graph.txt. The numbering of the ports
+  in Documentation/devicetree/bindings/graph.yaml. The numbering of the ports
   is platform-specific.
diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index e5e3c72..6aad8fb 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -48,7 +48,7 @@ properties:
     type: object
     description: |
       This device has two video ports. Their connections are modeled using the
-      OF graph bindings specified in Documentation/devicetree/bindings/graph.txt
+      OF graph bindings specified in Documentation/devicetree/bindings/graph.yaml
     properties:
       '#address-cells':
         const: 1
diff --git a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
index a125b2d..290d961 100644
--- a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
@@ -88,7 +88,7 @@ properties:
     description:
       A node containing DSI input & output port nodes with endpoint
       definitions as documented in
-      Documentation/devicetree/bindings/graph.txt.
+      Documentation/devicetree/bindings/graph.yaml.
     properties:
       port@0:
         type: object
diff --git a/Documentation/devicetree/bindings/display/bridge/ps8640.yaml b/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
index 7e27cfc..12f9b28 100644
--- a/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ps8640.yaml
@@ -48,7 +48,7 @@ properties:
       A node containing DSI input & output port nodes with endpoint
       definitions as documented in
       Documentation/devicetree/bindings/media/video-interfaces.txt
-      Documentation/devicetree/bindings/graph.txt
+      Documentation/devicetree/bindings/graph.yaml
     properties:
       '#address-cells':
         const: 1
diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml
index e5b1639..8e1fba9 100644
--- a/Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml
@@ -52,7 +52,7 @@ properties:
     type: object
     description: |
       This device has two video ports. Their connections are modelled using the
-      OF graph bindings specified in Documentation/devicetree/bindings/graph.txt.
+      OF graph bindings specified in Documentation/devicetree/bindings/graph.yaml.
       Each port shall have a single endpoint.
 
     properties:
diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 3ddb35f..e4b6fd1 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -33,7 +33,7 @@ properties:
     type: object
     description: |
       This device has two video ports. Their connections are modeled using the
-      OF graph bindings specified in Documentation/devicetree/bindings/graph.txt.
+      OF graph bindings specified in Documentation/devicetree/bindings/graph.yaml.
     properties:
       '#address-cells':
         const: 1
diff --git a/Documentation/devicetree/bindings/display/bridge/tda998x.txt b/Documentation/devicetree/bindings/display/bridge/tda998x.txt
index f5a02f6..77cb953 100644
--- a/Documentation/devicetree/bindings/display/bridge/tda998x.txt
+++ b/Documentation/devicetree/bindings/display/bridge/tda998x.txt
@@ -7,7 +7,7 @@ Required properties;
 
 Required node:
   - port: Input port node with endpoint definition, as described
-        in Documentation/devicetree/bindings/graph.txt
+        in Documentation/devicetree/bindings/graph.yaml
 
 Optional properties:
   - interrupts: interrupt number and trigger type
diff --git a/Documentation/devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml b/Documentation/devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml
index 469ac4a..1de78e9 100644
--- a/Documentation/devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml
@@ -28,7 +28,7 @@ properties:
     type: object
     description: |
       This device has four video ports. Their connections are modeled using the
-      OF graph bindings specified in Documentation/devicetree/bindings/graph.txt.
+      OF graph bindings specified in Documentation/devicetree/bindings/graph.yaml.
 
       The device can operate in single-link mode or dual-link mode. In
       single-link mode, all pixels are received on port@0, and port@1 shall not
diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
index 583c5e9..1319f37 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt
@@ -19,7 +19,7 @@ Optional properties:
     - port@1: DPI input port
     - port@2: eDP/DP output port
 
-[1]: Documentation/devicetree/bindings/graph.txt
+[1]: Documentation/devicetree/bindings/graph.yaml
 [2]: Documentation/devicetree/bindings/media/video-interfaces.txt
 
 Example:
diff --git a/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt b/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
index d270bfe..285a698 100644
--- a/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
+++ b/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
@@ -12,7 +12,7 @@ Required properties:
   The input port connects to ADE output port with the reg value "0".
   The output port with the reg value "1", it could connect to panel or
   any other bridge endpoints.
-  See Documentation/devicetree/bindings/graph.txt for more device graph info.
+  See Documentation/devicetree/bindings/graph.yaml for more device graph info.
 
 A example of HiKey board hi6220 SoC and board specific DT entry:
 Example:
diff --git a/Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt b/Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt
index 305a0e7..082b302 100644
--- a/Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt
+++ b/Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt
@@ -26,7 +26,7 @@ Required properties:
   consumption.
 - port: the output port. This contains one endpoint subnode, with its
   remote-endpoint set to the phandle of the connected DSI input endpoint.
-  See Documentation/devicetree/bindings/graph.txt for more device graph info.
+  See Documentation/devicetree/bindings/graph.yaml for more device graph info.
 
 Optional properties:
 - dma-coherent: Present if dma operations are coherent.
diff --git a/Documentation/devicetree/bindings/display/imx/ldb.txt b/Documentation/devicetree/bindings/display/imx/ldb.txt
index 8e6e7d7..a324529 100644
--- a/Documentation/devicetree/bindings/display/imx/ldb.txt
+++ b/Documentation/devicetree/bindings/display/imx/ldb.txt
@@ -51,7 +51,7 @@ LVDS display as well as the fsl,data-mapping and fsl,data-width properties.
 Required properties:
  - reg : should be <0> or <1>
  - port: Input and output port nodes with endpoint definitions as defined in
-   Documentation/devicetree/bindings/graph.txt.
+   Documentation/devicetree/bindings/graph.yaml.
    On i.MX5, the internal two-input-multiplexer is used. Due to hardware
    limitations, only one input port (port@[0,1]) can be used for each channel
    (lvds-channel@[0,1], respectively).
diff --git a/Documentation/devicetree/bindings/display/ingenic,ipu.yaml b/Documentation/devicetree/bindings/display/ingenic,ipu.yaml
index 12064a8..1bd1e34 100644
--- a/Documentation/devicetree/bindings/display/ingenic,ipu.yaml
+++ b/Documentation/devicetree/bindings/display/ingenic,ipu.yaml
@@ -33,7 +33,7 @@ properties:
 
 patternProperties:
   "^ports?$":
-    description: OF graph bindings (specified in bindings/graph.txt).
+    description: OF graph bindings (specified in bindings/graph.yaml).
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/display/ingenic,lcd.yaml b/Documentation/devicetree/bindings/display/ingenic,lcd.yaml
index 768050f..ec32954 100644
--- a/Documentation/devicetree/bindings/display/ingenic,lcd.yaml
+++ b/Documentation/devicetree/bindings/display/ingenic,lcd.yaml
@@ -39,10 +39,10 @@ properties:
     minItems: 1
 
   port:
-    description: OF graph bindings (specified in bindings/graph.txt).
+    description: OF graph bindings (specified in bindings/graph.yaml).
 
   ports:
-    description: OF graph bindings (specified in bindings/graph.txt).
+    description: OF graph bindings (specified in bindings/graph.yaml).
     type: object
     properties:
       port@0:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
index dc1ebd13..7a59cb1 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
@@ -14,7 +14,7 @@ Required properties:
   See Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
 - clock-names: must contain "pixel", "engine", and "pll"
 - port: Output port node with endpoint definitions as described in
-  Documentation/devicetree/bindings/graph.txt. This port should be connected
+  Documentation/devicetree/bindings/graph.yaml. This port should be connected
   to the input port of an attached HDMI or LVDS encoder chip.
 
 Optional properties:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
index f06f24d..437410b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
@@ -16,7 +16,7 @@ Required properties:
 - phys: phandle link to the MIPI D-PHY controller.
 - phy-names: must contain "dphy"
 - port: Output port node with endpoint definitions as described in
-  Documentation/devicetree/bindings/graph.txt. This port should be connected
+  Documentation/devicetree/bindings/graph.yaml. This port should be connected
   to the input port of an attached DSI panel or DSI-to-eDP encoder chip.
 
 MIPI TX Configuration Module
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt
index 6b1c586..1c108a7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt
@@ -19,7 +19,7 @@ Required properties:
   configuration registers. For mt8173 this must be offset 0x900 into the
   MMSYS_CONFIG region: <&mmsys 0x900>.
 - ports: A node containing input and output port nodes with endpoint
-  definitions as documented in Documentation/devicetree/bindings/graph.txt.
+  definitions as documented in Documentation/devicetree/bindings/graph.yaml.
 - port@0: The input port in the ports node should be connected to a DPI output
   port.
 - port@1: The output port in the ports node should be connected to the input
diff --git a/Documentation/devicetree/bindings/display/mipi-dsi-bus.txt b/Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
index a336599..f942501 100644
--- a/Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
+++ b/Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
@@ -79,7 +79,7 @@ The graph bindings should be used to represent the multiple DSI busses that are
 connected to this peripheral. Each DSI host's output endpoint can be linked to
 an input endpoint of the DSI peripheral.
 
-[1] Documentation/devicetree/bindings/graph.txt
+[1] Documentation/devicetree/bindings/graph.yaml
 [2] Documentation/devicetree/bindings/media/video-interfaces.txt
 
 Examples
diff --git a/Documentation/devicetree/bindings/display/msm/dpu.txt b/Documentation/devicetree/bindings/display/msm/dpu.txt
index 551ae26..bc8964b 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu.txt
+++ b/Documentation/devicetree/bindings/display/msm/dpu.txt
@@ -60,7 +60,7 @@ Required properties:
   Each output port contains an endpoint that describes how it is connected to an
   external interface. These are described by the standard properties documented
   here:
-	Documentation/devicetree/bindings/graph.txt
+	Documentation/devicetree/bindings/graph.yaml
 	Documentation/devicetree/bindings/media/video-interfaces.txt
 
 	Port 0 -> DPU_INTF1 (DSI1)
diff --git a/Documentation/devicetree/bindings/display/msm/dsi.txt b/Documentation/devicetree/bindings/display/msm/dsi.txt
index b9a64d3..68a413e 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi.txt
+++ b/Documentation/devicetree/bindings/display/msm/dsi.txt
@@ -140,7 +140,7 @@ Optional properties:
 					If the property is not specified, then the default value is 14000 us.
 
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/graph.txt
+[2] Documentation/devicetree/bindings/graph.yaml
 [3] Documentation/devicetree/bindings/media/video-interfaces.txt
 [4] Documentation/devicetree/bindings/display/panel/
 
diff --git a/Documentation/devicetree/bindings/display/msm/mdp4.txt b/Documentation/devicetree/bindings/display/msm/mdp4.txt
index b07eeb3..bbe0d27 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp4.txt
+++ b/Documentation/devicetree/bindings/display/msm/mdp4.txt
@@ -26,7 +26,7 @@ Required properties:
   Each output port contains an endpoint that describes how it is connected to an
   external interface. These are described by the standard properties documented
   here:
-	Documentation/devicetree/bindings/graph.txt
+	Documentation/devicetree/bindings/graph.yaml
 	Documentation/devicetree/bindings/media/video-interfaces.txt
 
   The output port mappings are:
diff --git a/Documentation/devicetree/bindings/display/msm/mdp5.txt b/Documentation/devicetree/bindings/display/msm/mdp5.txt
index 43d1127..dc40d9c 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp5.txt
+++ b/Documentation/devicetree/bindings/display/msm/mdp5.txt
@@ -54,7 +54,7 @@ Required properties:
   Each output port contains an endpoint that describes how it is connected to an
   external interface. These are described by the standard properties documented
   here:
-	Documentation/devicetree/bindings/graph.txt
+	Documentation/devicetree/bindings/graph.yaml
 	Documentation/devicetree/bindings/media/video-interfaces.txt
 
   The availability of output ports can vary across SoC revisions:
diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
index cd6dc54..bf96bfc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
@@ -77,7 +77,7 @@ properties:
       the nature of those connections is specific to the panel type, the
       connectivity is expressed in a standard fashion using ports as specified
       in the device graph bindings defined in
-      Documentation/devicetree/bindings/graph.txt.
+      Documentation/devicetree/bindings/graph.yaml.
 
   ddc-i2c-bus:
     $ref: /schemas/types.yaml#/definitions/phandle
diff --git a/Documentation/devicetree/bindings/display/renesas,du.txt b/Documentation/devicetree/bindings/display/renesas,du.txt
index 7d65c24..282e27c 100644
--- a/Documentation/devicetree/bindings/display/renesas,du.txt
+++ b/Documentation/devicetree/bindings/display/renesas,du.txt
@@ -64,7 +64,7 @@ Optional properties:
 Required nodes:
 
 The connections to the DU output video ports are modeled using the OF graph
-bindings specified in Documentation/devicetree/bindings/graph.txt.
+bindings specified in Documentation/devicetree/bindings/graph.yaml.
 
 The following table lists for each supported model the port number
 corresponding to each DU output.
diff --git a/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
index cec2171..04a178b 100644
--- a/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
@@ -12,7 +12,7 @@ Required properties:
 	HDMI interrupt number
 - ports:
 	Contain one port node with endpoint definitions as defined in
-	Documentation/devicetree/bindings/graph.txt.
+	Documentation/devicetree/bindings/graph.yaml.
 - pinctrl-0, pinctrl-name:
 	Switch the iomux of HPD/CEC pins to HDMI function.
 
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
index aaf8c44..aa55fdb 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
@@ -31,7 +31,7 @@ Required nodes:
 The lvds has two video ports as described by
 	Documentation/devicetree/bindings/media/video-interfaces.txt
 Their connections are modeled using the OF graph bindings specified in
-	Documentation/devicetree/bindings/graph.txt.
+	Documentation/devicetree/bindings/graph.yaml.
 
 - video port 0 for the VOP input, the remote endpoint maybe vopb or vopl
 - video port 1 for either a panel or subsequent encoder
diff --git a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
index 327a14d..aa49138 100644
--- a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
@@ -56,7 +56,7 @@ properties:
       A node containing DSI input & output port nodes with endpoint
       definitions as documented in
       Documentation/devicetree/bindings/media/video-interfaces.txt
-      Documentation/devicetree/bindings/graph.txt
+      Documentation/devicetree/bindings/graph.yaml
     properties:
       port@0:
         type: object
diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 4f91854..02105be 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -65,7 +65,7 @@ properties:
   ports:
     type: object
     description:
-      Ports as described in Documentation/devicetree/bindings/graph.txt
+      Ports as described in Documentation/devicetree/bindings/graph.yaml
     properties:
       "#address-cells":
         const: 1
diff --git a/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
index 173730d5..d9b21df 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
@@ -98,7 +98,7 @@ properties:
   ports:
     type: object
     description:
-      Ports as described in Documentation/devicetree/bindings/graph.txt
+      Ports as described in Documentation/devicetree/bindings/graph.yaml
     properties:
       "#address-cells":
         const: 1
diff --git a/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
index 8f87b82..247262e 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
@@ -56,7 +56,7 @@ properties:
   port:
     type: object
     description:
-      Port as described in Documentation/devicetree/bindings/graph.txt.
+      Port as described in Documentation/devicetree/bindings/graph.yaml.
       The DSS DPI output port node
 
   max-memory-bandwidth:
diff --git a/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt b/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt
index e1ef295..64934ae 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt
+++ b/Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt
@@ -25,7 +25,7 @@ Video Ports
 -----------
 
 The DSS Core and the encoders have video port outputs. The structure of the
-video ports is described in Documentation/devicetree/bindings/graph.txt,
+video ports is described in Documentation/devicetree/bindings/graph.yaml,
 and the properties for the ports and endpoints for each encoder are
 described in the SoC's DSS binding documentation.
 
diff --git a/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt b/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt
index 3e64075..00778b6 100644
--- a/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt
+++ b/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt
@@ -33,7 +33,7 @@ Optional properties:
 Optional nodes:
 
  - port/ports: to describe a connection to an external encoder. The
-   binding follows Documentation/devicetree/bindings/graph.txt and
+   binding follows Documentation/devicetree/bindings/graph.yaml and
    supports a single port with a single endpoint.
 
  - See also Documentation/devicetree/bindings/display/tilcdc/panel.txt and
diff --git a/Documentation/devicetree/bindings/display/truly,nt35597.txt b/Documentation/devicetree/bindings/display/truly,nt35597.txt
index f39c77e..04d2e90 100644
--- a/Documentation/devicetree/bindings/display/truly,nt35597.txt
+++ b/Documentation/devicetree/bindings/display/truly,nt35597.txt
@@ -19,7 +19,7 @@ Required properties:
   This should be low for dual DSI and high for single DSI mode
 - ports: This device has two video ports driven by two DSIs. Their connections
   are modeled using the OF graph bindings specified in
-  Documentation/devicetree/bindings/graph.txt.
+  Documentation/devicetree/bindings/graph.yaml.
   - port@0: DSI input port driven by master DSI
   - port@1: DSI input port driven by secondary DSI
 
diff --git a/Documentation/devicetree/bindings/media/video-interfaces.txt b/Documentation/devicetree/bindings/media/video-interfaces.txt
index 3920f25..765eb52 100644
--- a/Documentation/devicetree/bindings/media/video-interfaces.txt
+++ b/Documentation/devicetree/bindings/media/video-interfaces.txt
@@ -63,7 +63,7 @@ documented in device DT binding documentation. This also includes port and
 endpoint nodes for the device, including unit-addresses and reg properties where
 relevant.
 
-Please also see Documentation/devicetree/bindings/graph.txt .
+Please also see Documentation/devicetree/bindings/graph.yaml .
 
 Required properties
 -------------------
diff --git a/Documentation/devicetree/bindings/media/video-mux.txt b/Documentation/devicetree/bindings/media/video-mux.txt
index 63b9dc9..3ad1d80 100644
--- a/Documentation/devicetree/bindings/media/video-mux.txt
+++ b/Documentation/devicetree/bindings/media/video-mux.txt
@@ -16,7 +16,7 @@ Required properties:
   the output port, all others are inputs.
 
 Optionally, #address-cells, #size-cells, and port nodes can be grouped under a
-ports node as described in Documentation/devicetree/bindings/graph.txt.
+ports node as described in Documentation/devicetree/bindings/graph.yaml.
 
 Example:
 
diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.txt b/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
index c42b91e..4b99394 100644
--- a/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
+++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
@@ -61,7 +61,7 @@ SAI subnodes Optional properties:
 
 The device node should contain one 'port' child node with one child 'endpoint'
 node, according to the bindings defined in Documentation/devicetree/bindings/
-graph.txt.
+graph.yaml.
 
 Example:
 sound_card {
diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
index a82ca43..00c5f02 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
@@ -69,7 +69,7 @@ if host mode is enabled. The DT binding details of xhci can be found in:
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
 
 The port would be added as subnode if use "usb-role-switch" property.
-	see graph.txt
+	see graph.yaml
 
 Example:
 ssusb: usb@11271000 {
diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
index 5fe9e62..aea48ae 100644
--- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
@@ -26,7 +26,7 @@ properties:
     maxItems: 1
 
   ports:
-    description: OF graph bindings (specified in bindings/graph.txt) that model
+    description: OF graph bindings (specified in bindings/graph.yaml) that model
       SS data bus to the SS capable connector.
     type: object
     properties:
-- 
2.7.4

