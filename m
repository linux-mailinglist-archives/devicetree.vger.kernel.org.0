Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26B67620ED
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 16:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732018AbfGHO4k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 10:56:40 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:37566 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725840AbfGHO4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 10:56:40 -0400
Received: by mail-wm1-f66.google.com with SMTP id f17so16799934wme.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 07:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lusticky.cz; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IPMwGdezaY5SSN4Z7IrPzRqdzP/7qRU/T2EzDQTM89Q=;
        b=UaRmP7pyvRKI7fEfVZj8wp0XoU5+5R7NcTQ66diOvWxUR4mbg2jRgZJydOXTnuJioP
         uk+MaVyPlvOpjbxmktiTo1EnOtaleyY6DXkMNDNTwBvzj7jAmxcc/IKc8Qg2iu4TiRsP
         NF8OeE0e4go4j+K5o2wGBkfFoXZf7txZHviXlQuiIgaKx295EoV7G6vwvBGnYYiGKqKq
         /+0owAsnNToJXv94gEAeWlxYmQbda4LA31sTrj4SBZPeD+fX1Z8hf8NIQCz+pS6uxak9
         JvnzB2na03PnWgNUGGHU8hWlGKpRmmAIczRiPiTNTizNABj2Nq8Ms5KQCy84zalKxFgG
         FIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IPMwGdezaY5SSN4Z7IrPzRqdzP/7qRU/T2EzDQTM89Q=;
        b=HbCvPmhcEu5GRn45V+0J66PFqxcVZ/8rMI1HOhQq0B4ue3i2mq6wfO+1U7F7FI9c/R
         FscN82TOfdBVf0IhMsphTZv2rDZG0acIiBqa396tDE0uOx0f7pXEVoz15PhFEooOfojN
         UMhXdKlxYM8OUFdWvrOYTc2VNlfQ9P14ZBOC3gFAm5oc+MedZP7a/MAtOwu0iqVcCpNn
         14BAS6kuVeQLFoa8C/nKHfH8v8xWCp8D/0LNLEjnh7CmlklWmPCG0CY7yF6686LyX0Go
         T+DMbu7CW9RQmQVVeq7RAGP9nFVji66aQ4NS/MOYg7Usn96O4Qnhi4/jc6jomHDYs8Xi
         MVNw==
X-Gm-Message-State: APjAAAWQY2xJOM5juuzJdPxhMS50R5sCMYsHsOzVcZX43eRTihL9kg1a
        cuwGLv9sbrNDoV0s0UsNmYVqrA==
X-Google-Smtp-Source: APXvYqwr0h5mD3Q6qradDkIlrnnzsL8mZwQSBbA0htEQtqKGahT4aJ6UbVoLhZ3czW/PvYa27E+w3g==
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr16654935wmm.108.1562597798541;
        Mon, 08 Jul 2019 07:56:38 -0700 (PDT)
Received: from e430.riomail.cz (188-175-152-238.client.rionet.cz. [188.175.152.238])
        by smtp.gmail.com with ESMTPSA id f70sm11887595wme.22.2019.07.08.07.56.37
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 08 Jul 2019 07:56:38 -0700 (PDT)
From:   Josef Lusticky <josef@lusticky.cz>
To:     sam@ravnborg.org, robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     daniel@ffwll.ch, thierry.reding@gmail.com, airlied@linux.ie,
        Josef Lusticky <josef@lusticky.cz>
Subject: [PATCH v2 1/2] dt-bindings: panel: Add parallel RGB mode for Ilitek ILI9341 panels
Date:   Mon,  8 Jul 2019 16:56:17 +0200
Message-Id: <20190708145618.26031-2-josef@lusticky.cz>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190708145618.26031-1-josef@lusticky.cz>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ILI9341 supports both SPI input mode and parallel RGB input mode.
This commit adds parallel RGB input mode bindings.

Signed-off-by: Josef Lusticky <josef@lusticky.cz>
---
 .../bindings/display/ilitek,ili9341.txt       | 67 ++++++++++++++++---
 1 file changed, 56 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9341.txt b/Documentation/devicetree/bindings/display/ilitek,ili9341.txt
index 169b32e4ee4e..629f38a1d0cd 100644
--- a/Documentation/devicetree/bindings/display/ilitek,ili9341.txt
+++ b/Documentation/devicetree/bindings/display/ilitek,ili9341.txt
@@ -1,27 +1,72 @@
 Ilitek ILI9341 display panels
 
-This binding is for display panels using an Ilitek ILI9341 controller in SPI
-mode.
+This binding is for display panels using an Ilitek ILI9341 controller.
+The display panels are supported in the following graphical input modes:
+- SPI input mode
+	MIPI-DBI Type 3 Option 1 or Option 3 is used to transfer
+	commands and graphical data
+- parallel RGB input mode
+	MIPI-DBI Type 3 Option 1 or Option 3 is used for commands
+	MIPI-DPI 18-bit parallel RGB connection is used to transfer
+	graphical data
 
-Required properties:
-- compatible:	"adafruit,yx240qv29", "ilitek,ili9341"
-- dc-gpios:	D/C pin
-- reset-gpios:	Reset pin
+
+SPI input mode:
 
 The node for this driver must be a child node of a SPI controller, hence
-all mandatory properties described in ../spi/spi-bus.txt must be specified.
+all mandatory properties described in spi/spi-bus.txt must be specified.
+
+Required properties in SPI input mode:
+- compatible:   "adafruit,yx240qv29", "ilitek,ili9341"
+- backlight:    phandle of the backlight device attached to the panel
+
+Optional properties in SPI input mode:
+- rotation:     panel rotation in degrees counter clockwise (0,90,180,270)
+- dc-gpios:     GPIO spec for the D/C pin, see gpio/gpio.txt
+- reset-gpios:  GPIO spec for the reset pin, see gpio/gpio.txt
+
+
+Parallel RGB input mode:
+
+The node for this driver must be a child node of a SPI controller, hence
+all mandatory properties described in spi/spi-bus.txt must be specified.
+
+Required properties in parallel RGB input mode:
+- compatible:   "displaytech,dt024ctft", "ilitek,ili9341"
+- backlight:    phandle of the backlight device attached to the panel
+
+Optional properties in parallel RGB input mode:
+- dc-gpios:     GPIO spec for the D/C pin, see gpio/gpio.txt
+- reset-gpios:  GPIO spec for the reset pin, see gpio/gpio.txt
 
-Optional properties:
-- rotation:	panel rotation in degrees counter clockwise (0,90,180,270)
-- backlight:	phandle of the backlight device attached to the panel
+In parallel RGB input mode,
+the device node can contain one 'port' child node with one child
+'endpoint' node, according to the bindings defined in
+media/video-interfaces.txt. This node should describe panel's video bus.
 
-Example:
+
+Example in SPI input mode:
 	display@0{
 		compatible = "adafruit,yx240qv29", "ilitek,ili9341";
 		reg = <0>;
 		spi-max-frequency = <32000000>;
 		dc-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
 		reset-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight>;
 		rotation = <270>;
+	};
+
+Example in parallel RGB input mode:
+	panel@{
+		compatible = "displaytech,dt024ctft", "ilitek,ili9341";
+		reg = <0>;
+		spi-max-frequency = <32000000>;
+		dc-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
 		backlight = <&backlight>;
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&display_out>;
+			};
+		};
 	};
-- 
2.20.1

