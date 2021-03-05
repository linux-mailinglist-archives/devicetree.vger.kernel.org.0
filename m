Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1BF332EB77
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 13:45:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233116AbhCEMo1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 07:44:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233713AbhCEMoB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 07:44:01 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68A13C061756
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 04:44:00 -0800 (PST)
Received: from guri.fritz.box (p200300c7cf38380008df3f9b2ff1d151.dip0.t-ipconnect.de [IPv6:2003:c7:cf38:3800:8df:3f9b:2ff1:d151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: dafna)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 040811F46A73;
        Fri,  5 Mar 2021 12:43:57 +0000 (GMT)
From:   Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     a.hajda@samsung.com, narmstrong@baylibre.com,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@siol.net, airlied@linux.ie, daniel@ffwll.ch,
        chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
        enric.balletbo@collabora.com, drinkcat@chromium.org,
        hsinyi@chromium.org, kernel@collabora.com, dafna3@gmail.com,
        dafna.hirschfeld@collabora.com, robh+dt@kernel.org
Subject: [PATCH v5 1/2] dt-bindings: usb: add analogix,anx7688.yaml
Date:   Fri,  5 Mar 2021 13:43:50 +0100
Message-Id: <20210305124351.15079-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210305124351.15079-1-dafna.hirschfeld@collabora.com>
References: <20210305124351.15079-1-dafna.hirschfeld@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ANX7688 is a USB Type-C port controller with a MUX. It converts HDMI 2.0 to
DisplayPort 1.3 Ultra-HDi (4096x2160p60).
The integrated crosspoint switch (the MUX) supports USB 3.1 data transfer
along with the DisplayPort Alternate Mode signaling over USB Type-C.
Additionally, an on-chip microcontroller (OCM) is available to manage the
signal switching, Channel Configuration (CC) detection, USB Power
Delivery (USB-PD), Vendor Defined Message (VDM) protocol support and other
functions as defined in the USB TypeC and USB Power Delivery
specifications.

ANX7688 is found on Acer Chromebook R13 (elm) and on
Pine64 PinePhone.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../bindings/usb/analogix,anx7688.yaml        | 177 ++++++++++++++++++
 1 file changed, 177 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/analogix,anx7688.yaml

diff --git a/Documentation/devicetree/bindings/usb/analogix,anx7688.yaml b/Documentation/devicetree/bindings/usb/analogix,anx7688.yaml
new file mode 100644
index 000000000000..6c4dd6b4b28b
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/analogix,anx7688.yaml
@@ -0,0 +1,177 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/analogix,anx7688.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analogix ANX7688 Type-C Port Controller with HDMI to DP conversion
+
+maintainers:
+  - Nicolas Boichat <drinkcat@chromium.org>
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+
+description: |
+  ANX7688 is a USB Type-C port controller with a MUX. It converts HDMI 2.0 to
+  DisplayPort 1.3 Ultra-HDi (4096x2160p60).
+  The integrated crosspoint switch (the MUX) supports USB 3.1 data transfer along with
+  the DisplayPort Alternate Mode signaling over USB Type-C. Additionally,
+  an on-chip microcontroller (OCM) is available to manage the signal switching,
+  Channel Configuration (CC) detection, USB Power Delivery (USB-PD), Vendor
+  Defined Message (VDM) protocol support and other functions as defined in the
+  USB TypeC and USB Power Delivery specifications.
+
+
+properties:
+  compatible:
+    const: analogix,anx7688
+
+  reg:
+    maxItems: 1
+
+  avdd33-supply:
+    description: 3.3V Analog core supply voltage.
+
+  dvdd18-supply:
+    description: 1.8V Digital I/O supply voltage.
+
+  avdd18-supply:
+    description: 1.8V Analog core power supply voltage.
+
+  avdd10-supply:
+    description: 1.0V Analog core power supply voltage.
+
+  dvdd10-supply:
+    description: 1.0V Digital core supply voltage.
+
+  hdmi5v-supply:
+    description: 5V power supply for the HDMI.
+
+  hdmi_vt-supply:
+    description: Termination voltage for HDMI input.
+
+  clocks:
+    description: The input clock specifier.
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: xtal
+
+  hpd-gpios:
+    description: |
+      In USB Type-C applications, DP_HPD has no use. In standard DisplayPort
+      applications, DP_HPD is used as DP hot-plug.
+    maxItems: 1
+
+  enable-gpios:
+    description: Chip power down control. No internal pull-down or pull-up resistor.
+    maxItems: 1
+
+  reset-gpios:
+    description: Reset input signal. Active low.
+    maxItems: 1
+
+  vbus-det-gpios:
+    description: |
+      An input gpio for VBUS detection and high voltage detection,
+      external resistance divide VBUS voltage to 1/8.
+    maxItems: 1
+
+  interrupts:
+    description: |
+      The interrupt notifies 4 possible events - TCPC ALERT int, PD int, DP int, HDMI int.
+    maxItems: 1
+
+  cabledet-gpios:
+    description: An output gpio, indicates by the device that a cable is plugged.
+    maxItems: 1
+
+  vbus-ctrl-gpios:
+    description:
+      External VBUS power path. Enable VBUS source and disable VBUS sink or vice versa.
+    maxItems: 1
+
+  vconn-en1-gpios:
+    description: Controls the VCONN switch on the CC1 pin.
+    maxItems: 1
+
+  vconn-en2-gpios:
+    description: Controls the VCONN switch on the CC2 pin.
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for HDMI input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: USB port for the USB3 input.
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: USB Type-c connector, see connector/usb-connector.yaml.
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        anx7688: anx7688@2c {
+            compatible = "analogix,anx7688";
+            reg = <0x2c>;
+            avdd33-supply = <&reg_dcdc1>;
+            dvdd18-supply = <&reg_ldo_io1>;
+            avdd18-supply = <&reg_ldo_io1>;
+            avdd10-supply = <&reg_anx1v0>;
+            dvdd10-supply = <&reg_anx1v0>;
+            hdmi_vt-supply = <&reg_dldo1>;
+            enable-gpios = <&pio 3 10 GPIO_ACTIVE_LOW>; /* PD10 */
+            reset-gpios = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* PD6 */
+            interrupt-parent = <&r_pio>;
+            interrupts = <0 11 IRQ_TYPE_EDGE_FALLING>; /* PL11 */
+            cabledet-gpios = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
+            vconn-en1-gpios = <&pio 3 9 GPIO_ACTIVE_LOW>; /* PD9 */
+            vconn-en2-gpios = <&pio 3 9 GPIO_ACTIVE_LOW>; /* PD9 */
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    anx7688_in0: endpoint {
+                        remote-endpoint = <&hdmi0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    anx7688_in1: endpoint {
+                        remote-endpoint = <&usbdrd_phy_ss>;
+                    };
+                };
+                port@2 {
+                    reg = <2>;
+                    anx7688_out: endpoint {
+                        remote-endpoint = <&typec_connector>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.17.1

