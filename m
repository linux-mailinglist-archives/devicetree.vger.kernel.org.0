Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5493C34E1A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 18:58:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727839AbfFDQ60 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 12:58:26 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:55058 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727709AbfFDQ60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 12:58:26 -0400
Received: by mail-wm1-f66.google.com with SMTP id g135so810093wme.4
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 09:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WVCO5NdhCO4ClvnqUv2FsN5kOQCRCbVjJWhoMXw1NDQ=;
        b=U8iHJaeNQwgfZyonZpmCY+8eHEAJFzgZQHl4ZBgMB7Ehc1h2CJidpz9etKcpnvU01a
         fdT0yfOUja+9mp77Qt7n0A8kIpZCp5BOm+jY1QG8/1SSyaF/lYSYJkKv5lhQvqfxApcs
         aRvUtwN/SQiwf9Gb3ICSTbT7qQxfw8EzQ4t37U4ioJKeyYm9ZKp68qrJaS5TiPi8HNuL
         Ad2tzh8fiCQgixXuooOSB0jyT4RrTmlzXAAWj6F5suSxrHSkAaLOwXQA6Q8jKbVGsBxv
         l0AZtugD8sTl+zF6170ZkYKO1l5PD79mwoFVwLwixQlwxPFdlkYXrZ5P9WHE/ixvl8vP
         LFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WVCO5NdhCO4ClvnqUv2FsN5kOQCRCbVjJWhoMXw1NDQ=;
        b=Ovj7AGEOCgyA+WHFmJFI6+FGupv8/WG52kR5zGVBBXguebfO4xNADl9GnDq3sHeYkf
         lsbOGwjIY3Cm/XoyX+YI5cDGK93DFNQQCUOHh+A/pk5IQ88t37UYPy/vdyGf8HjpM4ka
         r+87EA7w3j50NLPP2UrIQK5n5kSwhh8QxtOA6yDY06XJMEeez68Rd7Pv2TA3yuathmbr
         J5c/pznAFqaGV5Mpr3QZ92jDAnv3uTVxAd5YcI+Fit6QyIx6rJDjVRUpKZWLh78MZKYy
         PpbAh8Idx6XFfM2eJ0IJYxpT7PKDmOCUc01GsGpfjQOQAwqncR8l+RsGa3taq1lh2JDs
         H7+A==
X-Gm-Message-State: APjAAAWftvwuoIA8gnNf8WvPD51Md9lpxBMkJRu/v/27/lu6F0FPgqjs
        jHh7KnCZ1qSC/yNkOg1Jy29bUg==
X-Google-Smtp-Source: APXvYqyTSxvUapZ02X/hXKoASJXPNOtj9HjRjSK5iLdyKziVYT0pPX38I5nv+gb7+mLfsXpPzGyVLg==
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr9346231wmf.19.1559667504165;
        Tue, 04 Jun 2019 09:58:24 -0700 (PDT)
Received: from clegane.local (20.119.129.77.rev.sfr.net. [77.129.119.20])
        by smtp.gmail.com with ESMTPSA id t13sm25524979wra.81.2019.06.04.09.58.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 09:58:23 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     heiko@sntech.de
Cc:     linux-kernel@vger.kernel.org, edubezval@gmail.com,
        manivannan.sadhasivam@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC
        support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH 2/2] arm64: dts: rockchip: Define values for the IPA governor for rock960
Date:   Tue,  4 Jun 2019 18:57:58 +0200
Message-Id: <20190604165802.7338-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604165802.7338-1-daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the default thermal values for the rk3399-rock960 board is
inherited from the generic definition in rk3399.dtsi.

In order to ensure the rock960 has more room for througput before
being capped by the thermal framework and is correctly supported by
the IPA governor, let's define the power values and the right trip
points for better performances:

 - sustainable power is tested to be 1550mW

 - increase the first mitigation point to 75°C in order to get better
   performances

 - the first trip point is 65°C in order to let the IPA to collect
   enough data for the PID regulation when it reaches 75°C

 - restrict the cooling device to the big CPUs as the little CPUs
   contribution to the heating effect can be considered negligible

The intelligent power allocator PID coefficient to be set in sysfs
are:

    k_d: 0
    k_po: 79
    k_i: 10
    k_pu: 50

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../boot/dts/rockchip/rk3399-rock960.dts      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..701d5b5fad46 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -114,6 +114,45 @@
 	};
 };
 
+&thermal_zones {
+	cpu_thermal: cpu {
+		polling-delay-passive = <100>;
+		polling-delay = <1000>;
+		thermal-sensors = <&tsadc 0>;
+		sustainable-power = <1550>;
+
+		trips {
+			cpu_alert0: cpu_alert0 {
+				    temperature = <65000>;
+				    hysteresis = <2000>;
+				    type = "passive";
+			};
+
+			cpu_alert1: cpu_alert1 {
+				    temperature = <75000>;
+				    hysteresis = <2000>;
+				    type = "passive";
+			};
+
+			cpu_crit: cpu_crit {
+				  temperature = <95000>;
+				  hysteresis = <2000>;
+				  type = "critical";
+			};
+		};
+
+		cooling-maps {
+			     map0 {
+
+			     trip = <&cpu_alert1>;
+			     cooling-device =
+					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			};
+		};
+	};
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.17.1

