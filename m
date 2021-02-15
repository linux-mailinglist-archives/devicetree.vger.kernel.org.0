Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E836031C322
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 21:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbhBOUmG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 15:42:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbhBOUmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 15:42:04 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 596BEC061788
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:24 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id z11so12500422lfb.9
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wRVk3haqZC4wsxCzwKAuBBWTX+kKmI5vIx4SonSz0iQ=;
        b=ku7fqrpZKKz7s5UhfegaVZ2e7x3PIR5wuVt78b7XCKhwlMbKDVZvrduZe8S9uqtF30
         VMbNKenZ6T2wSdlfNKoEi66ilBFK9ZxCRE2Ur6IsXOnzl1rE7MnNeAZORVLlu3mDEaM9
         sePXWmedtz/VCaFkLGujHgJ9cT6Pa/BiISI09zaCN35pThD0NLhRSg9QxLL49kEuICbg
         iAMyVAKfu3ss1TfMuoRPYy+HxTQ9tRrE/65PqDkC75HcS2kXYK5oyHomQOiX+GHq0pg9
         e2+FUe7JxyOfEGOYbwSe4FcddkquV+jwpQ94sk0fxYwU9A721ggCswUL1XGpE3lu/nSY
         4EPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wRVk3haqZC4wsxCzwKAuBBWTX+kKmI5vIx4SonSz0iQ=;
        b=swRwWtB2y1GURkyCOknMac42q0/ZC5qvhUMnD20g37I/bu6Z+GVujPLXqbZLunsGbR
         7WCKs3f7GiFd0QPV4BauxpRH4Se1CC/H0DSsOR7NwMk+g33yB5ucmJ2/QERJRxg1/J88
         2PswZ37E1UtrIzTSVl0YP+HhYCQHM7aUPvyQuobvMY0mbrjHuFmujzBmpap/Pztdh8G5
         7vQuZtFqRMC3xMS1EVRyI11pW15MCWg6/1601/Rt0ttAI7/NbHcmbLPykzbKjnEarLob
         +kgdvuXr9nv25KvhO7efLOFg9o27IrLdhv6YY85x2J0A5LqR7LQfocyoqGLD6kQ9a349
         fVLQ==
X-Gm-Message-State: AOAM531JC/zVO7BImgJu/TYphj2GrDYYidP3k87nNRziitPmfIOJxsKu
        t3mkuVvkA/nG2Iwur8z4DuM=
X-Google-Smtp-Source: ABdhPJzsm8HD5LjdUYk2DhBkxQst0Buf/kA402Dl2os76F38a67+AcuMWVS5l3gaRSz3lRliuxqKrQ==
X-Received: by 2002:ac2:52bc:: with SMTP id r28mr8805066lfm.451.1613421682938;
        Mon, 15 Feb 2021 12:41:22 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x36sm2922841lfu.129.2021.02.15.12.41.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:41:22 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 4/5] arm64: dts: broadcom: bcm4908: add remaining Netgear R8000P LEDs
Date:   Mon, 15 Feb 2021 21:41:04 +0100
Message-Id: <20210215204105.27830-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210215204105.27830-1-zajec5@gmail.com>
References: <20210215204105.27830-1-zajec5@gmail.com>
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

