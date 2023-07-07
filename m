Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC95574B004
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 13:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231280AbjGGLka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 07:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231184AbjGGLk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 07:40:29 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C92B170F
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 04:40:24 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b63e5f94f1so22296431fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 04:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688730022; x=1691322022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcYUDOqJwcnI0rZxF8MC2CVlK/gvIRzHIEEYdCrU150=;
        b=AttyoGxS9Yybu+KrPhODbgPo1ibZlHVw1NGjDlgQZ0sflOxKd/DY+m6mhoBjQGqf+S
         Wj52TTp/q5aT3p31xx+CLr5ol50iGZ/4YRIFtq/PvkjScZKFtn+M+jveaLmQ9I9fkuCq
         nrRHG+y+58chctNYqCv8PslHYNN0ACIj45LaxTo1Rg6SE2JJs9UNqTt4abVxN4yyxuvy
         bJRD5qEy4Q9CqjvE5EsmbaXsQaUqnNVEqq7oCvH8wT56tjeba1lUrMdnM1X+addZwzwr
         4hgA4bRD7CXdlaIl7pLdvAzZUmwZnZEmFqZ13yZhDT6dHYE+jq6QoDebnEUF+PsoHvKJ
         DtTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688730022; x=1691322022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZcYUDOqJwcnI0rZxF8MC2CVlK/gvIRzHIEEYdCrU150=;
        b=JKsmGxJ8Fzv3Ukgmd4j2BeVPmGp47Vg56s5re0fpQebBB22BWk791iNzHW0teFLlyf
         e8EAO5faDKMAb4QsF4Nz+cVbDazzuzyE3YyDI2A2xy57QsEfBZGqfBomKPkN4yElPg8f
         V5XNUtu6Z+UuxgtF5yvpUZ1QUEqDEZaX55DwMnnK2/qjG3E1yGE9vO2gVkBI2E73nznl
         BFMCCR9edRnskmxx6JGJeS0j7TCqo+fcGkD+Wymt4RVQqwgZS/MDW8RpQIb7HutB/VQs
         Ic89IYVBtJ5GfcBqSMcRD5IbfLoyUwXQ3K0CKgGcc7HE2FbfgQ2nNVb0nPQlFP5AJ+Kg
         WHZg==
X-Gm-Message-State: ABy/qLYUiaZnCyyBJyosYDIFEAn5Z/QFPTzwueKcNyg6ZVy8hnuL9MWf
        H6RsJ9OTOQb+0O3Yqj6O2SU=
X-Google-Smtp-Source: APBJJlFcyOGmUxZKQAeZ1TNI2PrZMrKitNqQ1n9Xv5Q6YkvWNzom6LGLG3LSX5KQYEKvTaBDbUS/1Q==
X-Received: by 2002:a2e:3311:0:b0:2b5:8b02:1000 with SMTP id d17-20020a2e3311000000b002b58b021000mr2018845ljc.8.1688730022213;
        Fri, 07 Jul 2023 04:40:22 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id k19-20020a2e9213000000b002b708450951sm607722ljg.88.2023.07.07.04.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 04:40:21 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/4] ARM: dts: BCM53573: Drop nonexistent "default-off" LED trigger
Date:   Fri,  7 Jul 2023 13:40:01 +0200
Message-Id: <20230707114004.2740-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

There is no such trigger documented or implemented in Linux. It was a
copy & paste mistake.

This fixes:
arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dtb: leds: led-wlan:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
        'default-off' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
        'default-off' does not match '^cpu[0-9]*$'
        'default-off' does not match '^hci[0-9]+-power$'
        'default-off' does not match '^mmc[0-9]+$'
        'default-off' does not match '^phy[0-9]+tx$'
        From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts | 1 -
 arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts  | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
index 0734aa249b8e..b9dd50844419 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
@@ -26,7 +26,6 @@ leds {
 		led-wlan {
 			label = "bcm53xx:blue:wlan";
 			gpios = <&chipcommon 10 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "default-off";
 		};
 
 		led-system {
diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
index e6fb6cbe6963..cb22ae2a02e5 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
@@ -26,7 +26,6 @@ leds-0 {
 		led-5ghz {
 			label = "bcm53xx:blue:5ghz";
 			gpios = <&chipcommon 11 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-off";
 		};
 
 		led-system {
@@ -42,7 +41,6 @@ leds-1 {
 		led-2ghz {
 			label = "bcm53xx:blue:2ghz";
 			gpios = <&pcie0_chipcommon 3 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-off";
 		};
 	};
 
-- 
2.35.3

