Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A949B1F5FD2
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2020 04:06:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726387AbgFKCGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jun 2020 22:06:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726163AbgFKCGt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jun 2020 22:06:49 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89CA5C08C5C3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 19:06:48 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id e18so1836237pgn.7
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 19:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4Y4ynudYVEOF2bwcSaKUAcBc0jJC1pTFViDYeCyBDLg=;
        b=jvxxdLqpo+0mRShkaVWeuKTjdbq2SY5zHyPUmlP9mEguLJSjmHKBHGLHY/cTzOCXlH
         eB3qRpNpvIRDJNO6JSxhOVYAWeI1bubmvS8iGittDjXx1zJkHd9kKOYlFpBODIyQu0vG
         bsc7fBBrlfcKF/fevWNzdttAJeifoXfQhjkps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4Y4ynudYVEOF2bwcSaKUAcBc0jJC1pTFViDYeCyBDLg=;
        b=S/yt8tfKWKzx6lxAYLPq9l5q+C5xuU9rgMTH1rSh7roxO/5wvYqdLSUcQatRFJg4qj
         niVUgGwSIqw0nYxPGWYbHzaI0k1OKgyrVWIZxTrgeNrUuxSMwcvIJ73bdNqAoBblCSi/
         F5c7Eqx7DJwKxC4oL3aka6Qq2xF0AabpfPxdp/5iJAh1UX/yXL5YSITDflRI/ds4uOhZ
         nyHhmKGs9Q1jNxDMmO6cQXc/porLn6UvyayOeBowFUgcNV9vMgp4AHIiGTNvE5YJpiDo
         fTOkES8L4QNk3zKg6m+QgABRumyNzugEeELiEcCOuZgzqx5VjJ9YvznrZvVBm1Qv2o/s
         fNWw==
X-Gm-Message-State: AOAM533gQBettliW97fvadI1d0X8KyT0IsEPkwQxOfZJ5lkXajrgkyGY
        cI4IFGnQMzQhYKYy0vgJnXtm3g==
X-Google-Smtp-Source: ABdhPJxLvo0RCihK079Elloiqp25pBxh1dZDJDeBEoYZ+9fEvWiGN7wubOfZ1xMsnxVkw0tD3DWWMQ==
X-Received: by 2002:a62:1c46:: with SMTP id c67mr5101876pfc.170.1591841207862;
        Wed, 10 Jun 2020 19:06:47 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com ([2620:15c:202:1:e09a:8d06:a338:aafb])
        by smtp.gmail.com with ESMTPSA id u14sm1291983pfk.211.2020.06.10.19.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 19:06:47 -0700 (PDT)
From:   Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To:     heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc:     linux-bluetooth@vger.kernel.org,
        chromeos-bluetooth-upstreaming@chromium.org, mka@chromium.org,
        dianders@chromium.org,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: Add marvell BT irq config
Date:   Wed, 10 Jun 2020 19:06:42 -0700
Message-Id: <20200610190622.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
and pinctrl block to devicetree so the btmrvl driver can correctly
configure the wakeup interrupt.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Reviewed-by: Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
The Veyron Mighty Chromebook (rk3288 based board) is missing the wake
configuration for Bluetooth. Without this change, the wake irq was not
configurable and wake on Bluetooth was broken.

I verified this change with additional changes in the Bluetooth driver
(the series is at https://patchwork.kernel.org/cover/11599101/). The
driver changes are not necessary for this dts change and shouldn't block
it.


 arch/arm/boot/dts/rk3288-veyron-jaq.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 171ba6185b6d39..976c0c17a71199 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -51,6 +51,21 @@ &sdmmc {
 			&sdmmc_bus4>;
 };
 
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	btmrvl: btmrvl@2 {
+		compatible = "marvell,sd8897-bt";
+		reg = <2>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = /bits/ 16 <13>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l>;
+	};
+};
+
 &vcc_5v {
 	enable-active-high;
 	gpio = <&gpio7 RK_PC5 GPIO_ACTIVE_HIGH>;
-- 
2.27.0.278.ge193c7cf3a9-goog

