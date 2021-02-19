Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF9E31F4E8
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 06:51:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbhBSFvh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 00:51:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhBSFvg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 00:51:36 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7191C061788
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:55 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id c8so13488331ljd.12
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wRVk3haqZC4wsxCzwKAuBBWTX+kKmI5vIx4SonSz0iQ=;
        b=k2Y3/8PS+31VQ3md8k2kRR863kUuIIi04X2tJNC0pOig0Er9pu7GNNlm32gk8jXVfu
         UbVM2TVJjmvao+4Onn6fSMJBKRvP0dGEQRDj9fpEFIowJyJW89ip7N/xpNMXDGHBQdWm
         sHGzBNijhL+n+SsvPXhPregQPPXPaOP60iB6fC0QG3W2Uijl8kYOWqqGwrVcEa+6vKdN
         27HWnpHxoWmG5Ao7rPLgPoS5knR19sG9YXMxkV3OjvVJfZ0LHNEkihEesu6yyJmVPIzc
         rgJTOFk0lEdZQb8Ggofn1a5FKobhYCCkI93TlLfZmH/rfkJSrvbbAqJag3LwObW+qJRx
         UFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wRVk3haqZC4wsxCzwKAuBBWTX+kKmI5vIx4SonSz0iQ=;
        b=M2TCD/jFBoDN/8S+W02NqW1K1YEevoQ6ZaaKM4QwDyHBUSqCDDNc1bRXXkgzS4hbVl
         IbTJH14p0+UlteW7tpAUXn/xDG1WoTMEJDYTdvoW27Ablwh+gXsoZely0WHLc+4K5QuN
         JMvPSDhzA89R96zFSqghYQermp5/27RGZ6tGl+LffjPAFGIXoaEXz3NhFWEqev6W2baC
         rJOd9YuV9j4fRAUcvcEJpr2xRCVhMlttY+bHYMyVeMOeT0kl/ZepdgXtD4yvIp9RsLlR
         osd9rByY/CFsY4zLzaacnXBm5GSdGFX9X5R7+EVX/S/t9DKrd6FrDm9IfOPiX22QXrPg
         /tig==
X-Gm-Message-State: AOAM531AXjb4nXiRbOal96m4TDg/bpt7GyGfXTARVN/LaavDAmz7PEhw
        Tn6z/FUg4mLbQgHBCu74T4s=
X-Google-Smtp-Source: ABdhPJzQnpIVLlDVOJUFpU1C05Q8VxlenFRPiF8B4NdPbNHU4UN8JMX5bgwLcF7wIMeVwQi+UNlgSw==
X-Received: by 2002:a2e:9101:: with SMTP id m1mr4625232ljg.378.1613713854331;
        Thu, 18 Feb 2021 21:50:54 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n8sm819712lfe.276.2021.02.18.21.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 21:50:53 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 4/5] arm64: dts: broadcom: bcm4908: add remaining Netgear R8000P LEDs
Date:   Fri, 19 Feb 2021 06:50:29 +0100
Message-Id: <20210219055030.3997-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210219055030.3997-1-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

There are a few more GPIO connected LEDs there didn't get described
initially.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bcm4908/bcm4906-netgear-r8000p.dts        | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index af2616e82e83..0d02986c80ab 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -18,11 +18,59 @@ memory@0 {
 	leds {
 		compatible = "gpio-leds";
 
+		power-white {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
+		};
+
+		power-amber {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio0 9 GPIO_ACTIVE_LOW>;
+		};
+
 		wps {
 			function = LED_FUNCTION_WPS;
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
 		};
+
+		2ghz {
+			function = "2ghz";
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+		};
+
+		5ghz-1 {
+			function = "5ghz-1";
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+		};
+
+		5ghz-2 {
+			function = "5ghz-2";
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
+		};
+
+		usb2 {
+			function = "usb2";
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+		};
+
+		usb3 {
+			function = "usb3";
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			function = "wifi";
+			color = <LED_COLOR_ID_WHITE>;
+			gpios = <&gpio0 56 GPIO_ACTIVE_LOW>;
+		};
 	};
 };
 
-- 
2.26.2

