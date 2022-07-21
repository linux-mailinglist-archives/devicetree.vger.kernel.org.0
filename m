Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87A3C57C744
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 11:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231902AbiGUJPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 05:15:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232864AbiGUJPX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 05:15:23 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ABE215807
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 02:15:20 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x91so1384897ede.1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 02:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t62EoUnLtZtisogF+WnvHg75wkZNkB+wGd3KYs9HnEk=;
        b=Pr35zDGWOX09nrpbwjPXEflQ79GmB4Tv6+i1kil2bh3hdT1kQ169O2hPSkNkpsFHXh
         wlp8Bn4bEVswaTH/FByJ+HutAZiNlvt44G9sQy1NSSzKxu8anfpUP1Wdge9c9cORMn0U
         fRTh2x7Vbxyqe2kQTBuqY0ljF0PD2yotchZVo+H0ine5YCqvvoBs1pQ3Sbj2aMpa4siK
         K5ZbN6BFFyQTcVMj7zuTnChzI5x2Rrhpw4bHKMTx2yyJl60bfIYdCJRGn60rCnm6NkhB
         N8jcphJQ1pus1MiSDAzAyre6BZ2g0Me/XqiDUfdc3mTubfYiO/bXDSGBMFowpZ6ZIKeO
         F3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t62EoUnLtZtisogF+WnvHg75wkZNkB+wGd3KYs9HnEk=;
        b=pDFN5VUnF7U6G+x8l0HpAAjBBbPEjyLGFdhLoHm6LlLCdjVF4BxotoDCDJiNeq7guc
         0irM3t9AzASLdeUf7U7YM1lW/y1vtg1K5PbVL+FqltjAAeFThW6fS5U2Oz7qWEJh+Tum
         yjElZv5n4BgTCxj6vnIAU+fGtFAaKlRei8CJUOxpm111tdPidV+iOIY2Cf3uM6lZTqt8
         FggAbc5cAFE5T1rVbA+Y7i282UJzI0cVrVfJ65f3kPZjGTSDVWoQbR/WA0KsHbRD5JsH
         XMp1G8RbIy9UtZP3WXNBVpS/mXovgS30Bi8rgVKbW8B1ROroMHVqH12N2Fop12thi6+O
         bPdA==
X-Gm-Message-State: AJIora9Y51jtu3QTXZh0Gzk+yGn23ADG9qOTs0HICJ+LOc854QliEVHt
        kKnvvxu9T7jmTNVZvogLsIw=
X-Google-Smtp-Source: AGRyM1uMTOmTd1G1h1qUjrnw3+RyGbBONmxrftVjSb9gxKWzdzTHssbn8vyWxf8yIy7z35Ttmp2yhQ==
X-Received: by 2002:a05:6402:1e94:b0:43a:9e92:bf2 with SMTP id f20-20020a0564021e9400b0043a9e920bf2mr55568540edf.248.1658394918515;
        Thu, 21 Jul 2022 02:15:18 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id u17-20020a1709061db100b0072aeda86ac3sm611443ejh.149.2022.07.21.02.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 02:15:17 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Add basic PCI controller properties
Date:   Thu, 21 Jul 2022 11:15:09 +0200
Message-Id: <20220721091509.27725-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes:
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@12000: 'device_type' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@12000: '#address-cells' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@12000: '#size-cells' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@13000: 'device_type' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@13000: '#address-cells' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@13000: '#size-cells' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@14000: 'device_type' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@14000: '#address-cells' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml
arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: pcie@14000: '#size-cells' is a required property
        From schema: /lib/python3.9/site-packages/dtschema/schemas/pci/pci-bus.yaml

What remains missing is "ranges" property. I currently don't know its
correct value for Northstar SoC.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 5fc1b847f4aa..a06184b8e0d9 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -239,14 +239,26 @@ chipcommon: chipcommon@0 {
 
 		pcie0: pcie@12000 {
 			reg = <0x00012000 0x1000>;
+			device_type = "pci";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		pcie1: pcie@13000 {
 			reg = <0x00013000 0x1000>;
+			device_type = "pci";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		pcie2: pcie@14000 {
 			reg = <0x00014000 0x1000>;
+			device_type = "pci";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
 		};
 
 		usb2: usb2@21000 {
-- 
2.34.1

