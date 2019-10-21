Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3F5DE38F
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 07:13:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbfJUFNe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 01:13:34 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:35713 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726964AbfJUFNe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 01:13:34 -0400
Received: by mail-pf1-f193.google.com with SMTP id 205so7642967pfw.2
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2019 22:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eeCp14zFmkC1kLSVU5dKI3r3lBol6BgXW/DGHgVvGZ0=;
        b=tSvNo82PLkSNjEykRVz6Anf7ct/cSebykqJiQPuV071sDZmzpI1VIBRzmdXuiocOj6
         cWgNp4aUe6Ue5r1lFGynCtgqtZ42DLRkjc7+TMQTAOa0sirqILEExsice4ymcWiFz90P
         qpJsqYt2EloQMeO996gwe/OVNchtjdbBOXM3IOEJgDR1ckFGjsPE/AbZzOA+OZqZN/Mw
         ejbb3qU3uFFHO5N8ikIQtVGCBKamPlTzTjCQG2TInhC/MKty+vKRtR/tzNH3wo8CjXx1
         trpGeoypQteGjGcUjT7cJJDPvH549VolntT6HmNqMmsUdl8he95lRv4teb3SZHcnT0dC
         G6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eeCp14zFmkC1kLSVU5dKI3r3lBol6BgXW/DGHgVvGZ0=;
        b=fOPrmbASBrPbZfe6jv+btO80w0+pJBrlLxsEXZ49D0VC7e1U4rxvEGz5n6KRRTvrT+
         xWjLklmcTLcYaLYQb87pOmTcf3wZ+jTVf+hRwRJYPcCROM0jwqi2e+jLDbTW1FQtYqGP
         vBJpoxTSctANh4JIAjZWjeE56qUCUjlTjX5CR+JN5OTe7D2G740Y/o0dzeokO2kePKwx
         3G9RUE/H+j/xQLw3/aAC3QywmD1dHqSx02254EWVf+aKHeCApgaJOGBrzlBugOPU7Vud
         PczQ98bMC6FEHQXA/84MFMm6ZP6a2CLLIkPsAsuCc7anUEkJP2gWHDgecSqH70qZo/OS
         cTGw==
X-Gm-Message-State: APjAAAX53cOA7RY2JQHnTZeus1zpfDftQuAfTNASWCAxQZ+CTnXiZPoO
        jf084emWuOsimUoDrsjGd7e8gg==
X-Google-Smtp-Source: APXvYqyroXWQ9K2y77aGKRA8cLi4geZiYUAH17tiIIqDvZt3wyMXJEcPc1Cilu8IbkAMhpMJ56qiwg==
X-Received: by 2002:a63:8ac8:: with SMTP id y191mr23636515pgd.324.1571634812754;
        Sun, 20 Oct 2019 22:13:32 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h68sm15716862pfb.149.2019.10.20.22.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 22:13:31 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 05/11] arm64: dts: qcom: db820c: Group root nodes
Date:   Sun, 20 Oct 2019 22:13:16 -0700
Message-Id: <20191021051322.297560-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191021051322.297560-1-bjorn.andersson@linaro.org>
References: <20191021051322.297560-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Prior refactoring have left a few root nodes scattered throughout
db820c.dtsi, group these at the top of the file.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 94 ++++++++++----------
 1 file changed, 45 insertions(+), 49 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index fc6273b0215d..aed34a461b19 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -77,6 +77,51 @@
 			enable-gpios = <&pm8994_gpios 15 0>;
 		};
 	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		autorepeat;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&volume_up_gpio>;
+
+		button@0 {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&pm8994_gpios 2 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	usb2_id: usb2-id {
+		compatible = "linux,extcon-usb-gpio";
+		id-gpio = <&pmi8994_gpios 6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb2_vbus_det_gpio>;
+	};
+
+	usb3_id: usb3-id {
+		compatible = "linux,extcon-usb-gpio";
+		id-gpio = <&pm8994_gpios 22 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb3_vbus_det_gpio>;
+	};
+
+	wlan_en: wlan-en-1-8v {
+		pinctrl-names = "default";
+		pinctrl-0 = <&wlan_en_gpios>;
+		compatible = "regulator-fixed";
+		regulator-name = "wlan-en-regulator";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		gpio = <&pm8994_gpios 8 0>;
+
+		/* WLAN card specific delay */
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
 };
 
 &blsp1_uart1 {
@@ -497,24 +542,6 @@
 	core-vcc-supply = <&pm8994_s4>;
 };
 
-/ {
-	gpio_keys {
-		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		autorepeat;
-
-		pinctrl-names = "default";
-		pinctrl-0 = <&volume_up_gpio>;
-
-		button@0 {
-			label = "Volume Up";
-			linux,code = <KEY_VOLUMEUP>;
-			gpios = <&pm8994_gpios 2 GPIO_ACTIVE_LOW>;
-		};
-	};
-};
-
 &rpm_requests {
 	pm8994-regulators {
 		compatible = "qcom,rpm-pm8994-regulators";
@@ -671,37 +698,6 @@
 	};
 };
 
-/ {
-	usb2_id: usb2-id {
-		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&pmi8994_gpios 6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb2_vbus_det_gpio>;
-	};
-
-	usb3_id: usb3-id {
-		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&pm8994_gpios 22 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb3_vbus_det_gpio>;
-	};
-
-	wlan_en: wlan-en-1-8v {
-		pinctrl-names = "default";
-		pinctrl-0 = <&wlan_en_gpios>;
-		compatible = "regulator-fixed";
-		regulator-name = "wlan-en-regulator";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-
-		gpio = <&pm8994_gpios 8 0>;
-
-		/* WLAN card specific delay */
-		startup-delay-us = <70000>;
-		enable-active-high;
-	};
-};
-
 &spmi_bus {
 	pmic@0 {
 		pon@800 {
-- 
2.23.0

