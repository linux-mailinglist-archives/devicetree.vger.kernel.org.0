Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21395732F67
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 13:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244639AbjFPLFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 07:05:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345603AbjFPLEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 07:04:35 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89DC75B86
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:58:50 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b455855fb2so6638191fa.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686913129; x=1689505129;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ClW//q56HN5ZX0TrdghINkVT3Q8nQiJs8hPzQQiDBSo=;
        b=NicyOTU8754t+XdbpOEMpfbqODtdRBqRziCvnNxaFrvB844kcJbJE4yBhQMKaL9TFE
         sFA3jZ89VlhXgcNlN9p3MnqFQshoRUruOpSaErivYRV1SFgH4qikYx5qLf3r+1+2+SJ6
         9vj/pNw1EwpSJCdst+zhDAkrlVytpQdHlA/hZgIld3N54BCdvjXjvL3J2UENXaGPjGra
         PLSkaIU9ZG1ZjHCqfZP8OW0zWY+77N09yyQnsrRB3LpC/YDjPhJWuhlhvsCQnWFE5zF5
         8lixSXWTyekXg2o1NUwJR5V8uK3ChbhT8YD5kGOt2eXbpQ6AnfiumS87mG8dgXCOLX5y
         j5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686913129; x=1689505129;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ClW//q56HN5ZX0TrdghINkVT3Q8nQiJs8hPzQQiDBSo=;
        b=D0JHupTwOCr13Dnf0C9e/V7IYuCfxlGLBHde4HKzhI9Tl7Q/OeaA1CE2tRmXQZuneJ
         SIb65IG2d9WQLxsMWaI8OYOLVfcBV6Jl4jxeveKHanuVyL79xLChBNLXJvTKysAkTm1G
         dsrQM3VImPaDfXbZp/bcXToStTC2l60XRzv7QueszRmypKfYg1pdmyM1JhxNxrp4rB4L
         1xIq8AgA+QiKOmKz9bAci69k4Gq1hidEDBTWN3zhfKmI3EvdtrzUzUBp+lvxIQesMnPK
         dWdaRvMjiB+oy/ZaHeM6MbFR5sZaOhqfzKXRcQe+1w3qnnxgZZhXOHHcG0o47TSCSbzp
         38/g==
X-Gm-Message-State: AC+VfDw+LMs+ilr2dDXyZJb1M/IwQTdpKDJiUzAj6KJUuM30ExVDHja0
        XILqHG/jnlsrXIPTQ/anzo0=
X-Google-Smtp-Source: ACHHUZ5a8a/ER2AhKWXwHab9Rr8+RBbeIGQVmQmtcj1GsGABHrLaPUotNs9xX+4CaNoBrh9HI38Jvg==
X-Received: by 2002:a2e:9bc4:0:b0:2b1:e369:40 with SMTP id w4-20020a2e9bc4000000b002b1e3690040mr1537491ljj.27.1686913128316;
        Fri, 16 Jun 2023 03:58:48 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id p7-20020a2e9a87000000b002adb10a6620sm3490720lji.107.2023.06.16.03.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 03:58:47 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <florian.fainelli@broadcom.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Add cells sizes to PCIe nodes
Date:   Fri, 16 Jun 2023 12:58:27 +0200
Message-Id: <20230616105827.21656-1-zajec5@gmail.com>
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

This fixes:
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pcie@12000: '#address-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pcie@12000: '#size-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pcie@13000: '#address-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pcie@13000: '#size-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pcie@14000: '#address-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pcie@14000: '#size-cells' is a required property
        From schema: /lib/python3.10/site-packages/dtschema/schemas/pci/pci-bus.yaml

Two properties that need to be added later are "device_type" and
"ranges". Adding "device_type" on its own causes a new warning and the
value of "ranges" needs to be determined yet.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm-ns.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
index 53472d376a2c..dae9c47ace76 100644
--- a/arch/arm/boot/dts/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/bcm-ns.dtsi
@@ -176,14 +176,23 @@ chipcommon: chipcommon@0 {
 
 		pcie0: pcie@12000 {
 			reg = <0x00012000 0x1000>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		pcie1: pcie@13000 {
 			reg = <0x00013000 0x1000>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		pcie2: pcie@14000 {
 			reg = <0x00014000 0x1000>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		usb2: usb2@21000 {
-- 
2.35.3

