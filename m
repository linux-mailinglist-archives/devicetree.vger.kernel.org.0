Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB82F3FD7B6
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 12:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233692AbhIAKb6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 06:31:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233168AbhIAKb5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 06:31:57 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [IPv6:2a03:6000:1011::59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E15F2C061760
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 03:31:00 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [194.162.236.226])
        by mail.bugwerft.de (Postfix) with ESMTPSA id EC19432D198;
        Wed,  1 Sep 2021 10:30:59 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v9 1/2] dt-bindings: display: add bindings for newhaven,1.8-128160EF
Date:   Wed,  1 Sep 2021 12:30:39 +0200
Message-Id: <20210901103040.1419706-2-daniel@zonque.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901103040.1419706-1-daniel@zonque.org>
References: <20210901103040.1419706-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds documentation for a new ILI9163 based, SPI connected display.

Signed-off-by: Daniel Mack <daniel@zonque.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/ilitek,ili9163.txt       | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.txt

diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9163.txt b/Documentation/devicetree/bindings/display/ilitek,ili9163.txt
new file mode 100644
index 000000000000..fee119991c14
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
2.31.1

