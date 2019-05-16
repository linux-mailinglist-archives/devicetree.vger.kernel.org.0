Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D5D2C210C5
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 00:56:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726645AbfEPW4Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 18:56:16 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:43681 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726464AbfEPW4Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 18:56:16 -0400
Received: by mail-oi1-f193.google.com with SMTP id t187so3788592oie.10
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 15:56:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Gk+wQtnm4tRRfZYtvlk4b2pxbAfDQTPWkdKNCH7e3p0=;
        b=SmsIQ68CXu477jO/fm6z8neVIE2GbzCXK+hch3iQxhLFxGSYEQnhKUSV+W4BWAErxg
         GokPK2HRfgH/OJOPnzGDZ+oU8+1F2BxAzfYpg+BfEEF+wwdrHuVs2scMketTTiwWA6kV
         28rbUR8lqOOvJSKNVZBfxEvBIhYP8XD4CMwol9O/m5aiXCa8jddYprDwn6iAnNiBZqwj
         GYEO4ce+cgLN/jMz5Ey+hQ4FHKzHO0PMqY94+Q4/YiwV5fkC6da6DbSwT/sTGw7drE/u
         D8MWZBs9/ERfHqC5ViY/PTkKp+1MVu/hpUrtTx3QMEMopUiB+gEJc9lWK6+Js33ggGrR
         RjVw==
X-Gm-Message-State: APjAAAULXINCnqcUQ0zvInAiwqmIfN17/jMhn2HdLaSewyc79afuj1oM
        UvFSe3wyXdorumf1xvDmzQ==
X-Google-Smtp-Source: APXvYqzs8xJQ2Ok1f2GqXZC31v0mN+vwM2xYsnNgq7aDavrzbs8JsIB4fqpJDYPvQ3pHPsDDOLkP+w==
X-Received: by 2002:aca:72c5:: with SMTP id p188mr11344090oic.116.1558047375964;
        Thu, 16 May 2019 15:56:15 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id h2sm2195347otk.25.2019.05.16.15.56.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 16 May 2019 15:56:15 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     devicetree@vger.kernel.org,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and property names
Date:   Thu, 16 May 2019 17:56:14 -0500
Message-Id: <20190516225614.1458-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While properties and child nodes with the same name are valid DT, the
practice is not encouraged. Furthermore, the collision is problematic for
YAML encoded DT. Let's just avoid the issue and rename the nodes.

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/at91sam9261ek.dts    | 2 +-
 arch/arm/boot/dts/at91sam9263ek.dts    | 2 +-
 arch/arm/boot/dts/at91sam9m10g45ek.dts | 2 +-
 arch/arm/boot/dts/at91sam9rlek.dts     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9261ek.dts b/arch/arm/boot/dts/at91sam9261ek.dts
index f681cd727010..02b116b48c3b 100644
--- a/arch/arm/boot/dts/at91sam9261ek.dts
+++ b/arch/arm/boot/dts/at91sam9261ek.dts
@@ -49,7 +49,7 @@
 			atmel,power-control-gpio = <&pioA 12 GPIO_ACTIVE_LOW>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <16>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
diff --git a/arch/arm/boot/dts/at91sam9263ek.dts b/arch/arm/boot/dts/at91sam9263ek.dts
index 13d415c22a69..924fe563f6fa 100644
--- a/arch/arm/boot/dts/at91sam9263ek.dts
+++ b/arch/arm/boot/dts/at91sam9263ek.dts
@@ -111,7 +111,7 @@
 			display = <&display0>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <16>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
diff --git a/arch/arm/boot/dts/at91sam9m10g45ek.dts b/arch/arm/boot/dts/at91sam9m10g45ek.dts
index 46107c2f1ab9..5226e952a729 100644
--- a/arch/arm/boot/dts/at91sam9m10g45ek.dts
+++ b/arch/arm/boot/dts/at91sam9m10g45ek.dts
@@ -236,7 +236,7 @@
 			display = <&display0>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <32>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
diff --git a/arch/arm/boot/dts/at91sam9rlek.dts b/arch/arm/boot/dts/at91sam9rlek.dts
index 27d8a1f44233..a000a459f17b 100644
--- a/arch/arm/boot/dts/at91sam9rlek.dts
+++ b/arch/arm/boot/dts/at91sam9rlek.dts
@@ -37,7 +37,7 @@
 			display = <&display0>;
 			status = "okay";
 
-			display0: display {
+			display0: panel {
 				bits-per-pixel = <16>;
 				atmel,lcdcon-backlight;
 				atmel,dmacon = <0x1>;
-- 
2.20.1

