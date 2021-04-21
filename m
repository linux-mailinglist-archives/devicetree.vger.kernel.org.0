Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91EF2366770
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 11:00:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235435AbhDUJAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 05:00:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231354AbhDUJAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 05:00:51 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79DDFC06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:00:18 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id j4so26267397lfp.0
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rCPduy7SnanGcwWUA7fYZluRTUTOG9uzQWoQTaTpB/c=;
        b=WDtOaHmDTXiUGUdzUuaUjOV9ukdvijJTJZax5UggsTiDTU8tsXdHKg7MRzEeRPsP0a
         KEbRnaE6f6s/+CfsuRXMwuUxggRoKEOfxN4Y0Ag5YrqPJF8XEiwCSBVaiR9LIHL4pr1O
         O58Eq+W48fYOk1szSYaS/QC5Xz4xIo2ogxQiF+lE1uOUF2Y/yNACmM7SsVZWRz2bMUMQ
         7hG+Jo6qXmtVxl6+VkEJogjoA4DT33hi3AoL1Ec7JFZHKTtruW/jOF1NZSdI8sD9aLs4
         yEJuanb58VK+VgwO2lsCtTECz4Lq+rF4HUg65rvba0/WHZP/QJgljiBwDmQrxJWsyfvM
         kgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rCPduy7SnanGcwWUA7fYZluRTUTOG9uzQWoQTaTpB/c=;
        b=kSPD0S3+5ESMTjlXJFXZ3r5emh8uNbEOwuQGZa3tDLUvcBb4u8Ng7DmQHKl/2XuASI
         eOLUeU72Fp8aK3dIM5yHq1QxOXH3Dxlu6qsLq1oRGXs6pFsaFblz42wr2p2dIe8hH1zP
         U2ugdm6/IoUwhaeT/C00XmE1p6XZnkPgvhqsRj7dt7A8EwwavwcODWrVW710y8nK72X1
         joVH5R0Xz1qUk0IRe1w/itOqiM6YkRa5C41nxspEuWSSvZQeeR4GWbWfk9mIZPpWVl3f
         NKyVn1xApiF9BRHBqjXXTbUBFsPTKa+qGUfWaX45mZYmMzzdQPiuKI+cUiwvVWt/JYNo
         PDiQ==
X-Gm-Message-State: AOAM532tDE3uOEQA2TY+isxFG1fGRRNUENlvZK9lApETyqPglWA38zXN
        jIPkjn4bCHQ+abHOkmEuX8VLGxdbAOE=
X-Google-Smtp-Source: ABdhPJwBIohEV4ymPT/yV74wwMHs16XVEAa7i7YJsGvILC33p13O11Un8WAxroND+OzKDmsMOZZQPw==
X-Received: by 2002:a05:6512:455:: with SMTP id y21mr19639531lfk.220.1618995616949;
        Wed, 21 Apr 2021 02:00:16 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id e11sm146346ljj.59.2021.04.21.02.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 02:00:16 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Fix pinmux subnodes names
Date:   Wed, 21 Apr 2021 11:00:06 +0200
Message-Id: <20210421090006.28228-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This matches pinmux-node.yaml requirements.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47094.dtsi | 2 +-
 arch/arm/boot/dts/bcm5301x.dtsi | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47094.dtsi b/arch/arm/boot/dts/bcm47094.dtsi
index 2a8f7312d1be..6282363313e1 100644
--- a/arch/arm/boot/dts/bcm47094.dtsi
+++ b/arch/arm/boot/dts/bcm47094.dtsi
@@ -11,7 +11,7 @@ / {
 &pinctrl {
 	compatible = "brcm,bcm4709-pinmux";
 
-	pinmux_mdio: mdio {
+	pinmux_mdio: mdio-pins {
 		groups = "mdio_grp";
 		function = "mdio";
 	};
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 092ec525c01c..5b9723a10bd6 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -458,18 +458,18 @@ spi-pins {
 					function = "spi";
 				};
 
-				pinmux_i2c: i2c {
+				pinmux_i2c: i2c-pins {
 					groups = "i2c_grp";
 					function = "i2c";
 				};
 
-				pinmux_pwm: pwm {
+				pinmux_pwm: pwm-pins {
 					groups = "pwm0_grp", "pwm1_grp",
 						 "pwm2_grp", "pwm3_grp";
 					function = "pwm";
 				};
 
-				pinmux_uart1: uart1 {
+				pinmux_uart1: uart1-pins {
 					groups = "uart1_grp";
 					function = "uart1";
 				};
-- 
2.26.2

