Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17E8D415898
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 08:56:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239579AbhIWG5f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 02:57:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239569AbhIWG53 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 02:57:29 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B184DC061767
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:55:58 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id s16so4930821pfk.0
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b5um0KbUElUK2wie3g8IJWfKY61kEEr/d9t4jOM2pdo=;
        b=Yl+g9sgjL87WjxEchbxLIx4mctvhOvd2EOr+XETwlyUq/v/IjHMcLsKWuAEkhQ1sA4
         /VTGZRb6/GPqjujTVUIVXBTte8W4nlH3mP/pTEHm969g+5QM/ZhaldDShiLnRGIdAH9r
         LneMJ4i0TW5BuEvpWlt/jf2AIRE5Y43RJDr5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b5um0KbUElUK2wie3g8IJWfKY61kEEr/d9t4jOM2pdo=;
        b=O2JNHUPjnZlVfn4ssgJM1MDdSIfB/lFTOl+GYHXvyYCgug+Pd8OD2ec1kqalJAZrBd
         ba2HaBVtNcCOvHjFjTJ/BmdsDlT6RWGX+z4phdlRFSgXttiAiOz/JDDfctONXHc00qAF
         tm1dJxXKPJJDWB4JkeWwhaCFXIPfLMEpLvRcgRrDCU3LPKUA/FYfT4N46ooFc5ROgBNO
         DDxhZs6ab19d4iiqVCaYMoYYGLXEvHNNkNwtwvUmabmbGL9EzKCap0X/Msly8LByFTJo
         zbVnkcozN1Bf7o1E2EEGfApaNk4xQBwFAt593g497q2yNFDc5gk2LKpVe+7sMjUFsgDE
         kRog==
X-Gm-Message-State: AOAM532fX8hSpknm5ubGhE+GFNmrgZYuykcSiMBDWyTidNc9yNtJe57S
        RnE3tvRlpQ1bPe2rCS9knzkoBW7lwMj4Vw==
X-Google-Smtp-Source: ABdhPJyAYw4vY+PeNDnKquee0BRHunZM0V1nMhmMGrfEU4yxbmb3vew+RZHPJ7QrsR7mUOiOF35pqw==
X-Received: by 2002:a62:5a86:0:b0:445:4b23:9fe5 with SMTP id o128-20020a625a86000000b004454b239fe5mr2667508pfb.65.1632380158092;
        Wed, 22 Sep 2021 23:55:58 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id e12sm1581888pgv.82.2021.09.22.23.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 23:55:57 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-leds@vger.kernel.org
Cc:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, pavel@ucw.cz,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 07/11] ARM: dts: mstar: unitv2: Wire up LEDs
Date:   Thu, 23 Sep 2021 15:54:56 +0900
Message-Id: <20210923065500.2284347-8-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923065500.2284347-1-daniel@0x0f.com>
References: <20210923065500.2284347-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the red and white leds present on the unitv2.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/mstar-infinity2m-ssd202d-unitv2.dts   | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
index a81684002e45..a51490defabc 100644
--- a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
@@ -7,6 +7,8 @@
 /dts-v1/;
 #include "mstar-infinity2m-ssd202d.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	model = "UnitV2";
 	compatible = "m5stack,unitv2", "mstar,infinity2m";
@@ -18,6 +20,18 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-white {
+			gpios = <&gpio SSD20XD_GPIO_GPIO0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "activity";
+		};
+		led-red {
+			gpios = <&gpio SSD20XD_GPIO_GPIO1 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &pm_uart {
-- 
2.33.0

