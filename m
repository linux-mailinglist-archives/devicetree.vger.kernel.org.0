Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 97D564D7F7
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 20:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727638AbfFTSVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 14:21:19 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:43249 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726401AbfFTSVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jun 2019 14:21:18 -0400
Received: by mail-pl1-f193.google.com with SMTP id cl9so1701432plb.10
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 11:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JZ2NT1GSY4hpKU63g205EVnDgpZqQ6NY0FJ4sZy9GQw=;
        b=N8+of+nlHpwHnPETt6oXJ7W/ISn1rEby0yhxwKLPl3dnUC8wZeby8eohp1yM1lyhiI
         x1r64JlKADc6skDXTaWeczVmFQOP637oOFQPTxG4i4mTwasaHuHWN3LjIw9Bblp/K7gK
         lx2iUnn6VmSWj/jQNH3bgFhRFTt+Qhzhdh6XQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JZ2NT1GSY4hpKU63g205EVnDgpZqQ6NY0FJ4sZy9GQw=;
        b=EwfsjfdqvG4QSyokJq7Nr3tgPGXlcmlmWuoansGB8mgZxMhKRiQlAG19fVNMJugasP
         SDbCXjLm++MPaOOK/qbyd+AqB1Cc+AqkMHKI7axVt6aT6zEwNAcZlR7AJARLCfzhzj6f
         zEyAseEMhzPpt5Xw05M0O1SDvVvP29ZMNpjEQCy8qxbKeiNzluqDhScGGxcd2Ena5YWn
         /WuBjt08gT40sWWDUjgol0jSowPa/8BMXNjdyX+C+z0uSkPqMpY1NoBL8v3NCT4RThQm
         vVXqSNnLxp0zTSRQZ1O53Tl+DySYFNNLBNKbbyliNT+ER3v0gA1SNhlnTYvoREwupVTi
         llpQ==
X-Gm-Message-State: APjAAAU88nABrrVvm05CBkWbM8Nrq0cknAzRPUSY5i88AMf72PMvOZIi
        b6yVCHXaedgX8+toy0xi7xHj7A==
X-Google-Smtp-Source: APXvYqzhWDEoiLHEFAdu8IpSss+cbmdlR5vKAYaFqg89xARSeVwy0J/o2mSyNDJeF6hfVFRzRyob/w==
X-Received: by 2002:a17:902:70cc:: with SMTP id l12mr10696711plt.87.1561054877425;
        Thu, 20 Jun 2019 11:21:17 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id 188sm178081pfe.30.2019.06.20.11.21.16
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 20 Jun 2019 11:21:17 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     heiko@sntech.de
Cc:     enric.balletbo@collabora.com, mka@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] Revert "ARM: dts: rockchip: add startup delay to rk3288-veyron panel-regulators"
Date:   Thu, 20 Jun 2019 11:20:56 -0700
Message-Id: <20190620182056.61552-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.

This 100 ms mystery delay is not on downstream kernels and no longer
seems needed on upstream kernels either [1].  Presumably something in the
meantime has made things better.  A few possibilities for patches that
have landed in the meantime that could have made this better are
commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")

Let's revert and get our 100 ms back.

[1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
 arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index fcd119168cb6..5411ce148890 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -24,7 +24,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index 164561f04c1d..82ac9d23480e 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -26,7 +26,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index b2cc70a08554..f29501d8ff07 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -33,7 +33,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 9b140db04456..a0f6fefc95f1 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -24,7 +24,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_enable_h>;
 		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
 		vin-supply = <&vcc33_sys>;
 	};
 
-- 
2.22.0.410.gd8fdbe21b5-goog

