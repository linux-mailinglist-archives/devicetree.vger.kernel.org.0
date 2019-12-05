Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64B8A114155
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2019 14:19:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729469AbfLENTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Dec 2019 08:19:04 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39649 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729099AbfLENTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Dec 2019 08:19:04 -0500
Received: by mail-wm1-f65.google.com with SMTP id s14so3641746wmh.4
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2019 05:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=KAcKcn55ZC43+JsoEE9iyrk0uGRkJUBkt2eSWXtjjKo=;
        b=z/AWAzgTX0lOM8lIimEzXZL7Es4PlvY117PPDM5y91/gJWLVNvax+sEu/s82VqZ440
         vob2+6JF+W81MIZk3BFY/ujYte0tJHFGvhtjsJ5aQEWgBRhGSLcBSpMPJyxTH/Z1X1wm
         02JNXm9nfzqxdBG2ZUDfHA4bYU4Z9seReUmQGXD6yvef5qFTp3K/NHLw03EmWKng+OYB
         ontBzr7W7OIfSh22VzC3Q1DBGidUhES8jJ10tkL2Jk9xhtWlPeVTP5tuHfQCgFUr2Y/M
         5LY1e+Ee7pi1Gkz2fx2dcPuClzq1yfjFK+JzEslYStsNBxf3B5kNQXPyK5M2/8/7eBr6
         LUFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KAcKcn55ZC43+JsoEE9iyrk0uGRkJUBkt2eSWXtjjKo=;
        b=SqonCQBlt3dG7wXy4ltQ2HQkQoDcsFe3RFdE7uphHdW1jbhamRqrxl4ftYnt/Bg+Fs
         5A9PxACBkMpHFLjgRam1rZQTwn7FpbgZrtSWcthiB7D8NU0+wHRX2S4s6pXy13BkPwC1
         LRagtyKbcD/2KO9xZOarU0uyJzr8jXnhukhwQhqy/l0Ks0P8HGNkp+yy7bpBoyrpKvgW
         Q5SoVUqnAMo/Y7V7YVfP3XbGp37kuWMo3KbsepUdLvSmk3+oJR7awWBLUruQISyDJ/MH
         gTdO/3X9PHcG7GAxNiKxn4UI+8orHHMe2ftjDdX8CHYVfeeNdq3FBihpNVUOGS2JyoFY
         vLFA==
X-Gm-Message-State: APjAAAU6MOrLIZ+naERp9Cyoob3Sdza0/HibYGMzJmxwum8AjY/QesvQ
        qW8kjQBlOv+er/+VDsaqiMcM3A==
X-Google-Smtp-Source: APXvYqyZesiIZmY7RGMT4MF4IpUnHfAqJR6vCTBVsLVzWRfkp34Mu3brQAC1PF+x3trPEIdHrmPcdA==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr5122129wmh.5.1575551942365;
        Thu, 05 Dec 2019 05:19:02 -0800 (PST)
Received: from glaroque-ThinkPad-T480.home ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
        by smtp.gmail.com with ESMTPSA id c4sm8333656wml.7.2019.12.05.05.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2019 05:19:01 -0800 (PST)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt
Date:   Thu,  5 Dec 2019 14:19:00 +0100
Message-Id: <20191205131900.2059-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

add gpio irq to support interrupt trigger mode.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
hi,

this patch depends of 
https://lkml.org/lkml/2019/12/4/644

Guillaume

 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 2c90f4713d0e..a8bb3fa9fec9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -591,6 +591,8 @@
 
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
+		interrupt-parent = <&gpio_intc>;
+		interrupts = <95 IRQ_TYPE_LEVEL_HIGH>;
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
 		max-speed = <2000000>;
 		clocks = <&wifi32k>;
-- 
2.17.1

