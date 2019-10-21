Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF36EDE38A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 07:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725926AbfJUFN2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 01:13:28 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:41033 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725769AbfJUFN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 01:13:27 -0400
Received: by mail-pf1-f196.google.com with SMTP id q7so7635429pfh.8
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2019 22:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G/DyGblyYd1ilcsqKJpKOSx8FxKWJ7BemMzFbdnwqIE=;
        b=uD4BkpkNw7CXoCJ3inCuVjy53/AcUUKpYDea2UyAItozmhZtgp3+8hCdXoYo5goVJ5
         3FQ9Ema1vF16mzung5fuaK+sENhDb0YMAxjtoZgstbtNMyadwtbMWOetnvKn1U31FG8y
         n75RdHjyGygE/pRmIeqksfPHfur4D3yJpSGBh/d7k0MtGZpowxZgMBMn+syXuEsnSEJW
         I7Zx0elpJ78ipkabbG9eLOJWlRO7tQoCwZ6BhKjsPFTCCI+skvzNDqzTuwdJC1/uZ1r/
         4pmNErMYzjol6zimBK0+LXQOo59kfL5kTb5KVexadGcOpa1DlYgsJcrG2bva2NS6eh9T
         dS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G/DyGblyYd1ilcsqKJpKOSx8FxKWJ7BemMzFbdnwqIE=;
        b=IR4ujWQJxNBVbV0JFwSDK+kj6EgcM/bZa0cZxidt7gumouplS+Rhqnnl0dwyC8SV3D
         tH4HapRNlQ8uATrYkrs5Vpchzp2dF1lhxii9J0mRkRMwkMRtmTucWinzLoZdG3eKBkpg
         Rl4IQq4F21x3QamilP1ngADGzj++BXnAB+vVgf5QwQFUMie4uFPfZaQoUV10xIU1G8xa
         T+q8T4KdfgprAWO7gWq8/kXzG3FLFt8+9QlaMQzcMzlUcWX8hpXHJTGdwXTPRwwKkzaF
         sDCIBKXNLgRn9aMm70b/rv6+yTcq7RrlAiM7y2jZFfkW/7ghC9omZBKEobsaEdeHmvkd
         bfyQ==
X-Gm-Message-State: APjAAAV8JycQYLjWw4ZngzoblcNw15xRWyUgXdTvIaouRdff6J8O7+0m
        lxeQbA9VjgbISAhRuD9mtqSSPA==
X-Google-Smtp-Source: APXvYqywumhuD9k4R4nUizbQWvEm8WzLTXVrDY9n8sBd07gokPv6ESH3aMg4K5XWF4LLbErD77Adug==
X-Received: by 2002:a63:5f52:: with SMTP id t79mr7354842pgb.311.1571634806955;
        Sun, 20 Oct 2019 22:13:26 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h68sm15716862pfb.149.2019.10.20.22.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 22:13:26 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 01/11] arm64: dts: qcom: db820c: Move non-soc entries out of /soc
Date:   Sun, 20 Oct 2019 22:13:12 -0700
Message-Id: <20191021051322.297560-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191021051322.297560-1-bjorn.andersson@linaro.org>
References: <20191021051322.297560-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USB id pins and wlan regulator are not platform devices, so move
them out of /soc

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 58 ++++++++++----------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
index dba3488492f1..da2f01eb3be2 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
@@ -399,13 +399,6 @@
 			};
 		};
 
-		usb3_id: usb3-id {
-			compatible = "linux,extcon-usb-gpio";
-			id-gpio = <&pm8994_gpios 22 GPIO_ACTIVE_HIGH>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb3_vbus_det_gpio>;
-		};
-
 		usb@76f8800 {
 			status = "okay";
 			extcon = <&usb2_id>;
@@ -417,28 +410,6 @@
 			};
 		};
 
-		usb2_id: usb2-id {
-			compatible = "linux,extcon-usb-gpio";
-			id-gpio = <&pmi8994_gpios 6 GPIO_ACTIVE_HIGH>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&usb2_vbus_det_gpio>;
-		};
-
-		wlan_en: wlan-en-1-8v {
-			pinctrl-names = "default";
-			pinctrl-0 = <&wlan_en_gpios>;
-			compatible = "regulator-fixed";
-			regulator-name = "wlan-en-regulator";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-
-			gpio = <&pm8994_gpios 8 0>;
-
-			/* WLAN card specific delay */
-			startup-delay-us = <70000>;
-			enable-active-high;
-		};
-
 		agnoc@0 {
 			pcie@600000 {
 				status = "okay";
@@ -667,6 +638,35 @@
 			};
 		};
 	};
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
 
 &spmi_bus {
-- 
2.23.0

