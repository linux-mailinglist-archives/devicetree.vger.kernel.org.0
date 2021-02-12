Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6F7C319C48
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 11:05:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230150AbhBLKDU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 05:03:20 -0500
Received: from mail.bugwerft.de ([46.23.86.59]:56228 "EHLO mail.bugwerft.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230046AbhBLKDS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 12 Feb 2021 05:03:18 -0500
X-Greylist: delayed 526 seconds by postgrey-1.27 at vger.kernel.org; Fri, 12 Feb 2021 05:03:18 EST
Received: from hq-00021.fritz.box (p57bc9f25.dip0.t-ipconnect.de [87.188.159.37])
        by mail.bugwerft.de (Postfix) with ESMTPSA id C3A284AADCF;
        Fri, 12 Feb 2021 09:53:44 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v2 1/2] dt-bindings: display: add bindings for newhaven,1.8-128160EF
Date:   Fri, 12 Feb 2021 10:53:35 +0100
Message-Id: <20210212095336.635701-1-daniel@zonque.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds documentation for a new ILI9163 based, SPI connected display.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 .../bindings/display/ilitek,ili9163.txt       | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.txt

diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9163.txt b/Documentation/devicetree/bindings/display/ilitek,ili9163.txt
new file mode 100644
index 0000000000000..fee119991c14e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/ilitek,ili9163.txt
@@ -0,0 +1,27 @@
+Ilitek ILI9163 display panels
+
+This binding is for display panels using an Ilitek ILI9163 controller in SPI
+mode.
+
+Required properties:
+- compatible:	"newhaven,1.8-128160EF", "ilitek,ili9163"
+- dc-gpios:	D/C pin
+- reset-gpios:	Reset pin
+
+The node for this driver must be a child node of a SPI controller, hence
+all mandatory properties described in ../spi/spi-bus.txt must be specified.
+
+Optional properties:
+- rotation:	panel rotation in degrees counter clockwise (0,90,180,270)
+- backlight:	phandle of the backlight device attached to the panel
+
+Example:
+	display@0{
+		compatible = "newhaven,1.8-128160EF", "ilitek,ili9163"
+		reg = <0>;
+		spi-max-frequency = <32000000>;
+		dc-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
+		rotation = <270>;
+		backlight = <&backlight>;
+	};
-- 
2.29.2

