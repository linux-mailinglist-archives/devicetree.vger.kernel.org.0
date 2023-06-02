Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 089927204F7
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 16:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235775AbjFBOzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 10:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235634AbjFBOzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 10:55:19 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2003E51
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 07:55:11 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f60a27c4a2so2433971e87.2
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 07:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685717710; x=1688309710;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xJNUVlgds7t6ZphnTS9QNzdJzZn0b5QCJlQjBpXkafw=;
        b=e8/qkoCtR6xTkEhpN829hQI0x1nRJEmDo/dyOeB5Y4t6Poolv5I1NxPmfKjva8yOyx
         9mEXVsH4Rb88/0+DexoaoL39ikcuiTOniyxTAXNHA1zprxAGeUDkO1yetxTMLT0iQSQj
         ejSIuK+2J3YCe63bP76OyL80Uxt+VEHKau/8NkhpKMDOrYj/xrupjz5a91NEuGRwcCny
         tp6Zqa2f1pKGzLBE+WtyO2jUHiXRh36QVwcDjWOqxWrZVem45HYkL8hUwNMNOmMSJz76
         WOCbpM8N6PIfNg9P8MbCB/C5IffTMjCqJefBS3OoQoS2bfGe7fWUUJYHaSd82MOQgKw2
         bcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685717710; x=1688309710;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJNUVlgds7t6ZphnTS9QNzdJzZn0b5QCJlQjBpXkafw=;
        b=VN9rINWQTAO5/MLOjWbZGN9eELTaWLNyDgZgszWPPhykCr57uyT0Bwa8l07qqcpkpH
         kkBj52Wu3PTHyX/+KEifkJPU6grjY9MNdPDJ4J3fhq2NLuK5SAEKrjTegqkNGtPO5AVi
         BfX0/CQwoTU2LnpsSGtgmNwJ5pBiisjjam2fuTLPFIT3md7Yh/dQgfH2JbCO3dHXozyG
         ygPhW4gBBdt1dFL8M6m5eMSkypDsFuOBV7BN6Boqn9qwLAqoIkhhllI2IwVp5upGu5RE
         Nq4CQfihCKbMDYVx4Q8r6qiuRay40AMBvMkG5gKv0O8NyzaASQHacNHynFzfcxiJq/BI
         KfAw==
X-Gm-Message-State: AC+VfDwVuEz5EtFBidmD2bsx963G+4QISR7hCGsRaLuXrQCaWlN5qzZd
        JGp79h9PCDp4pyQjsqnYB0teE8WuF10=
X-Google-Smtp-Source: ACHHUZ6RmFY4GVpw+KVnVpJ0BrkQo4HXNM070W5R9Uxyj4XIJNdRg5/RknGrC5IH9C2FT1ZbjMa6Bw==
X-Received: by 2002:a05:6512:96e:b0:4f1:3be7:e1d with SMTP id v14-20020a056512096e00b004f13be70e1dmr1812532lft.62.1685717709988;
        Fri, 02 Jun 2023 07:55:09 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id h18-20020ac25972000000b004efd3c2b746sm185234lfp.162.2023.06.02.07.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 07:55:09 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Use updated "spi-gpio" binding properties
Date:   Fri,  2 Jun 2023 16:54:58 +0200
Message-Id: <20230602145458.6655-1-zajec5@gmail.com>
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

Switch away from deprecated properties.

This fixes:
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: gpio-sck: False schema does not allow [[6, 7, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: gpio-mosi: False schema does not allow [[6, 4, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: 'sck-gpios' is a required property
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: Unevaluated properties are not allowed ('gpio-mosi', 'gpio-sck' were unexpected)
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts  | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts  | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
index 43c698a0a7c3..95ef6ca7210b 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index 407319cb5c0d..a2b7644eaf39 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
index f8622ecce6a2..7655e4ff2d1c 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.35.3

