Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF8E3F13E1
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 08:57:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231234AbhHSG5y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 02:57:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbhHSG5x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 02:57:53 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E625DC061575
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 23:57:17 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u22so10470866lfq.13
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 23:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W0coemeDvxxOjekqLbCrYBHwUQHQbLpmvanpP1zbHek=;
        b=rkn68ncmZleiZZX01wx2pZo8m2upaYuZiShs9jlX+z4pafFeaDnyWKtqATTpvWUTpG
         CFYLFaCqD46XPSFkYCy6fDISptxmdDLXqJ1uvxpNLSTzo8piWoGRtC2wn3l9Uv0vx4Yn
         bFX/v8Wx3DkprCDjuUemcvyx8VE4qS3G/7UKcvMEqiNgnJ+ojZ8izuXvOvsFS7GexkCd
         oATUBlsuGYraZ/1fhkLb5+uUYGh/sgPCjc2X5g275zcaXUZCXu0uCr2xWozNd64Lpx1L
         f3dFBggiOtUGXo6sxXkXemGm2THbqbgcbQ2yxTPwJm6q0vMfbeQpqjAhPlcUuSS7xyYI
         t7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W0coemeDvxxOjekqLbCrYBHwUQHQbLpmvanpP1zbHek=;
        b=i7jj+edhgq+tpNTBm7rmn8LglDj8qszON3ZJUEIVAl39+eX4GYH/dOp+qxPh5hgwgy
         LuGf3GlT74Piv/K8PIQjcmxqBTSHIfZ3U2tKPKAYWWteoTHzyQwe8XBnDUwv3EeedBTE
         jhJkirMz5wr/BUyDUN5aOhY7ToBFg48d4ykdVWOiInRo6M2CuwpYZiBwMOqW4NtZqSTs
         Sl+TOHBdPLPysT17qN3XBelZla/K/xK6YL3k/LP9tEYcR78I2Ob7aUKms+kEasAL9899
         1TBppqo5ObTmDx1j24mBo5rMkQGoqpPDCA0KvdtHxDf2C0WWMMCMq64ClZd6dM94k5fs
         0YNA==
X-Gm-Message-State: AOAM530OV5v4AfYxdwcDBmn6YjQlUf9cEnzpRWMMUWodICtxwSarZ7/g
        nZ41+ZQiN+tGvFeT9QTMstuB57lbdeqCEw==
X-Google-Smtp-Source: ABdhPJz1jnLlQW3QIKbyDq7e8+HHIrY0G95Loc0InPQ0o1yAMt9ElsfLn4C3RedCB4czHBgc2gosYA==
X-Received: by 2002:a05:6512:3248:: with SMTP id c8mr9614737lfr.54.1629356236323;
        Wed, 18 Aug 2021 23:57:16 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o16sm206821lfl.309.2021.08.18.23.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 23:57:15 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] ARM: dts: BCM5301X: Fix nodes names
Date:   Thu, 19 Aug 2021 08:57:00 +0200
Message-Id: <20210819065702.15406-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes following errors for all BCM5301X dts files:
chipcommonA@18000000: $nodename:0: 'chipcommonA@18000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
mpcore@19000000: $nodename:0: 'mpcore@19000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
mdio-bus-mux@18003000: $nodename:0: 'mdio-bus-mux@18003000' does not match '^mdio-mux[\\-@]?'
dmu@1800c000: $nodename:0: 'dmu@1800c000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts | 2 +-
 arch/arm/boot/dts/bcm5301x.dtsi                 | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 05d4f2931772..9bef6b9bfa8d 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -129,7 +129,7 @@ bluebar8 {
 		};
 	};
 
-	mdio-bus-mux@18003000 {
+	mdio-mux@18003000 {
 
 		/* BIT(9) = 1 => external mdio */
 		mdio@200 {
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index f92089290ccd..f9d3a53065ef 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -19,7 +19,7 @@ / {
 	#size-cells = <1>;
 	interrupt-parent = <&gic>;
 
-	chipcommonA@18000000 {
+	chipcommon-a-bus@18000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x18000000 0x00001000>;
 		#address-cells = <1>;
@@ -44,7 +44,7 @@ uart1: serial@400 {
 		};
 	};
 
-	mpcore@19000000 {
+	mpcore-bus@19000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x19000000 0x00023000>;
 		#address-cells = <1>;
@@ -369,7 +369,7 @@ mdio: mdio@18003000 {
 		#address-cells = <1>;
 	};
 
-	mdio-bus-mux@18003000 {
+	mdio-mux@18003000 {
 		compatible = "mdio-mux-mmioreg";
 		mdio-parent-bus = <&mdio>;
 		#address-cells = <1>;
@@ -415,7 +415,7 @@ i2c0: i2c@18009000 {
 		status = "disabled";
 	};
 
-	dmu@1800c000 {
+	dmu-bus@1800c000 {
 		compatible = "simple-bus";
 		ranges = <0 0x1800c000 0x1000>;
 		#address-cells = <1>;
-- 
2.26.2

