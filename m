Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A64D120CFC
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727080AbfEPQ3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:29:50 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:44666 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727076AbfEPQ3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:29:49 -0400
Received: by mail-pl1-f194.google.com with SMTP id c5so1865347pll.11
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F+MUix4E2fzDWarwS4nmG/Em5BaLYXIJG0RnslLnuRA=;
        b=A/QcefCONy0p8hJbO0heZwLqxWZ8lsgdagrHghkE9zjmezGMvjfyieeXactlpqZRRa
         YLS81uVk2pJdVXGp9xaDmlgMq2U+xIeDeNkcu+gI4czxMzsnQt5Y7DBVdyYnqcLHRHSe
         /f/w5SMGU32q0oRor5O557Y/iSuZDQryFc1t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F+MUix4E2fzDWarwS4nmG/Em5BaLYXIJG0RnslLnuRA=;
        b=Aqvh+Q+Qmg5JRp+sC7TFHbD5OXzxky3zAcPP54Mqv6soH0EfzBjnBOg2+ZNnBgtK+5
         Z4FhVKtzoAeRpABHtQQxM0YMf/rTfYU759/rUok46iaOxY1zCM+LF7dgq2jmnGpCE5/9
         ShuSWCDE3KirgOaqzbDzoq6bL0D3VPC/NtN+4hgzOtk4dP3pDTuGHxuu9CgWm98K1tx/
         vWRybGDjVtE95Cr98zdZ785QH+7oLTN0FEexDw53djdPjXwNj2nO4vBS1Herf1LWYmTn
         oQQq3s+zEdLLEbdhYwjmPbUGlVysLSYx/ezggZE5ZTgRuZxcWrz2xMIw/HuI3ci4uW3S
         giNw==
X-Gm-Message-State: APjAAAVmqAaoH8GWZnm2qYgkFgTC74aWGe5DWrClWAtA8ctKx8ETc6KU
        TahRzj6vBgaLqTIMZgkALDgbdg==
X-Google-Smtp-Source: APXvYqxkK/qfoQgyJc5dgRsnMZtbcRgZDE5QF6K47Pw4/YozjwnhVzeOxcxp4uW/0m6HCYUODwDYOA==
X-Received: by 2002:a17:902:683:: with SMTP id 3mr9312171plh.209.1558024188932;
        Thu, 16 May 2019 09:29:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id d85sm8140067pfd.94.2019.05.16.09.29.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 09:29:48 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: raise GPU trip point temperatures for veyron
Date:   Thu, 16 May 2019 09:29:41 -0700
Message-Id: <20190516162942.154823-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The values match thorse used by the downstream Chrome OS 3.14
kernel, the 'official' kernel for veyron devices. Keep the critical
trip point for speedy at 90°C as in the downstream configuration.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- also raise temperature of critical trip point
- add entries at position in alphabetical order
- added entry to keep critical trip point for speedy at 90°C
- updated commit message
---
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
 arch/arm/boot/dts/rk3288-veyron.dtsi       | 8 ++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index ab2a66aa337e..3d2769f1bef2 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -75,6 +75,10 @@
 	force-hpd;
 };
 
+&gpu_crit {
+	temperature = <90000>;
+};
+
 &panel {
 	power-supply= <&panel_regulator>;
 };
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 58dc538b5df3..aee8350b2800 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -142,6 +142,14 @@
 	status = "okay";
 };
 
+&gpu_alert0 {
+	temperature = <72500>;
+};
+
+&gpu_crit {
+	temperature = <100000>;
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
-- 
2.21.0.1020.gf2820cf01a-goog

