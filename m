Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC1B2A0A3C
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 16:48:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727137AbgJ3Psx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 11:48:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbgJ3Psw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 11:48:52 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7BA1C0613D2
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 08:48:51 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id c20so5640700pfr.8
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 08:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kag6TyjC9aBeFEQ7I12GSONru4nIvJXFjhdQUAsl6eQ=;
        b=dKyrx5LKFqZ5wrgaxIsiGRG3SDm/dVthQbLRcQeUWc9QeVuHlhOUp0SNibgvB0ZV8Z
         9XF56RDmHnJg6ruNUDd40F65a4vDW9OCDC7ZaZCaRdQR92m9dcbxdi49wU9x+073/vyC
         EV5ydopMCqm0IY1QIypE7MfBVs03d4OR4VeEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kag6TyjC9aBeFEQ7I12GSONru4nIvJXFjhdQUAsl6eQ=;
        b=c2BTQiNVcbFuEeZx6VSaNoV8PiyzrwgYjVxdCcmTgU7SYFzJyw+ITcOxT2zKwHIvnM
         sa7VzFE8wJtoI8yLp3ymA5LxxXiHqO4dpJSoMP+I6AtpFZciA/KuCqMFL9/NCuSbCCzJ
         l0g7w1/qCnndvLxje3nbVaMsDMg52hoZNAwvg9D+zI0HZiZiE3LeHO+O6CFrfxNnar9W
         wcskyyi7b8zl3qFDmlIBcUN4eWolSy9Iz/tjdcB9DdcVWo9SRnxOrrugXBEXqaxjlnj/
         bmHl3MtiX59WLsKbfnsRgXXtnC1a6EZJcOChD8C/5fjYnE5/PBouOaT8oy64vAso36qi
         kv1Q==
X-Gm-Message-State: AOAM530aeiG6izOa0Jn6fXRN+zzKab4j0pyh3Z8GU1Xo6ujlZTR+V4ca
        cmhir1X/FTNMZlkGTPu2zvrCfA==
X-Google-Smtp-Source: ABdhPJwJPYDBlFNl67jviis6ZvI8jCSF+Y+UrcaM9uLV/TWDNP6edijcgqfMubiD45uy8XfwSCAYsw==
X-Received: by 2002:a65:68d2:: with SMTP id k18mr2797518pgt.374.1604072931458;
        Fri, 30 Oct 2020 08:48:51 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id z66sm6230021pfb.109.2020.10.30.08.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 08:48:50 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org,
        Antony Wang <antony_wang@compal.corp-partner.google.com>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH] arm64: qcom: sc7180: trogdor: Add ADC nodes and thermal zone for charger thermistor
Date:   Fri, 30 Oct 2020 08:48:43 -0700
Message-Id: <20201030084840.1.If389f211a8532b83095ff8c66ec181424440f8d6@changeid>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Antony Wang <antony_wang@compal.corp-partner.google.com>

Trogdor has a thermistor to monitor the temperature of the charger IC.
Add the ADC (monitor) nodes and a thermal zone for this thermistor.

Signed-off-by: Antony Wang <antony_wang@compal.corp-partner.google.com>
[ mka: tweaked commit message ]
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 36 ++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index bf875589d364..f68305c35c74 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -13,6 +13,23 @@
 #include "pm6150.dtsi"
 #include "pm6150l.dtsi"
 
+/ {
+	thermal-zones {
+		charger-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&pm6150_adc_tm 1>;
+
+			trips {
+				temperature = <125000>;
+				hysteresis = <1000>;
+				type = "critical";
+			};
+		};
+	};
+};
+
 /*
  * Reserved memory changes
  *
@@ -733,6 +750,25 @@ &mdss {
 	status = "okay";
 };
 
+&pm6150_adc {
+	charger-thermistor@4f {
+		reg = <ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+};
+
+&pm6150_adc_tm {
+	status = "okay";
+
+	charger-thermistor@1 {
+		reg = <1>;
+		io-channels = <&pm6150_adc ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &pm6150_pwrkey {
 	status = "disabled";
 };
-- 
2.29.1.341.ge80a0c044ae-goog

