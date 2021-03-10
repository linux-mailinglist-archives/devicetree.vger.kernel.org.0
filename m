Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5ED333670
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 08:33:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbhCJHcc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 02:32:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231899AbhCJHcS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 02:32:18 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7777C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 23:32:17 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id u18so24280651ljd.3
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 23:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iLUTM3h4wSubLrUrhtIKNok1om252JMNpkTX/0jR0gU=;
        b=rFdDYXd9kzffvpmkwWevcEhc+IL/F54oXnuXoXlFA4uFZSoRb6Ule4sLehqod/fklp
         UweJ6dtZd86f7YTNiZZzw4cgImsj1bAt/bphCRuTH3mij0VScm1qovK7ZnEQEyzI3FXn
         c4G9Pw4dzwB5pyZLGfQKiDbXB4LRHggaJGYPuKcpUVfe9UjhXuZiq/EfivCrRCBd+oa9
         LOiLQ5aCE3j/uERoQzF1Cwv1J6ReejvCMWe0el1C2fUkuwPkHohKd4kJWnlFNfBu/uSa
         8WyznoNqY5/Ms6AHHwJnvdmQIDklpHFJsZ0CRcTWMjN0/+QaE1y2lcXJoemLh4L5qbF6
         6qsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iLUTM3h4wSubLrUrhtIKNok1om252JMNpkTX/0jR0gU=;
        b=KCjLFl7emqZj5gQRvfHsRLSgs3m8hV+U1cz75hUJ8tVlOwKTqKrqW7y3mTm46B2JPe
         Ws3yri7Cp4aBili4+XT0FgWO6WKbmhG03cUY7BmRmSog8I/1TzQglyizmIWqmrhxbBeN
         efMjKZGSxwdbYOHjy4CnRc1zR/g2esuANghYsHBD8x32hI/YmFbzHQ+RFWWJS/beAHN1
         upTmFYw6IR0eqdCw+qscv6vqJH66Oe5T1vNHgNN46Gvx3kufOgJLleazmX1QYXVSLtlC
         4JBJYrHlLl0hxtBR+LLaIMbCLfEMXjhINHBKYzy85huU7VcAqutIH2CIeD/ukLSy5Exn
         YdnA==
X-Gm-Message-State: AOAM531FPHdp+RcJWnSYcKYTO+LShIHVytCgdIf0yhxOPGjzQ2+eNvo8
        0uieoCLYbUvu5r7oD/8J8lY=
X-Google-Smtp-Source: ABdhPJz585elpWi6Af/yPhoCzCnQtWrkrZ2heZW2lnyLF58Od7kbIIFxZ9EQ8Z/EPEwQPmbFXZql3A==
X-Received: by 2002:a2e:5315:: with SMTP id h21mr983939ljb.299.1615361536227;
        Tue, 09 Mar 2021 23:32:16 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id a1sm2615350lfd.31.2021.03.09.23.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 23:32:15 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: fix Netgear R8000P LEDs nodes
Date:   Wed, 10 Mar 2021 08:32:03 +0100
Message-Id: <20210310073203.14463-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Update nodes names to match leds-gpio.yaml requirements.

Fixes: 29b08ead247a ("arm64: dts: broadcom: bcm4908: add remaining Netgear R8000P LEDs")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bcm4908/bcm4906-netgear-r8000p.dts         | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index 7b24ad365a3c..41e8fbf095c6 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -18,55 +18,55 @@ memory@0 {
 	leds {
 		compatible = "gpio-leds";
 
-		power-white {
+		led-power-white {
 			function = LED_FUNCTION_POWER;
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
 		};
 
-		power-amber {
+		led-power-amber {
 			function = LED_FUNCTION_POWER;
 			color = <LED_COLOR_ID_AMBER>;
 			gpios = <&gpio0 9 GPIO_ACTIVE_LOW>;
 		};
 
-		wps {
+		led-wps {
 			function = LED_FUNCTION_WPS;
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
 		};
 
-		2ghz {
+		led-2ghz {
 			function = "2ghz";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
 		};
 
-		5ghz-1 {
+		led-5ghz-1 {
 			function = "5ghz-1";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
 		};
 
-		5ghz-2 {
+		led-5ghz-2 {
 			function = "5ghz-2";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
 		};
 
-		usb2 {
+		led-usb2 {
 			function = "usb2";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
 		};
 
-		usb3 {
+		led-usb3 {
 			function = "usb3";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
 		};
 
-		wifi {
+		led-wifi {
 			function = "wifi";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 56 GPIO_ACTIVE_LOW>;
-- 
2.26.2

